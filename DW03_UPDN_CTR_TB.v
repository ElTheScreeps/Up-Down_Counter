module DW03_UPDN_CTR_TB();

parameter width = 4;

reg              clk;
reg              rst;
reg              load;
reg              cen;
reg 	         up_dn;
reg  [width-1:0] data;

wire 	         tercnt;
wire [width-1:0] count;

always #5 clk = ~clk; 

initial begin
clk   	 = 0;
rst 	 = 1;
load  	 = 1;
cen   	 = 0;
up_dn 	 = 1;
data 	 = 4'b0111;
repeat(1) @(posedge clk);
rst 	 = 0;
repeat(1) @(posedge clk);
rst 	 = 1;
load  	 = 0;
repeat(5) @(posedge clk);
cen   	 = 1;
load     = 1;
repeat(15) @(posedge clk);
up_dn    = 0;
repeat(15) @(posedge clk);
up_dn    = 1;
load     = 0;
repeat(15) @(posedge clk);
end

DW03_UPDN_CTR #(width) T (.data, .up_dn, .load, .cen, .clk, .rst, .count, .tercnt);

endmodule
