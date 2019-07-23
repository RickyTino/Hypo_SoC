/********************MangoMIPS32*******************
Filename:   Reg_MEM_WB.v
Author:     RickyTino
Version:    v1.1.0
**************************************************/
`include "../Config.v"
`include "../Defines.v"

module Reg_MEM_WB
(
    input  wire            clk,
    input  wire            rst,
    (*mark_debug = "true"*) input  wire            stall,
    input  wire            flush,

    (*mark_debug = "true"*) input  wire [`AddrBus] mem_pc,
    input  wire [`ALUOp  ] mem_aluop, 
    input  wire [`DataBus] mem_alures,
    input  wire [`DataBus] mem_mulres,
    (*mark_debug = "true"*) input  wire [`AddrBus] mem_m_vaddr,
    (*mark_debug = "true"*) input  wire [`DataBus] mem_m_rdata,
    (*mark_debug = "true"*) input  wire [`ByteWEn] mem_wreg,
    (*mark_debug = "true"*) input  wire [`RegAddr] mem_wraddr,
    input  wire            mem_hilo_wen,
    input  wire [`DWord  ] mem_hilo,
    input  wire            mem_llb_wen,
    input  wire            mem_llbit,

    (*mark_debug = "true"*) output reg  [`AddrBus] wb_pc,
    output reg  [`ALUOp  ] wb_aluop, 
    output reg  [`DataBus] wb_alures,
    output reg  [`DataBus] wb_mulres,
    (*mark_debug = "true"*) output reg  [`AddrBus] wb_m_vaddr, 
    (*mark_debug = "true"*) output reg  [`DataBus] wb_m_rdata,
    (*mark_debug = "true"*) output reg  [`ByteWEn] wb_wreg,
    (*mark_debug = "true"*) output reg  [`RegAddr] wb_wraddr,
    output reg             wb_hilo_wen,
    output reg  [`DWord  ] wb_hilo,
    output reg             wb_llb_wen,
    output reg             wb_llbit
);

    always @(posedge clk, posedge rst) begin
        if(rst) begin
            wb_pc       <= `ZeroWord;
            wb_aluop    <= `ALU_NOP;
            wb_alures   <= `ZeroWord;
            wb_mulres   <= `ZeroWord;
            wb_m_vaddr  <= `ZeroWord;
            wb_m_rdata  <= `ZeroWord;
            wb_wreg     <= `WrDisable;
            wb_wraddr   <= `ZeroReg;
            wb_hilo_wen <= `false;
            wb_hilo     <= `ZeroDWord;
            wb_llb_wen  <= `false;
            wb_llbit    <= `Zero;
        end
        else begin
            case ({flush, stall})
                2'b10, 2'b11: begin
                    wb_pc       <= `ZeroWord;
                    wb_aluop    <= `ALU_NOP;
                    wb_alures   <= `ZeroWord;
                    wb_mulres   <= `ZeroWord;
                    wb_m_vaddr  <= `ZeroWord;
                    wb_m_rdata  <= `ZeroWord;
                    wb_wreg     <= `WrDisable;
                    wb_wraddr   <= `ZeroReg;
                    wb_hilo_wen <= `false;
                    wb_hilo     <= `ZeroDWord;
                    wb_llb_wen  <= `false;
                    wb_llbit    <= `Zero;
                end
                2'b00: begin
                    wb_pc       <= mem_pc;
                    wb_aluop    <= mem_aluop;
                    wb_alures   <= mem_alures;
                    wb_mulres   <= mem_mulres;
                    wb_m_vaddr  <= mem_m_vaddr;
                    wb_m_rdata  <= mem_m_rdata;
                    wb_wreg     <= mem_wreg;
                    wb_wraddr   <= mem_wraddr;
                    wb_hilo_wen <= mem_hilo_wen;
                    wb_hilo     <= mem_hilo;
                    wb_llb_wen  <= mem_llb_wen;
                    wb_llbit    <= mem_llbit;
                end
            endcase
        end
    end

endmodule