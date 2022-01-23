//
// Generated by Bluespec Compiler, version 2021.07 (build 4cac6eb)
//
//
// Ports:
// Name                         I/O  size props
// result_valid                   O     1
// result_value                   O    64 reg
// CLK                            I     1 clock
// RST_N                          I     1 reset
// put_args_x_is_signed           I     1
// put_args_x                     I    32
// put_args_y_is_signed           I     1
// put_args_y                     I    32
// EN_put_args                    I     1
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

module mkIntMul_32(CLK,
		   RST_N,

		   put_args_x_is_signed,
		   put_args_x,
		   put_args_y_is_signed,
		   put_args_y,
		   EN_put_args,

		   result_valid,

		   result_value);
  input  CLK;
  input  RST_N;

  // action method put_args
  input  put_args_x_is_signed;
  input  [31 : 0] put_args_x;
  input  put_args_y_is_signed;
  input  [31 : 0] put_args_y;
  input  EN_put_args;

  // value method result_valid
  output result_valid;

  // value method result_value
  output [63 : 0] result_value;

  // signals for module outputs
  wire [63 : 0] result_value;
  wire result_valid;

  // register m_rg_isNeg
  reg m_rg_isNeg;
  wire m_rg_isNeg$D_IN, m_rg_isNeg$EN;

  // register m_rg_signed
  reg m_rg_signed;
  wire m_rg_signed$D_IN, m_rg_signed$EN;

  // register m_rg_state
  reg [1 : 0] m_rg_state;
  wire [1 : 0] m_rg_state$D_IN;
  wire m_rg_state$EN;

  // register m_rg_x
  reg [63 : 0] m_rg_x;
  wire [63 : 0] m_rg_x$D_IN;
  wire m_rg_x$EN;

  // register m_rg_xy
  reg [63 : 0] m_rg_xy;
  wire [63 : 0] m_rg_xy$D_IN;
  wire m_rg_xy$EN;

  // register m_rg_y
  reg [31 : 0] m_rg_y;
  wire [31 : 0] m_rg_y$D_IN;
  wire m_rg_y$EN;

  // rule scheduling signals
  wire CAN_FIRE_RL_m_compute,
       CAN_FIRE_put_args,
       WILL_FIRE_RL_m_compute,
       WILL_FIRE_put_args;

  // inputs to muxes for submodule ports
  wire [63 : 0] MUX_m_rg_x$write_1__VAL_1,
		MUX_m_rg_x$write_1__VAL_2,
		MUX_m_rg_xy$write_1__VAL_2;
  wire [31 : 0] MUX_m_rg_y$write_1__VAL_1, MUX_m_rg_y$write_1__VAL_2;

  // remaining internal signals
  wire [63 : 0] x__h239, x__h341, xy___1__h265;
  wire [31 : 0] _theResult___fst__h509,
		_theResult___fst__h512,
		_theResult___fst__h563,
		_theResult___fst__h566,
		_theResult___snd_fst__h558;
  wire IF_put_args_x_is_signed_THEN_put_args_x_BIT_31_ETC___d34;

  // action method put_args
  assign CAN_FIRE_put_args = 1'd1 ;
  assign WILL_FIRE_put_args = EN_put_args ;

  // value method result_valid
  assign result_valid = m_rg_state == 2'd2 ;

  // value method result_value
  assign result_value = m_rg_xy ;

  // rule RL_m_compute
  assign CAN_FIRE_RL_m_compute = m_rg_state == 2'd1 ;
  assign WILL_FIRE_RL_m_compute = CAN_FIRE_RL_m_compute ;

  // inputs to muxes for submodule ports
  assign MUX_m_rg_x$write_1__VAL_1 = { 32'd0, _theResult___fst__h509 } ;
  assign MUX_m_rg_x$write_1__VAL_2 = { m_rg_x[62:0], 1'd0 } ;
  assign MUX_m_rg_xy$write_1__VAL_2 = (m_rg_y == 32'd0) ? x__h239 : x__h341 ;
  assign MUX_m_rg_y$write_1__VAL_1 =
	     (put_args_x_is_signed && put_args_y_is_signed) ?
	       _theResult___fst__h566 :
	       _theResult___snd_fst__h558 ;
  assign MUX_m_rg_y$write_1__VAL_2 = { 1'd0, m_rg_y[31:1] } ;

  // register m_rg_isNeg
  assign m_rg_isNeg$D_IN =
	     (put_args_x_is_signed && put_args_y_is_signed) ?
	       put_args_x[31] != put_args_y[31] :
	       IF_put_args_x_is_signed_THEN_put_args_x_BIT_31_ETC___d34 ;
  assign m_rg_isNeg$EN = EN_put_args ;

  // register m_rg_signed
  assign m_rg_signed$D_IN = 1'b0 ;
  assign m_rg_signed$EN = 1'b0 ;

  // register m_rg_state
  assign m_rg_state$D_IN = EN_put_args ? 2'd1 : 2'd2 ;
  assign m_rg_state$EN =
	     WILL_FIRE_RL_m_compute && m_rg_y == 32'd0 || EN_put_args ;

  // register m_rg_x
  assign m_rg_x$D_IN =
	     EN_put_args ?
	       MUX_m_rg_x$write_1__VAL_1 :
	       MUX_m_rg_x$write_1__VAL_2 ;
  assign m_rg_x$EN =
	     WILL_FIRE_RL_m_compute && m_rg_y != 32'd0 || EN_put_args ;

  // register m_rg_xy
  assign m_rg_xy$D_IN = EN_put_args ? 64'd0 : MUX_m_rg_xy$write_1__VAL_2 ;
  assign m_rg_xy$EN =
	     WILL_FIRE_RL_m_compute && (m_rg_y == 32'd0 || m_rg_y[0]) ||
	     EN_put_args ;

  // register m_rg_y
  assign m_rg_y$D_IN =
	     EN_put_args ?
	       MUX_m_rg_y$write_1__VAL_1 :
	       MUX_m_rg_y$write_1__VAL_2 ;
  assign m_rg_y$EN =
	     WILL_FIRE_RL_m_compute && m_rg_y != 32'd0 || EN_put_args ;

  // remaining internal signals
  assign IF_put_args_x_is_signed_THEN_put_args_x_BIT_31_ETC___d34 =
	     put_args_x_is_signed ?
	       put_args_x[31] :
	       put_args_y_is_signed && put_args_y[31] ;
  assign _theResult___fst__h509 =
	     put_args_x_is_signed ? _theResult___fst__h512 : put_args_x ;
  assign _theResult___fst__h512 = put_args_x[31] ? -put_args_x : put_args_x ;
  assign _theResult___fst__h563 =
	     put_args_y_is_signed ? _theResult___fst__h566 : put_args_y ;
  assign _theResult___fst__h566 = put_args_y[31] ? -put_args_y : put_args_y ;
  assign _theResult___snd_fst__h558 =
	     put_args_x_is_signed ? put_args_y : _theResult___fst__h563 ;
  assign x__h239 = m_rg_isNeg ? xy___1__h265 : m_rg_xy ;
  assign x__h341 = m_rg_xy + m_rg_x ;
  assign xy___1__h265 = -m_rg_xy ;

  // handling of inlined registers

  always@(posedge CLK)
  begin
    if (RST_N == `BSV_RESET_VALUE)
      begin
        m_rg_state <= `BSV_ASSIGNMENT_DELAY 2'd0;
      end
    else
      begin
        if (m_rg_state$EN)
	  m_rg_state <= `BSV_ASSIGNMENT_DELAY m_rg_state$D_IN;
      end
    if (m_rg_isNeg$EN) m_rg_isNeg <= `BSV_ASSIGNMENT_DELAY m_rg_isNeg$D_IN;
    if (m_rg_signed$EN) m_rg_signed <= `BSV_ASSIGNMENT_DELAY m_rg_signed$D_IN;
    if (m_rg_x$EN) m_rg_x <= `BSV_ASSIGNMENT_DELAY m_rg_x$D_IN;
    if (m_rg_xy$EN) m_rg_xy <= `BSV_ASSIGNMENT_DELAY m_rg_xy$D_IN;
    if (m_rg_y$EN) m_rg_y <= `BSV_ASSIGNMENT_DELAY m_rg_y$D_IN;
  end

  // synopsys translate_off
  `ifdef BSV_NO_INITIAL_BLOCKS
  `else // not BSV_NO_INITIAL_BLOCKS
  initial
  begin
    m_rg_isNeg = 1'h0;
    m_rg_signed = 1'h0;
    m_rg_state = 2'h2;
    m_rg_x = 64'hAAAAAAAAAAAAAAAA;
    m_rg_xy = 64'hAAAAAAAAAAAAAAAA;
    m_rg_y = 32'hAAAAAAAA;
  end
  `endif // BSV_NO_INITIAL_BLOCKS
  // synopsys translate_on
endmodule  // mkIntMul_32

