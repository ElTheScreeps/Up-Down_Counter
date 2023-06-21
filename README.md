Up/Down counter (DW03_updn_ctr):

![image](https://user-images.githubusercontent.com/115155585/197960770-8627e1b6-7bf6-42ba-9ffa-1e9a83050c93.png)


Description:

- DW03_updn_ctr is a general-purpose binary up-down counter. The counter iswidth bits wide and has 2width states from “000...000” to “111...111”, depending on the specified width. The counter is clocked on the positive edge of the clk input.
- reset, active low, provides for an asynchronous reset of the counter to “000...0”. If the reset pin is connected to ‘1’, then the reset logic is not synthesized, resulting in a smaller and faster counter.
- The up_dn input controls whether the counter counts up (up_dn is HIGH) or down (up_dn is LOW), starting on the next clk cycle.
-The counter is loaded with data by asserting load (LOW) and applying data on the data input. The data load operation is synchronous with respect to the positive edge of clk.
- The count enable pin, cen, is active high. When cen is HIGH, the counter is active. When cen is LOW, the counter is disabled and countremains at the same value.
- tercnt is an output port. When counting up, tercnt is HIGH at count = “111....111”. When counting down, tercnt is HIGH at count = “000....000”.

Table 1 - pin description:

| Pin Name | Size | Type | Function                                       |
|  :---:   |:---: |:---: |    :---:                                       |
| up_dn    | 1    | Input| Count up (up_dn = 1) or count down (up_dn = 0) |
| load     | 1    | Input| Counter load enable, active low                |
| data     | width| Input| Input data bus                                 |
| cen      | 1    | Input| Counter enable, active high                    |
| clk      | 1    | Input| Clock                                          |
| reset    | 1    | Input| Asynchronous counter reset, active low         |
| count    | width| Output| Output count bus                              |
| tercnt   | 1    | Output| Terminal count flag                           |



Table 2 - counter operation truth table:

| reset | load | cen | up_dn | Operation |
| :---: |:---: |:---:| :---: |   :---:   |
| 0     | X    | X   | X     | Reset     |
| 1     | 0    | X   | X     | Load      |
| 1     | 1    | 0   | X     | Standby   |
| 1     | 1    | 1   | 0     | Count down|
| 1     | 1    | 1   | 1     | Count up  |



How to use this files:

1. Downlaod the files;
2. Put them in a directory;
3. Open Modelsim;
4. Change directory to the directory who contain the files;
5. Create a project and add the files;
6. Compile the files and start stimulate.
