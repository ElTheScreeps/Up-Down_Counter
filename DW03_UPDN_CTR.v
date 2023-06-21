module DW03_UPDN_CTR( data, up_dn, load, cen, clk, reset, count, tercnt );

parameter width = 4;

input  [width-1:0] data;
input 	           up_dn;
input 	           load;
input 	           cen;
input  	           clk;
input 	           reset;
output [width-1:0] count;
output 	           tercnt;

reg    [width-1:0] count_intern;

always @(posedge(clk) or negedge(reset))
begin
	if (~reset) count_intern <= 'b0;
	else if (reset & load == 0) count_intern <= data;
	else if (cen == 0 & load == 1) count_intern <= count_intern;
	else if (cen == 1 & load == 1)
	begin
		if (up_dn) count_intern <= count_intern + 1;
		else count_intern <= count_intern - 1;
	end
end

assign count = count_intern;

assign tercnt = (count_intern == 4'b1111) ? 1 : 0;

endmodule
