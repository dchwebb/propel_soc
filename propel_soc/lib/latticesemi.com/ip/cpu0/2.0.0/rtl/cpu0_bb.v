/*******************************************************************************
    Verilog netlist generated by IPGEN Lattice Propel (64-bit)
    2.0.2104292220
    Soft IP Version: 2.0.0
    2021 06 07 16:46:57
*******************************************************************************/
/*******************************************************************************
    Wrapper Module generated per user settings.
*******************************************************************************/
module cpu0 (clk_i, rst_n_i, system_resetn_o, irq2_i, irq1_i, irq0_i,
    timer_irq_o, ahbl_m_instr_haddr_o, ahbl_m_instr_hwrite_o,
    ahbl_m_instr_hsize_o, ahbl_m_instr_hburst_o, ahbl_m_instr_hprot_o,
    ahbl_m_instr_htrans_o, ahbl_m_instr_hmastlock_o, ahbl_m_instr_hwdata_o,
    ahbl_m_instr_hrdata_i, ahbl_m_instr_hready_i, ahbl_m_instr_hresp_i,
    ahbl_m_data_haddr_o, ahbl_m_data_hwrite_o, ahbl_m_data_hsize_o,
    ahbl_m_data_hburst_o, ahbl_m_data_hprot_o, ahbl_m_data_htrans_o,
    ahbl_m_data_hmastlock_o, ahbl_m_data_hwdata_o, ahbl_m_data_hrdata_i,
    ahbl_m_data_hready_i, ahbl_m_data_hresp_i)/* synthesis syn_black_box syn_declare_black_box=1 */;
    input  clk_i;
    input  rst_n_i;
    output  system_resetn_o;
    input  [0:0]  irq2_i;
    input  [0:0]  irq1_i;
    input  [0:0]  irq0_i;
    output  timer_irq_o;
    output  [31:0]  ahbl_m_instr_haddr_o;
    output  ahbl_m_instr_hwrite_o;
    output  [2:0]  ahbl_m_instr_hsize_o;
    output  [2:0]  ahbl_m_instr_hburst_o;
    output  [3:0]  ahbl_m_instr_hprot_o;
    output  [1:0]  ahbl_m_instr_htrans_o;
    output  ahbl_m_instr_hmastlock_o;
    output  [31:0]  ahbl_m_instr_hwdata_o;
    input  [31:0]  ahbl_m_instr_hrdata_i;
    input  ahbl_m_instr_hready_i;
    input  ahbl_m_instr_hresp_i;
    output  [31:0]  ahbl_m_data_haddr_o;
    output  ahbl_m_data_hwrite_o;
    output  [2:0]  ahbl_m_data_hsize_o;
    output  [2:0]  ahbl_m_data_hburst_o;
    output  [3:0]  ahbl_m_data_hprot_o;
    output  [1:0]  ahbl_m_data_htrans_o;
    output  ahbl_m_data_hmastlock_o;
    output  [31:0]  ahbl_m_data_hwdata_o;
    input  [31:0]  ahbl_m_data_hrdata_i;
    input  ahbl_m_data_hready_i;
    input  ahbl_m_data_hresp_i;
endmodule