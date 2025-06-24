Question_1. "Analize the real time report.Did something change? Do you understand the mean of the reported values?"

The first setting of the clock was -period 2 CLK.
Below we we can see the time reporting:
 clock CLK (rise edge)                    2.00       2.00
  clock network delay (ideal)              0.00       2.00
  out1_signal_reg[0]/CK (DFF_X1)           0.00       2.00 r
  library setup time                      -0.04       1.96
  data required time                                  1.96
  -----------------------------------------------------------
  data required time                                  1.96
  data arrival time                                  -0.41
  -----------------------------------------------------------
  slack (MET)                                         1.54

We should focus our attention on the slack, which is 1.54 in our case. The slack is positive, that means that we don't have any type of timing violation.

I've set then the clock to -period 1.
This is the result:

  data required time                                  0.96
  data arrival time                                  -0.41
  -----------------------------------------------------------
  slack (MET)                                         0.54

We can say that even with a time constraint which is the half of the previous one, the slack is still positive. I can try then again to improve the timing constraints. Let's choose now the value: 0.6.

  -----------------------------------------------------------
  data required time                                  0.56
  data arrival time                                  -0.41
  -----------------------------------------------------------
  slack (MET)                                         0.14

The slack is about 0 now. We can say that we can stop here the optimization escalations.


Question_2.  "Consider again Figure 3.2, what happens to the combinational paths between the inputs INs and the first stage of registers (paths in Block 1), or between the output OUTs (paths in block 3)?"

Let's consider the input of the first FF, at this input we have a path composed by 3+2+1. This combinatorial delay should not impact the input of this first FF. In brief, we have to guarantee that this signal is stable at the rising edge of clock. In summary, the propagation time of 3+2+2, the setup time and the hold time together should have a value lower than the overall clock period.

I've inserted the following command: set_max_delay 2 -from [all_input] -to [all_outputs].

I've compiled again. The timing report is the following:

  -----------------------------------------------------------
  data required time                                  0.56
  data arrival time                                  -0.41
  -----------------------------------------------------------
  slack (MET)                                         0.14
In brief, this command allowed me to perform automatically the optimization escalation performed before.





AREA OF THE NON-OPTIMIZED VERSION:


Number of ports:                          213
Number of nets:                         14061
Number of cells:                        11928
Number of combinational cells:           9752
Number of sequential cells:              2176
Number of macros/black boxes:               0
Number of buf/inv:                        299
Number of references:                      19

Combinational area:               9922.066057
Buf/Inv area:                      222.642004
Noncombinational area:            9839.871643
Macro/Black Box area:                0.000000
Net Interconnect area:      undefined  (Wire load has zero net area)

Total cell area:                 19761.937700

AREA OF THE OPTIMIZED VERSION:
Report : area
Design : register_file
Version: S-2021.06-SP4
Date   : Thu Apr 24 19:20:54 2025
****************************************



Number of ports:                          213
Number of nets:                          9818
Number of cells:                         7557
Number of combinational cells:           5381
Number of sequential cells:              2176
Number of macros/black boxes:               0
Number of buf/inv:                        280
Number of references:                      16

Combinational area:               6932.492204
Buf/Inv area:                      267.596000
Noncombinational area:            9839.871643
Macro/Black Box area:                0.000000
Net Interconnect area:      undefined  (Wire load has zero net area)

Total cell area:                 16772.363847
