Up Down Counter (DW03_updn_ctr):

Description:

- DW03_updn_ctr is a general-purpose binary up-down counter. The counter iswidth bits wide and has 2width states from “000...000” to “111...111”, depending on the specified width. The counter is clocked on the positive edge of the clk input.
- reset, active low, provides for an asynchronous reset of the counter to “000...0”. If the reset pin is connected to ‘1’, then the reset logic is not synthesized, resulting in a smaller and faster counter.
- The up_dn input controls whether the counter counts up (up_dn is HIGH) or down (up_dn is LOW), starting on the next clk cycle.
-The counter is loaded with data by asserting load (LOW) and applying data on the data input. The data load operation is synchronous with respect to the positive edge of clk.
- The count enable pin, cen, is active high. When cen is HIGH, the counter is active. When cen is LOW, the counter is disabled and countremains at the same value.
- tercnt is an output port. When counting up, tercnt is HIGH at count = “111....111”. When counting down, tercnt is HIGH at count = “000....000”.
