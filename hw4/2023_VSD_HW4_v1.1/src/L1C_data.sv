//================================================
// Auther:      Chen Yun-Ru (May)
// Filename:    L1C_data.sv
// Description: L1 Cache for data
// Version:     0.1
//================================================
`include "def.svh"
module L1C_data(
  input clk,
  input rst,
  // Core to CPU wrapper
  input [`DATA_BITS-1:0] core_addr,
  input core_req,
  input core_write,
  input [`DATA_BITS-1:0] core_in,
  input [`CACHE_TYPE_BITS-1:0] core_type,
  // Mem to CPU wrapper
  input [`DATA_BITS-1:0] D_out,
  input D_wait, //master m_wait: READ state-> 1, write response -> 1, otherwise -> 0;
  // CPU wrapper to core
  output logic [`DATA_BITS-1:0] core_out,
  output core_wait,
  // CPU wrapper to Mem
  output logic D_req,
  output logic [`DATA_BITS-1:0] D_addr,
  output D_write,
  output [`DATA_BITS-1:0] D_in,
  output [`CACHE_TYPE_BITS-1:0] D_type,
  output [3:0] D_blk_size
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
    logic [`CACHE_LINES-1:0] valid;

    //--------------- complete this part by yourself -----------------//
    typedef enum logic [6:0] {
        IDLE = 7'b0000001,
        CHK = 7'b0000010,
        WHIT = 7'b0000100,
        WMISS = 7'b0001000,
        RMISS = 7'b0010000,
        VREAD = 7'b0100000,
        VWRITE = 7'b1000000
    } dcache_state_t;

    dcache_state_t curr_state, next_state;

    logic
        read_miss_done,
        volatile_read_done,
        write_miss_done,
        volatile_write_done,
        write_hit_done;

    logic [2:0] cnt;
    logic hit;
    logic [1:0] word_offset, byte_offset;
    logic [3:0] web, bweb, hweb;
    logic [`CACHE_WRITE_BITS-1:0] DA_write_temp;

    logic [`DATA_BITS      -1:0] core_addr_r, core_in_r;
    logic [ `CACHE_TYPE_BITS-1:0] core_type_r;
    logic                         core_write_r;

    assign read_miss_done = (cnt == 3'h4);
    assign volatile_read_done = D_wait;
    assign write_miss_done = D_wait;
    assign volatile_write_done = D_wait;
    assign write_hit_done = D_wait;
    assign cacheable = (core_addr_r[31:16] != 16'h1000);
    assign index = (curr_state == IDLE) ? core_addr[9:4] : core_addr_r[9:4];

    // Registers for inputs
    always @(posedge clk) begin
        if (rst) begin
            core_addr_r  <= `DATA_BITS'h0;
            core_in_r    <= `DATA_BITS'h0;
            core_type_r  <= `CACHE_TYPE_BITS'h0;
            core_write_r <= 1'b0;
        end 
        else if (curr_state == IDLE) begin
            core_addr_r  <= core_addr;
            core_in_r    <= core_in;
            core_type_r  <= core_type;
            core_write_r <= core_write;
        end
    end
    always_comb begin
        case (curr_state)
            IDLE: begin
                if (~core_req) next_state = IDLE;
                else if (core_req & core_write & ~valid[index])
                next_state = WMISS;
                else if (core_req & ~core_write & ~valid[index])
                next_state = RMISS;
                else next_state = CHK;
            end
            CHK: begin
                if (cacheable)
                next_state = (core_write_r) ? (hit ? WHIT : WMISS) : (hit ? IDLE : RMISS);  //RHIT finish in this state
                else next_state = (core_write_r) ? VWRITE : VREAD;
            end
            WHIT: next_state = (write_hit_done) ? IDLE : WHIT;
            WMISS: next_state = (write_miss_done) ? IDLE : WMISS;
            RMISS: next_state = (read_miss_done) ? IDLE : RMISS;
            VREAD: next_state = (volatile_read_done) ? IDLE : VREAD;
            VWRITE: next_state = (volatile_write_done) ? IDLE : VWRITE;
        default: next_state = IDLE;
        endcase
    end 

    // hit
    always_comb begin
        case (curr_state)
            CHK: hit = (TA_out == core_addr_r[`TAG_FIELD]);
            WHIT: hit = 1'b1;
        default: hit = 1'b0;  // WMISS, RMISS
        endcase
    end

    //byte offset
    assign byte_offset = core_addr_r[1:0];
    always_comb begin
        case(byte_offset)
            2'd0: begin
                bweb = 4'b1110;
                hweb = 4'b1100;
            end
            2'd1: begin
                bweb = 4'b1101;
                hweb = 4'b1100;
            end
            2'd2: begin
                bweb = 4'b1011;
                hweb = 4'b0011;
            end
            default: begin
                bweb = 4'b0111;
                hweb = 4'b0011;
            end
        endcase
    end
    always_comb begin
        case (core_type_r[1:0])
            `BYTE:   web = bweb;
            `HWORD:  web = hweb;
        default: web = 4'b1111;
        endcase
    end
    //word offset
    assign word_offset = core_addr_r[3:2];
    always_comb begin
        case(word_offset)
            2'd0: DA_write_temp = {{12{1'b1}}, web};
            2'd1: DA_write_temp = {{8{1'b1}}, web, {4{{1'b1}}}};
            2'd2: DA_write_temp = {{4{1'b1}}, web, {8{{1'b1}}}};
            default: DA_write_temp = {web, {12{1'b1}}};
        endcase
    end

    //Data Array
    assign DA_read = (curr_state == CHK) ? (hit & ~core_write_r) ? 1'b1 : 1'b0 : 1'b0;
    always_comb begin
        case (curr_state)
            RMISS:
                DA_write = (read_miss_done) ? {`CACHE_WRITE_BITS{1'b0}} : {`CACHE_WRITE_BITS{1'b1}};
            WHIT:
                DA_write = (write_hit_done) ? DA_write_temp : {`CACHE_WRITE_BITS{1'b1}};
            default: DA_write = {`CACHE_WRITE_BITS{1'b1}};
        endcase
    end
    always_ff @(posedge clk) begin
        if (rst) begin
            DA_in <= `CACHE_DATA_BITS'h0;
        end else begin
        case (curr_state)
            WHIT: DA_in <= {core_in_r, core_in_r, core_in_r, core_in_r};
            RMISS: begin
                if (D_wait) begin
                    DA_in[127-:32] <= D_out;
                    DA_in[95-:32]  <= DA_in[127-:32];
                    DA_in[63-:32]  <= DA_in[95-:32];
                    DA_in[31-:32]  <= DA_in[63-:32];
                end
            end
            default: DA_in <= `CACHE_DATA_BITS'h0;
        endcase
        end
    end

    logic [ `CACHE_DATA_BITS-1:0] read_block_data;
    logic [ `DATA_BITS      -1:0] read_data;
    assign read_block_data = (DA_read) ? DA_out : DA_in;
    assign read_data = read_block_data[{core_addr_r[3:2], 5'b0}+:32];

    // core_out
    assign core_wait = (curr_state == IDLE) ? 1'b0 : 1'b1;
    always_ff @(posedge clk) begin
        if (rst) core_out <= `DATA_BITS'h0;
        else begin
        case (curr_state)
            CHK:   core_out <= read_data;
            RMISS: core_out <= (read_miss_done) ? read_data : core_out;
            VREAD: core_out <= (volatile_read_done) ? D_out : core_out;
        endcase
        end
    end

    //to master
    always_comb begin
        case (curr_state)
            WMISS: begin
                D_req   = ~|cnt & ~D_wait;
                D_write = ~|cnt & ~D_wait;
                D_addr  = core_addr_r;
                D_in    = core_in_r;
                D_type  = core_type_r;
                D_blk_size = 4'h3;
            end
            VWRITE: begin
                D_req   = ~|cnt & ~D_wait;
                D_write = ~|cnt & ~D_wait;
                D_addr  = core_addr_r;
                D_in    = core_in_r;
                D_type  = core_type_r;
                D_blk_size = 4'h3;
            end
            WHIT: begin
                D_req   = ~|cnt & ~D_wait;
                D_write = ~|cnt & ~D_wait;
                D_addr  = core_addr_r;
                D_in    = core_in_r;
                D_type  = core_type_r;
                D_blk_size = 4'h3;
            end
            RMISS: begin
                D_req   = ~|cnt & ~D_wait;
                D_write = 1'b0;
                D_addr  = {core_addr_r[`DATA_BITS-1:4], 4'h0};
                D_in    = `DATA_BITS'h0;
                D_type  = `CACHE_WORD;
                D_blk_size = 4'h3;
            end
            VREAD: begin
                D_req   = ~|cnt & ~D_wait;
                D_write = 1'b0;
                D_addr  = {core_addr_r[`DATA_BITS-1:2], 2'h0};
                D_in    = `DATA_BITS'h0;
                D_type  = `CACHE_WORD;
                D_blk_size = 4'h0;
            end
            default: begin
                D_req   = 1'b0;
                D_write = 1'b0;
                D_addr  = `DATA_BITS'h0;
                D_in    = `DATA_BITS'h0;
                D_type  = core_type_r;
                D_blk_size = 4'h3;
            end
        endcase
    end



    //Tag Array 
    assign TA_in = (curr_state == IDLE) ? core_addr[31-:22] : core_addr_r[31-:22];
    always_comb begin
        case (curr_state)
            IDLE:
                {TA_write, TA_read} = {
                    1'b1, (core_req) ? 1'b1 : 1'b0
                };
            CHK: {TA_write, TA_read} = {1'b1, 1'b1};
            WHIT: {TA_write, TA_read} = {1'b0, 1'b0};
            RMISS: {TA_write, TA_read} = {1'b0, 1'b0};
            default: {TA_write, TA_read} = {1'b1, 1'b0};
        endcase
    end


    always_ff @(posedge clk) begin
        if (rst) valid <= `CACHE_LINE_BITS'h0;
        else if (curr_state == RMISS) valid[index] <= 1'b1;
    end
    always_ff @(posedge clk) begin
        if (rst) cnt <= 3'h0;
        else begin
        case (curr_state)
            RMISS: cnt <= (D_wait) ? (cnt + 1) : cnt;
            WMISS: cnt <= (D_wait) ? (cnt + 1) : cnt;
            WHIT:  cnt <= (D_wait) ? (cnt + 1) : cnt;
            default:  cnt <= 3'h0;
        endcase
        end
    end
    always_ff @(posedge clk) begin
        if (rst) curr_state <= IDLE;
        else curr_state <= next_state;
    end
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


    //calculate hit rate & miss rate
    logic [`DATA_BITS-1:0] L1CD_rhits, L1CD_whits;
    logic [`DATA_BITS-1:0] L1CD_rmiss, L1CD_wmiss;
    logic [`DATA_BITS-1:0] L1CD_hits, L1CD_miss;
    logic [`DATA_BITS-1:0] L1CD_rcnt, L1CD_wcnt, L1CD_rwcnt;
    assign L1CD_hits  = L1CD_rhits + L1CD_whits;
    assign L1CD_miss  = L1CD_rmiss + L1CD_wmiss;
    assign L1CD_rwcnt = L1CD_rcnt + L1CD_wcnt;
    always_ff @(posedge clk) begin
        if (rst) begin
            L1CD_rhits <= `DATA_BITS'h0;
            L1CD_whits <= `DATA_BITS'h0;
            L1CD_rmiss <= `DATA_BITS'h0;
            L1CD_wmiss <= `DATA_BITS'h0;
            L1CD_rcnt  <= `DATA_BITS'h0;
            L1CD_wcnt  <= `DATA_BITS'h0;
            end 
        else begin
            L1CD_rhits <= (curr_state == CHK) & hit & ~core_write_r ? L1CD_rhits + 'h1 : L1CD_rhits;
            L1CD_whits <= (curr_state == WHIT) & (write_hit_done) ? L1CD_whits + 'h1 : L1CD_whits;
            L1CD_rmiss <= (curr_state == RMISS) & (read_miss_done) ? L1CD_rmiss + 'h1 : L1CD_rmiss;
            L1CD_wmiss <= (curr_state == WMISS) & (write_miss_done) ? L1CD_wmiss + 'h1 : L1CD_wmiss;
            L1CD_rcnt  <= (curr_state == IDLE) & (core_req & ~core_write) ? L1CD_rcnt + 'h1 : L1CD_rcnt;
            L1CD_wcnt  <= (curr_state == IDLE) & (core_req & core_write) ? L1CD_wcnt + 'h1 : L1CD_wcnt;
        end
  end

endmodule

