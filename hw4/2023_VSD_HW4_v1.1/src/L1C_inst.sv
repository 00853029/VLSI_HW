//================================================
// Auther:      Chen Yun-Ru (May)
// Filename:    L1C_inst.sv
// Description: L1 Cache for instruction
// Version:     0.1
//================================================
`include "def.svh"
module L1C_inst(
    input clk,
    input rst,
    // Core to CPU wrapper
    input [`DATA_BITS-1:0] core_addr,
    input core_req,
    input core_write,
    input [`DATA_BITS-1:0] core_in,
    input [`CACHE_TYPE_BITS-1:0] core_type,
    // Mem to CPU wrapper
    input [`DATA_BITS-1:0] I_out,
    input I_wait,
    // CPU wrapper to core
    output logic [`DATA_BITS-1:0] core_out,
    output core_wait,
    // CPU wrapper to Mem
    output logic I_req,
    output logic [`DATA_BITS-1:0] I_addr,
    output I_write,
    output [`DATA_BITS-1:0] I_in,
    output [`CACHE_TYPE_BITS-1:0] I_type,
    output [3:0] I_blk_size;
    );

    logic [`CACHE_INDEX_BITS-1:0] index;
    logic [`CACHE_DATA_BITS-1:0] DA_out;
    logic [`CACHE_DATA_BITS-1:0] DA_in;
    logic [`CACHE_WRITE_BITS-1:0] DA_write;
    logic DA_read;
    logic [`CACHE_TAG_BITS-1:0] TA_out;
    logic [`CACHE_TAG_BITS-1:0] TA_in;
    logic TA_write;
    logic TA_read;
    logic [`CACHE_LINE_BITS-1:0] valid;

    //--------------- complete this part by yourself -----------------//

    typedef enum logic [2:0] {
        IDLE  = 3'b001,
        CHK   = 3'b010,
        RMISS = 3'b100
    } icache_state_t;

    logic [`DATA_BITS-1:0] core_addr_r;
    logic core_write_r;
    logic [`DATA_BITS-1:0] core_in_r;
    logic [`CACHE_TYPE_BITS-1:0] core_type_r;
    logic [`CACHE_INDEX_BITS-1:0] index;
    logic hit;
    logic [`CACHE_TAG_BITS-1:0] tag;
    logic read_miss_done;
    logic [2:0] cnt;
    logic [`CACHE_DATA_BITS-1:0] read_block_data;
    logic [`DATA_BITS-1:0] read_data;

    icache_state_t curr_state, next_state;

    assign index = (curr_state == IDLE)? core_addr[`WORD_FIELD] : core_addr_r[`WORD_FIELD];
    assign tag = (curr_state == IDLE)? core_addr[`TAG_FIELD] : core_addr_r[`TAG_FIELD];
    assign hit = (tag == TA_out);
    assign read_miss_done = (cnt == 3'd4);


    always_ff @( posedge clk ) begin
        if(rst)begin
            core_addr_r <= `DATA_BITS'b0;
            core_write_r <= 1'b0;
            core_in_r <= `DATA_BITS'b0;
            core_type_r <= `CACHE_TYPE_BITS'b0;
        end
        else begin
            core_addr_r <= core_addr;
            core_write_r <= core_write;
            core_in_r <= core_in;
            core_type_r <= core_type;
        end
    end

    always_ff @( posedge clk ) begin
        if(rst) cnt <= 3'b0;
        else if(!I_wait) cnt <= 3'b0;
        else if(I_wait) cnt <= cnt + 3'b1;
        else cnt <= cnt;
    end

    always_comb begin
        case (curr_state)
            IDLE: begin
                if(!core_req) next_state = IDLE;
                else if(!core_write && !valid[index]) next_state = RMISS;
                else next_state = CHK;
            end
            CHK: begin
                next_state = (~core_write_r & hit)? IDLE : RMISS;
            end
            RMISS: begin
                next_state = (read_miss_done) ? IDLE : RMISS;
            end
            default: begin
                next_state = IDLE;
            end
        endcase
    end

    always_ff @( posedge clk ) begin
        if(rst) curr_state <= IDLE;
        else curr_state <= next_state;
    end

    always_ff @( posedge clk ) begin
        if(rst) valid <= `CACHE_LINE_BITS'b0;
        else if(curr_state == RMISS) valid[index] = 1'b1;
        else valid <= valid;
    end

    assign TA_in = tag;
    always_comb begin
        case (curr_state)
            IDLE: begin
                TA_write = 1'b1;
                TA_read = core_req? 1'b1 : 1'b0;
            end 
            CHK: begin
                TA_write = 1'b1;
                TA_read = 1'b1;
            end
            RMISS: begin
                TA_write = 1'b0;
                TA_read = 1'b0;
            end
            default: begin
                TA_write = 1'b1;
                TA_read = 1'b0;
            end
        endcase
    end

    always_comb begin
        case (curr_state)
            IDLE: begin
                DA_in = `CACHE_DATA_BITS'b0;
                DA_write = {`CACHE_WRITE_BITS{1'b1}};
                DA_read = 1'b0;
            end
            CHK: begin
                DA_in = `CACHE_DATA_BITS'b0;
                DA_write = {`CACHE_WRITE_BITS{1'b1}};
                DA_read = (hit && ~core_write_r)?1'b1 : 1'b0;
            end
            RMISS: begin
                if(I_wait)begin
                    DA_in[127-:32] = I_out;
                    DA_in[95-:32] = DA_in[127-:32];
                    DA_in[63-:32] = DA_in[95-:32];
                    DA_in[31-:32] = DA_in[63-:32];
                end
                DA_write = (read_miss_done)? {`CACHE_WRITE_BITS{1'b0}} : {`CACHE_WRITE_BITS{1'b1}};
                DA_read = 1'b0;
            end 
            default: begin
                DA_in = `CACHE_DATA_BITS'b0;
                DA_write = {`CACHE_WRITE_BITS{1'b1}};
                DA_read = 1'b0;
            end 
        endcase
    end

    assign read_block_data = (DA_read) ? DA_out : DA_in;
    assign read_data = read_block_data[{core_addr_r[`WORD_FIELD], 5'b0}+:32];

    assign core_wait = (curr_state == IDLE) ? 1'b0 : 1'b1;
    always_ff @(posedge clk) begin
        if (rst) core_out <= `DATA_BITS'h0;
        else begin
        case (curr_state)
            CHK:   core_out <= read_data;
            RMISS: core_out <= (read_miss_done) ? read_data : core_out;
        endcase
        end
    end

    assign I_req = (curr_state == RMISS && ~I_wait && ~|cnt);
    assign I_write = 1'b0;
    assign I_in = `DATA_BITS'h0;
    assign I_type = `CACHE_WORD;
    assign I_addr = {core_addr_r[`DATA_BITS-1:4], 4'h0};
    assign I_blk_size = `AXI_LEN_FOUR;
    
    data_array_wrapper DA(
        .A(index),
        .DO(DA_out),
        .DI(DA_in),
        .CK(clk),
        .WEB(DA_write),
        .OE(DA_read),
        .CS(1'b1)
    );
    
    tag_array_wrapper  TA(
        .A(index),
        .DO(TA_out),
        .DI(TA_in),
        .CK(clk),
        .WEB(TA_write),
        .OE(TA_read),
        .CS(1'b1)
    );

    logic [`DATA_BITS-1:0] L1CI_rhits;
    logic [`DATA_BITS-1:0] L1CI_rmiss;
    logic [`DATA_BITS-1:0] L1CI_cnt;
    always_ff @(posedge clk) begin
        if (rst) begin
        L1CI_rhits <= `DATA_BITS'h0;
        L1CI_rmiss <= `DATA_BITS'h0;
        L1CI_cnt   <= `DATA_BITS'h0;
        end else begin
        L1CI_rhits <= (curr_state == CHK) & ~core_write_r &hit ? L1CI_rhits + 'h1 : L1CI_rhits;
        L1CI_rmiss <= (curr_state == RMISS) & read_miss_done ? L1CI_rmiss + 'h1 : L1CI_rmiss;
        L1CI_cnt <= (curr_state == IDLE) & core_req ? L1CI_cnt + 'h1 : L1CI_cnt;
        end
    end

endmodule