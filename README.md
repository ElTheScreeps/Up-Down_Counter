Up/Down counter (DW03_updn_ctr):

![image](https://user-images.githubusercontent.com/115155585/197960631-fc250502-2e6f-4d8c-a4ab-262cc5a678c2.png)


Description:

- DW03_updn_ctr is a general-purpose binary up-down counter. The counter iswidth bits wide and has 2width states from “000...000” to “111...111”, depending on the specified width. The counter is clocked on the positive edge of the clk input.
- reset, active low, provides for an asynchronous reset of the counter to “000...0”. If the reset pin is connected to ‘1’, then the reset logic is not synthesized, resulting in a smaller and faster counter.
- The up_dn input controls whether the counter counts up (up_dn is HIGH) or down (up_dn is LOW), starting on the next clk cycle.
-The counter is loaded with data by asserting load (LOW) and applying data on the data input. The data load operation is synchronous with respect to the positive edge of clk.
- The count enable pin, cen, is active high. When cen is HIGH, the counter is active. When cen is LOW, the counter is disabled and countremains at the same value.
- tercnt is an output port. When counting up, tercnt is HIGH at count = “111....111”. When counting down, tercnt is HIGH at count = “000....000”.

Table 1 - pin description:

![image](https://user-images.githubusercontent.com/115155585/197960342-8d0f2d0a-7c66-4d58-86cd-e6537d9fa4aa.png)


Table 2 - counter operation truth table:

![image](https://user-images.githubusercontent.com/115155585/197960432-77c0b99a-0b22-476e-ab75-58fcfcdd8b79.png)


How to use this files:

1. Downlaod the files;
2. Put them in a directory;
3. Open Modelsim;
4. Change directory to the directory who contain the files;
5. Create a project and add the files;
6. Compile the files and start stimulate.
