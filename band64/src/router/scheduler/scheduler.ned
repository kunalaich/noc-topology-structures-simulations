//
// This program is property of its copyright holder. All rights reserved.
// 

package band64.src.router.scheduler;
simple scheduler like band64.src.router.scheduler.scheduler_Ifc
 {
     parameters:
          @display("i=block/queue");
        
     gates:
        inout scinport_in;
            inout scinport_out;
            inout sc_in;
            inout sc_out;
            inout scctrl_in [4];
            inout scctrl_out [4];
 }