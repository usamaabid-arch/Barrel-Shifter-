`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Muhammad Usama Abid
// 
// Create Date: 02/15/2026 01:23:04 AM
// Design Name: Barrel Shifter 
// Module Name: barrel_shif
// Project Name: Barrel Shifter 


//////////////////////////////////////////////////////////////////////////////////


module barrel_shif( 
    input  logic [1:0] s,
    input  logic [3:0] w0,w1,w2,w3,
    output logic [3:0] Y [3:0]
);

always_comb begin
    case(s)
        2'b00: begin
            Y[0]=w0; Y[1]=w1; Y[2]=w2; Y[3]=w3;
        end
        2'b01: begin
            Y[0]=w1; Y[1]=w2; Y[2]=w3; Y[3]=w0;
        end
        2'b10: begin
            Y[0]=w2; Y[1]=w3; Y[2]=w0; Y[3]=w1;
        end
        2'b11: begin
            Y[0]=w3; Y[1]=w0; Y[2]=w1; Y[3]=w2;
        end
         default: begin
                   Y[0]=w0; Y[1]=w1; Y[2]=w2; Y[3]=w3;
               end
    endcase
end

endmodule
