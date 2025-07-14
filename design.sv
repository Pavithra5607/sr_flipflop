module sr_flipflop (input clk,
                    input reset,
                    input S,
                    input R,
                    output reg Q,
                    output reg Qbar);
  always @(posedge clk or posedge reset) begin
    if (reset) begin
      Q <= 0;
      Qbar <= 1;
    end
    else begin
      case ({S, R})
        2'b00: ;
        2'b01: begin Q <= 0; Qbar <= 1; end
        2'b10: begin Q <= 1; Qbar <= 0; end
        2'b11: begin Q <= 1'bx; Qbar <= 1'bx; end
          endcase
        end
        end
        endmodule
          