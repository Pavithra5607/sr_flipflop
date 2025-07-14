module tb_sr_flipflop;
  reg clk, reset, S, R;
  wire Q, Qbar;
  
  sr_flipflop uut (.clk(clk), .reset(reset), .S(S), .R(R), .Q(Q), .Qbar(Qbar));
  
  always #5 clk = ~clk;
  
  initial begin
    $dumpfile("sr_flipflop.vcd");
    $dumpvars;
    $monitor("Time=%0t | S=%b R=%b | Q=%b Qbar=%b", $time, S, R, Q, Qbar);
    
    clk = 0; reset = 1; S = 0; R = 0; #10;
    reset = 0;
    
    S = 1; R = 0; #10;
        S = 0; R = 1; #10;
        S = 0; R = 0; #10;
        S = 1; R = 1; #10;
    $finish;
  end
endmodule