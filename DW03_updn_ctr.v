module DW03_updn_ctr( data, up_dn, load, cen, clk, reset, count, tercnt );

parameter width = 8;

input  [2:0]    data;
input 		up_dn;
input 		load;
input 		cen;
input 		clk;
input 	        reset;
output [2:0] 	count;
output 		tercnt;

reg    [2:0] count_intern;

always @(posedge(clk) or negedge(reset))
begin
	if (~reset) count_intern <= 'b0;
	else if (cen == 0) count_intern <= count_intern;
	else if (cen == 1)
	begin
		if (up_dn) count_intern <= count_intern +1;
		else count_intern <= count_intern - 1;
	end
end

assign count = count_intern;

assign tercnt = (count_intern == 3'b111) ? 1 : 0;

endmodule
