`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Matthew Lock, Lawrence Godfrey, Mahmoodah Jaffer
// 
// Create Date: 20.04.2020 14:19:53
// Design Name: 
// Module Name: waveformGen
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module waveform(
    input  CLK50MHZ,
    input [7:0] SW,
    input ARP_ON,
    output AUD_PWM, 
    output AUD_SD,
    output [2:0] LED
    );
       
   // waveform Function
   reg [10:0] PWM;        // PWM register
   reg [31:0] clkdiv = 0; // Clock divider
   reg [31:0] f_base;
   
   assign AUD_SD = 1'b1;  // Enable audio out
    
   
   // Instantiate the PWM module
   // PWM should take in the clock, the data from memory
   // PWM should output to AUD_PWM (or whatever the constraints file uses for the audio out.
   pwm_module pwm_mod (
     .clk(CLK50MHZ),
     .PWM_in(PWM),
     .PWM_out(AUD_PWM)
   );
   
   reg [12:0] clkdiv = 0;
   
   always @(posedge CLK50MHZ) begin   

        // Check for active switches and assign frequency
        casez (SW)
            8'b00000001: f_base <= 50000000 / 262;  // C4 (262 Hz)
            8'b00000010: f_base <= 50000000 / 294;  // D4 (294 Hz)
            8'b00000100: f_base <= 50000000 / 330;  // E4 (330 Hz)
            8'b00001000: f_base <= 50000000 / 349;  // F4 (349 Hz)
            8'b00010000: f_base <= 50000000 / 392;  // G4 (392 Hz)
            8'b00100000: f_base <= 50000000 / 440;  // A4 (440 Hz)
            8'b01000000: f_base <= 50000000 / 494;  // B4 (494 Hz)
            8'b10000000: f_base <= 50000000 / 523;  // C5 (523 Hz)
            default: f_base <= 0;                   // No switches active
        endcase
        
        // Update PWM only if a frequency is set
        if (f_base != 0) begin
            clkdiv <= clkdiv + 1;
            if (clkdiv >= f_base) begin
                clkdiv <= 0;
                PWM <= ~PWM; // Toggle PWM signal
            end
        end else begin
            PWM <= 0; // Disable PWM if no switch is active
        end
    end
endmodule