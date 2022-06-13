module PRPG_tb;
reg rst;      
wire [3:1] out; 
 
reg clk = 1'b0;         
always #5 clk = !clk;   

initial begin
    #0  rst=1'b1;
    #14 rst=1'b0;
    #195 $finish;
end

PRPG PRPG_tb(.clk(clk), .rst(rst), .out(out));

initial begin
    $dumpfile("PRPG.vcd");
    $dumpvars(0, PRPG_tb);
end
endmodule
