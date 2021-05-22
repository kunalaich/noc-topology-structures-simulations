//
// This program is property of its copyright holder. All rights reserved.
// 

package butterfly64.src.router.scheduler;
 moduleinterface scheduler_Ifc
{
     parameters:
       
        @display("i=block/queue");
        gates:
            
            inout sc_in;
            inout sc_out;
            inout scctrl_in [4];
            inout scctrl_out [4];
}