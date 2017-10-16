/*
   This file was generated automatically by the Mojo IDE version B1.3.6.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module comparator_4 (
    input z,
    input v,
    input n,
    input [1:0] alufn,
    output reg [7:0] op
  );
  
  
  
  reg result;
  
  always @* begin
    op = 8'h00;
    
    case (alufn[0+1-:2])
      2'h1: begin
        result = z;
      end
      2'h2: begin
        result = n ^ v;
      end
      2'h3: begin
        result = z | (n ^ v);
      end
      default: begin
        result = 1'h0;
      end
    endcase
    op[0+0-:1] = result;
  end
endmodule
