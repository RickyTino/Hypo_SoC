/********************MangoMIPS32*******************
Filename:   MMU.v
Author:     RickyTino
Version:    v1.1.1
**************************************************/
`include "../Config.v"
`include "../Defines.v"

// module MMU
// (   
//     input  wire            en,
//     input  wire [`ByteWEn] wen,
//     input  wire [`AddrBus] vaddr,
//     input  wire [`DataBus] wdata,
//     output wire [`DataBus] rdata,
//     input  wire [`AXISize] size,
//     output wire            refs,

//     output reg             bus_en,
//     output wire [`ByteWEn] bus_wen,
//     output reg  [`AddrBus] bus_paddr,
//     output wire [`DataBus] bus_wdata,
//     input  wire [`DataBus] bus_rdata,
//     output wire [`AXISize] bus_size,
//     input  wire            bus_streq,
//     output reg             bus_cached,

//     output reg             tlb_en,
//     output reg  [`AddrBus] tlb_vaddr,
//     // output reg             tlb_refs,
//     input  wire            tlb_rdy,
//     input  wire [`AddrBus] tlb_paddr,
//     input  wire            tlb_cat,
//     input  wire            tlb_tlbr,
//     input  wire            tlb_tlbi,
//     input  wire            tlb_tlbm,

//     input  wire            exc_flag,
//     input  wire [`DataBus] cp0_Status,
//     input  wire [`DataBus] cp0_Config,
//     output reg             exc_tlbr,
//     output reg             exc_tlbi,
//     output reg             exc_tlbm,

//     output wire            stallreq
// );

// `ifdef Fixed_Mapping_MMU

//     assign bus_wen   = en ? wen : `WrDisable;
//     assign bus_wdata = wdata;
//     assign bus_size  = size;
//     assign rdata     = en ? bus_rdata : `ZeroWord;
//     assign refs      = wen != `WrDisable;
//     assign stallreq  = bus_streq;

//     always @(*) begin
//         exc_tlbr   <= `false;
//         exc_tlbi   <= `false;
//         exc_tlbm   <= `false;

//         bus_en     <= en && !exc_flag;
//         case (vaddr[`Seg])
//             `kseg0: begin  // kseg0: unmapped
//                 bus_paddr  <= {3'b000, vaddr[28:0]};
//                 bus_cached <= cp0_Config[`K0] == 3'd3;
//             end
            
//             `kseg1: begin // kseg1: unmapped, uncached
//                 bus_paddr  <= {3'b000, vaddr[28:0]};
//                 bus_cached <= `false;
//             end
            
//             `kseg2, `kseg3: begin // kseg2 & kseg3: mapped
//                 bus_paddr  <= vaddr;
//                 bus_cached <= cp0_Config[`K23] == 3'd3;
//             end

//             default: begin // kuseg: mapped
//                 bus_paddr  <= cp0_Status[`ERL] ? vaddr : {vaddr[31:28] + 4'd4, vaddr[27:0]};
//                 bus_cached <= cp0_Config[`KU] == 3'd3;
//             end
//         endcase
//     end

// `else // TLB-based MMU

//     reg  tlb_streq;

//     assign bus_wen   = en ? wen : `WrDisable;
//     assign bus_wdata = wdata;
//     assign bus_size  = size;
//     assign rdata     = en ? bus_rdata : `ZeroWord;
//     assign refs      = wen != `WrDisable;
//     assign stallreq  = bus_streq || tlb_streq;

//     always @(*) begin
//         tlb_en     <= `false;
//         tlb_vaddr  <= `ZeroWord;
//         // tlb_refs   <= `false;
//         tlb_streq  <= `false;
//         bus_en     <= `false;
//         bus_paddr  <= `ZeroWord;
//         bus_cached <= `false;
//         exc_tlbr   <= `false;
//         exc_tlbi   <= `false;
//         exc_tlbm   <= `false;

//         // if(en && !exc_flag) begin
//         case (vaddr[`Seg])
//             `kseg0: begin // kseg0: unmapped
//                 bus_paddr  <= {3'b000, vaddr[28:0]};
//                 bus_en     <= en && !exc_flag;
//                 bus_cached <= cp0_Config[`K0] == 3'd3;
//             end
            
//             `kseg1: begin // kseg1: unmapped, uncached
//                 bus_paddr  <= {3'b000, vaddr[28:0]};
//                 bus_en     <= en && !exc_flag;
//                 bus_cached <= `false;
//             end
            
//             default: begin // kseg2, kseg3, kuseg: mapped
//                 if(cp0_Status[`ERL]) begin
//                     bus_paddr  <= {3'b000, vaddr[28:0]};
//                     bus_en     <= en && !exc_flag;
//                     bus_cached <= `false;
//                 end
//                 else if(en) begin
//                     tlb_en     <= `true;
//                     // tlb_refs   <= wen != `WrDisable;
//                     tlb_vaddr  <= vaddr;
//                     tlb_streq  <= !tlb_rdy;
//                     bus_paddr  <= tlb_paddr;
//                     bus_en     <= tlb_rdy & !exc_flag;
//                     bus_cached <= tlb_cat;
//                     exc_tlbr   <= tlb_tlbr;
//                     exc_tlbi   <= tlb_tlbi;
//                     exc_tlbm   <= tlb_tlbm;
//                 end
//             end
//         endcase
//     end
// `endif

// endmodule



module MMU
(
    input  wire         clk,
    input  wire         rst_n,

    input  wire         en,
    input  wire [ 3: 0] wen,
    input  wire [31: 0] vaddr,
    input  wire [31: 0] wdata,
    output wire [31: 0] rdata,
    input  wire [ 1: 0] size,    //AXI总线用
    output wire         refs,    //1: 是save 0: 是load

    output reg          bus_en,
    output wire [ 3: 0] bus_wen,
    output reg  [31: 0] bus_paddr,
    output wire [31: 0] bus_wdata,
    input  wire [31: 0] bus_rdata,
    output wire [ 1: 0] bus_size,    //AXI总线用
    input  wire         bus_streq,   //暂停请求
    output reg          bus_cached,  //cacheability
    
    output reg          tlb_en,
    output reg  [31: 0] tlb_vaddr,
    input  wire         stlb_wen,
    input  wire [`STLB] stlb_wdata,
    input  wire         stlb_inv,
    input  wire         tlb_tlbr,
    input  wire         tlb_tlbi,

    input  wire         exc_flag,
    input  wire [31: 0] Status,
    input  wire [31: 0] Config,
    input  wire [31: 0] EntryHi,
    output reg          exc_tlbr,
    output reg          exc_tlbi,
    output reg          exc_tlbm,

    output wire         stallreq
);

    reg tlb_streq;
    
    assign bus_wen   = wen;
    assign bus_wdata = wdata;
    assign bus_size  = size;
    assign rdata     = en ? bus_rdata : 0;
    assign refs      = wen != 0;
    assign stallreq  = bus_streq || tlb_streq;
    
    reg  [`STLB] stlb;
    
    wire [19: 0] stlb_vpn  = stlb[`STLB_VPN];
    wire [19: 0] stlb_pfn  = stlb[`STLB_PFN];
    wire [19: 0] stlb_mask = stlb[`STLB_Mask];
    wire [ 7: 0] stlb_asid = stlb[`STLB_ASID];
    wire         stlb_g    = stlb[`STLB_G];
    wire         stlb_v    = stlb[`STLB_V];
    wire         stlb_d    = stlb[`STLB_D];
    wire         stlb_c    = stlb[`STLB_C];
    
    // 省略各种wire了
    
    wire stlb_match = ((stlb_vpn     & ~stlb_mask)
                     ^ (vaddr[31:12] & ~stlb_mask)) == 0;
    wire stlb_avlb  = stlb_g || (stlb_asid ^ EntryHi[`ASID]) == 0;
    wire stlb_hit   = stlb_match && stlb_avlb && stlb_v;

    always @(*) begin
        // 别忘了默认值
        tlb_en     <= 0;
        tlb_vaddr  <= 0;
        tlb_streq  <= 0;
        bus_en     <= 0;
        bus_paddr  <= 0;
        bus_cached <= 0;
        exc_tlbr   <= 0;
        exc_tlbi   <= 0;
        exc_tlbm   <= 0;

        case (vaddr[31:29])
            `kseg0: begin  // kseg0: unmapped
                bus_paddr  <= {3'b000, vaddr[28:0]};
                bus_en     <= en && !exc_flag;
                bus_cached <= Config[`K0] == 3'd3;
            end
            
            `kseg1: begin // kseg1: unmapped, uncached
                bus_paddr  <= {3'b000, vaddr[28:0]};
                bus_en     <= en && !exc_flag;
                bus_cached <= 0;
            end

            default: begin // kseg2, kseg3, kuseg: mapped
                if(Status[`ERL]) begin
                    bus_paddr  <= {3'b000, vaddr[28:0]};
                    bus_en     <= en && !exc_flag;
                    bus_cached <= 0;
                end else if(en) begin
                    if(stlb_hit) begin
                        bus_paddr  <= {(stlb_pfn & ~stlb_mask), 12'h0} | (vaddr & {stlb_mask, 12'hFFF});
                        bus_en     <= en && !exc_flag;
                        bus_cached <= stlb_c == 3'd3;
                        exc_tlbm   <= !stlb_d && refs;
                    end
                    else begin
                        tlb_en    <= 1;
                        tlb_vaddr <= vaddr;
                        tlb_streq <= 1;
                        exc_tlbr   <= tlb_tlbr;
                        exc_tlbi   <= tlb_tlbi;
                    end
                end
            end
        endcase
    end

    always @(posedge clk, negedge rst_n) begin
        if(!rst_n) begin
            stlb <= 0;
        end
        else begin
            if(stlb_wen)      stlb <= stlb_wdata;
            else if(stlb_inv) stlb <= 0;
        end
    end

endmodule