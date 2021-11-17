//
// Generated by Bluespec Compiler, version 2021.07-10-gb37e90ec (build b37e90ec)
//
//
// Ports:
// Name                         I/O  size props
// toCore_awvalid                 O     1 const
// toCore_awid                    O     4 const
// toCore_awaddr                  O    32 const
// toCore_awlen                   O     8 const
// toCore_awsize                  O     3 const
// toCore_awburst                 O     2 const
// toCore_awlock                  O     1 const
// toCore_awcache                 O     4 const
// toCore_awprot                  O     3 const
// toCore_awqos                   O     4 const
// toCore_awregion                O     4 const
// toCore_wvalid                  O     1 const
// toCore_wdata                   O    32 const
// toCore_wstrb                   O     4 const
// toCore_wlast                   O     1 const
// toCore_bready                  O     1 const
// toCore_arvalid                 O     1 const
// toCore_arid                    O     4 const
// toCore_araddr                  O    32 const
// toCore_arlen                   O     8 const
// toCore_arsize                  O     3 const
// toCore_arburst                 O     2 const
// toCore_arlock                  O     1 const
// toCore_arcache                 O     4 const
// toCore_arprot                  O     3 const
// toCore_arqos                   O     4 const
// toCore_arregion                O     4 const
// toCore_rready                  O     1 const
// jtag_tdo                       O     1 const
// CLK_jtag_tclk_out              O     1 const
// CLK_GATE_jtag_tclk_out         O     1 const
// RST_N_ndm_resetn               O     1
// CLK                            I     1 unused
// RST_N                          I     1 unused
// toCore_awready                 I     1 unused
// toCore_wready                  I     1 unused
// toCore_bvalid                  I     1 unused
// toCore_bid                     I     4 unused
// toCore_bresp                   I     2 unused
// toCore_arready                 I     1 unused
// toCore_rvalid                  I     1 unused
// toCore_rid                     I     4 unused
// toCore_rdata                   I    32 unused
// toCore_rresp                   I     2 unused
// toCore_rlast                   I     1 unused
// jtag_tdi                       I     1 unused
// jtag_tms                       I     1 unused
// jtag_tclk                      I     1 unused
//
// No combinational paths from inputs to outputs
//
//

`ifdef BSV_ASSIGNMENT_DELAY
`else
  `define BSV_ASSIGNMENT_DELAY
`endif

`ifdef BSV_POSITIVE_RESET
  `define BSV_RESET_VALUE 1'b1
  `define BSV_RESET_EDGE posedge
`else
  `define BSV_RESET_VALUE 1'b0
  `define BSV_RESET_EDGE negedge
`endif

module mkDummyBSDebug(CLK,
		      RST_N,

		      toCore_awvalid,

		      toCore_awid,

		      toCore_awaddr,

		      toCore_awlen,

		      toCore_awsize,

		      toCore_awburst,

		      toCore_awlock,

		      toCore_awcache,

		      toCore_awprot,

		      toCore_awqos,

		      toCore_awregion,

		      toCore_awready,

		      toCore_wvalid,

		      toCore_wdata,

		      toCore_wstrb,

		      toCore_wlast,

		      toCore_wready,

		      toCore_bvalid,
		      toCore_bid,
		      toCore_bresp,

		      toCore_bready,

		      toCore_arvalid,

		      toCore_arid,

		      toCore_araddr,

		      toCore_arlen,

		      toCore_arsize,

		      toCore_arburst,

		      toCore_arlock,

		      toCore_arcache,

		      toCore_arprot,

		      toCore_arqos,

		      toCore_arregion,

		      toCore_arready,

		      toCore_rvalid,
		      toCore_rid,
		      toCore_rdata,
		      toCore_rresp,
		      toCore_rlast,

		      toCore_rready,

		      jtag_tdi,

		      jtag_tms,

		      jtag_tclk,

		      jtag_tdo,

		      CLK_jtag_tclk_out,
		      CLK_GATE_jtag_tclk_out,

		      RST_N_ndm_resetn);
  input  CLK;
  input  RST_N;

  // value method toCore_m_awvalid
  output toCore_awvalid;

  // value method toCore_m_awid
  output [3 : 0] toCore_awid;

  // value method toCore_m_awaddr
  output [31 : 0] toCore_awaddr;

  // value method toCore_m_awlen
  output [7 : 0] toCore_awlen;

  // value method toCore_m_awsize
  output [2 : 0] toCore_awsize;

  // value method toCore_m_awburst
  output [1 : 0] toCore_awburst;

  // value method toCore_m_awlock
  output toCore_awlock;

  // value method toCore_m_awcache
  output [3 : 0] toCore_awcache;

  // value method toCore_m_awprot
  output [2 : 0] toCore_awprot;

  // value method toCore_m_awqos
  output [3 : 0] toCore_awqos;

  // value method toCore_m_awregion
  output [3 : 0] toCore_awregion;

  // value method toCore_m_awuser

  // action method toCore_m_awready
  input  toCore_awready;

  // value method toCore_m_wvalid
  output toCore_wvalid;

  // value method toCore_m_wdata
  output [31 : 0] toCore_wdata;

  // value method toCore_m_wstrb
  output [3 : 0] toCore_wstrb;

  // value method toCore_m_wlast
  output toCore_wlast;

  // value method toCore_m_wuser

  // action method toCore_m_wready
  input  toCore_wready;

  // action method toCore_m_bvalid
  input  toCore_bvalid;
  input  [3 : 0] toCore_bid;
  input  [1 : 0] toCore_bresp;

  // value method toCore_m_bready
  output toCore_bready;

  // value method toCore_m_arvalid
  output toCore_arvalid;

  // value method toCore_m_arid
  output [3 : 0] toCore_arid;

  // value method toCore_m_araddr
  output [31 : 0] toCore_araddr;

  // value method toCore_m_arlen
  output [7 : 0] toCore_arlen;

  // value method toCore_m_arsize
  output [2 : 0] toCore_arsize;

  // value method toCore_m_arburst
  output [1 : 0] toCore_arburst;

  // value method toCore_m_arlock
  output toCore_arlock;

  // value method toCore_m_arcache
  output [3 : 0] toCore_arcache;

  // value method toCore_m_arprot
  output [2 : 0] toCore_arprot;

  // value method toCore_m_arqos
  output [3 : 0] toCore_arqos;

  // value method toCore_m_arregion
  output [3 : 0] toCore_arregion;

  // value method toCore_m_aruser

  // action method toCore_m_arready
  input  toCore_arready;

  // action method toCore_m_rvalid
  input  toCore_rvalid;
  input  [3 : 0] toCore_rid;
  input  [31 : 0] toCore_rdata;
  input  [1 : 0] toCore_rresp;
  input  toCore_rlast;

  // value method toCore_m_rready
  output toCore_rready;

  // action method jtag_tdi
  input  jtag_tdi;

  // action method jtag_tms
  input  jtag_tms;

  // action method jtag_tclk
  input  jtag_tclk;

  // value method jtag_tdo
  output jtag_tdo;

  // oscillator and gates for output clock CLK_jtag_tclk_out
  output CLK_jtag_tclk_out;
  output CLK_GATE_jtag_tclk_out;

  // output resets
  output RST_N_ndm_resetn;

  // signals for module outputs
  wire [31 : 0] toCore_araddr, toCore_awaddr, toCore_wdata;
  wire [7 : 0] toCore_arlen, toCore_awlen;
  wire [3 : 0] toCore_arcache,
	       toCore_arid,
	       toCore_arqos,
	       toCore_arregion,
	       toCore_awcache,
	       toCore_awid,
	       toCore_awqos,
	       toCore_awregion,
	       toCore_wstrb;
  wire [2 : 0] toCore_arprot, toCore_arsize, toCore_awprot, toCore_awsize;
  wire [1 : 0] toCore_arburst, toCore_awburst;
  wire CLK_GATE_jtag_tclk_out,
       CLK_jtag_tclk_out,
       RST_N_ndm_resetn,
       jtag_tdo,
       toCore_arlock,
       toCore_arvalid,
       toCore_awlock,
       toCore_awvalid,
       toCore_bready,
       toCore_rready,
       toCore_wlast,
       toCore_wvalid;

  // rule scheduling signals
  wire CAN_FIRE_jtag_tclk,
       CAN_FIRE_jtag_tdi,
       CAN_FIRE_jtag_tms,
       CAN_FIRE_toCore_m_arready,
       CAN_FIRE_toCore_m_awready,
       CAN_FIRE_toCore_m_bvalid,
       CAN_FIRE_toCore_m_rvalid,
       CAN_FIRE_toCore_m_wready,
       WILL_FIRE_jtag_tclk,
       WILL_FIRE_jtag_tdi,
       WILL_FIRE_jtag_tms,
       WILL_FIRE_toCore_m_arready,
       WILL_FIRE_toCore_m_awready,
       WILL_FIRE_toCore_m_bvalid,
       WILL_FIRE_toCore_m_rvalid,
       WILL_FIRE_toCore_m_wready;

  // oscillator and gates for output clock CLK_jtag_tclk_out
  assign CLK_jtag_tclk_out = 1'd0 ;
  assign CLK_GATE_jtag_tclk_out = 1'd0 ;

  // output resets
  assign RST_N_ndm_resetn = !`BSV_RESET_VALUE ;

  // value method toCore_m_awvalid
  assign toCore_awvalid = 1'd0 ;

  // value method toCore_m_awid
  assign toCore_awid = 4'hA ;

  // value method toCore_m_awaddr
  assign toCore_awaddr = 32'hAAAAAAAA ;

  // value method toCore_m_awlen
  assign toCore_awlen = 8'hAA ;

  // value method toCore_m_awsize
  assign toCore_awsize = 3'h2 ;

  // value method toCore_m_awburst
  assign toCore_awburst = 2'h2 ;

  // value method toCore_m_awlock
  assign toCore_awlock = 1'h0 ;

  // value method toCore_m_awcache
  assign toCore_awcache = 4'hA ;

  // value method toCore_m_awprot
  assign toCore_awprot = 3'h2 ;

  // value method toCore_m_awqos
  assign toCore_awqos = 4'hA ;

  // value method toCore_m_awregion
  assign toCore_awregion = 4'hA ;

  // action method toCore_m_awready
  assign CAN_FIRE_toCore_m_awready = 1'd1 ;
  assign WILL_FIRE_toCore_m_awready = 1'd1 ;

  // value method toCore_m_wvalid
  assign toCore_wvalid = 1'd0 ;

  // value method toCore_m_wdata
  assign toCore_wdata = 32'hAAAAAAAA ;

  // value method toCore_m_wstrb
  assign toCore_wstrb = 4'hA ;

  // value method toCore_m_wlast
  assign toCore_wlast = 1'h0 ;

  // action method toCore_m_wready
  assign CAN_FIRE_toCore_m_wready = 1'd1 ;
  assign WILL_FIRE_toCore_m_wready = 1'd1 ;

  // action method toCore_m_bvalid
  assign CAN_FIRE_toCore_m_bvalid = 1'd1 ;
  assign WILL_FIRE_toCore_m_bvalid = 1'd1 ;

  // value method toCore_m_bready
  assign toCore_bready = 1'd0 ;

  // value method toCore_m_arvalid
  assign toCore_arvalid = 1'd0 ;

  // value method toCore_m_arid
  assign toCore_arid = 4'hA ;

  // value method toCore_m_araddr
  assign toCore_araddr = 32'hAAAAAAAA ;

  // value method toCore_m_arlen
  assign toCore_arlen = 8'hAA ;

  // value method toCore_m_arsize
  assign toCore_arsize = 3'h2 ;

  // value method toCore_m_arburst
  assign toCore_arburst = 2'h2 ;

  // value method toCore_m_arlock
  assign toCore_arlock = 1'h0 ;

  // value method toCore_m_arcache
  assign toCore_arcache = 4'hA ;

  // value method toCore_m_arprot
  assign toCore_arprot = 3'h2 ;

  // value method toCore_m_arqos
  assign toCore_arqos = 4'hA ;

  // value method toCore_m_arregion
  assign toCore_arregion = 4'hA ;

  // action method toCore_m_arready
  assign CAN_FIRE_toCore_m_arready = 1'd1 ;
  assign WILL_FIRE_toCore_m_arready = 1'd1 ;

  // action method toCore_m_rvalid
  assign CAN_FIRE_toCore_m_rvalid = 1'd1 ;
  assign WILL_FIRE_toCore_m_rvalid = 1'd1 ;

  // value method toCore_m_rready
  assign toCore_rready = 1'd0 ;

  // action method jtag_tdi
  assign CAN_FIRE_jtag_tdi = 1'd1 ;
  assign WILL_FIRE_jtag_tdi = 1'd1 ;

  // action method jtag_tms
  assign CAN_FIRE_jtag_tms = 1'd1 ;
  assign WILL_FIRE_jtag_tms = 1'd1 ;

  // action method jtag_tclk
  assign CAN_FIRE_jtag_tclk = 1'd1 ;
  assign WILL_FIRE_jtag_tclk = 1'd1 ;

  // value method jtag_tdo
  assign jtag_tdo = 1'd0 ;
endmodule  // mkDummyBSDebug

