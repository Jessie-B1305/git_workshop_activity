module top_level (
	/* Add your inputs here */
	
	// Clock
	input CLOCK_50,
	
	// Keys
	input [1:0] KEY,
		
	// Leds
	output [8:0] LED, // not sure if I have right allocations
	
	// Switches
	input [8:0] SW // not sure if I have right allocations
);

    nios_system u0 (
        .clk_clk       (CLOCK_50), /* Connect the clock */      
        .reset_reset_n (KEY[0]), /* Connect a Key for reset */
        .ledr_export   (LED[8:0]), /* Connect all LEDs */  
        .sw_export     (SW[8:0])  /* Connect all Switches */    
    );

	 
endmodule