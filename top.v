module top();

reg        clk;
reg        reset;
reg        load;
reg        cen;
reg 	    up_dn;
reg  [2:0] data;

wire 	     tercnt;
wire [2:0] count;

always #5 clk = ~clk; 

initial begin
clk   = 0;
reset = 1;
load  = 1;
cen   = 0;
up_dn = 1;
data  = 0;
repeat(5) @(posedge clk);
reset = 0;
repeat(5) @(posedge clk);
reset = 1;
load  = 0;
repeat(15) @(posedge clk);
load  = 1;
repeat(10) @(posedge clk);
cen   = 1;
repeat(30) @(posedge clk);
up_dn = 0;
repeat(10) @(posedge clk);
$stop;
end

DW03_updn_ctr U1 (.data(data), .up_dn(up_dn), .load(load), .cen(cen), .clk(clk), .reset(reset), .count(count), .tercnt(tercnt));

endmodule
