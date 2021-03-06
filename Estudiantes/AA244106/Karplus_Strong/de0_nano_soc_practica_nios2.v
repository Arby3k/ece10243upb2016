
//=======================================================
//  This code is generated by Terasic System Builder
//=======================================================

module DE0_NANO_SOC_practica_nios2(

	//////////// ADC //////////
	output		          		ADC_CONVST,
	output		          		ADC_SCK,
	output		          		ADC_SDI,
	input 		          		ADC_SDO,

	//////////// CLOCK //////////
	input 		          		FPGA_CLK1_50,
	input 		          		FPGA_CLK2_50,
	input 		          		FPGA_CLK3_50,

	//////////// KEY //////////
	input 		     [1:0]		KEY,

	//////////// LED //////////
	output		     [7:0]		LED,

	//////////// SW //////////
	input 		     [3:0]		SW,

	//////////// GPIO_0, GPIO connect to GPIO Default //////////
	inout 		    [35:0]		GPIO_0,

	//////////// GPIO_1, GPIO connect to GPIO Default //////////
	inout 		    [35:0]		GPIO_1
);



//=======================================================
//  REG/WIRE declarations
//=======================================================


wire [31:0]nota;

//=======================================================
//  Structural coding
//=======================================================



 nios_practica u0 (
	  .clk_clk         (FPGA_CLK1_50),         //      clk.clk
	  .reset_reset_n   (1'b1),   //    reset.reset_n
	  .sw_export       (SW[3:0]),       //       sw.export
	  .leds_export     (LED[7:1]),     //     leds.export
	  .uart_rxd        (GPIO_0[0]),        //     uart.rxd
	  .uart_txd        (GPIO_0[1]),        //         .txd
	  .timer_export    (LED[0])        //       timer.export

//	  .div_freq_export (nota[31:0]),  // div_freq.export
	  
//	  .noise_export       (noise_nios[15:0]),       //       noise.export
//     .noise_en_export    (noise_en),    //    noise_en.export
//     .sel_nota_export    (sel_nota[9:0]),    //    sel_nota.export
//     .noise_pulse_export (noise_pulse)  // noise_pulse.export
 );

// karplus_strong_nios karplus_strong_nios_inst
//(
//	.clk() ,	// input  clk_sig
//	.noise() ,	// input [15:0] noise_sig
//	.noise_en() ,	// input  noise_en_sig
//	.sel_nota() ,	// input [9:0] sel_nota_sig
//	.noise_pulse() ,	// input  noise_pulse_sig
//	.div_freq_in() ,	// input [31:0] div_freq_in_sig
//	.sync_guitar() 	// output [15:0] sync_guitar_sig
//);

 
// div_freq div_freq_inst
//(
//	.clk(FPGA_CLK1_50) ,	// input  clk_sig
//	.in(nota[31:0]) ,	// input [31:0] in_sig
//	.div(GPIO_0[3]) 	// output  div_sig
//);
// 
//dac_nano dac_nano_inst
//(
//	.DACout(GPIO_0[4]) ,	// output  DACout_sig
//	.DACin({~nota[15],nota[14:0]}) ,	// input [16:0] DACin_sig
//	.Clk(FPGA_CLK1_50) ,	// input  Clk_sig
//	.Reset(1'b0) 	// input  Reset_sig
//); 


endmodule
