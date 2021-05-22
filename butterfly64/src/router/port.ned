// This program is property of its copyright holder. All rights reserved.
//
package butterfly64.src.router;

import butterfly64.src.router.scheduler.scheduler;
module port like port_Ifc
{
    parameters:
     
        string schedulerType;
        string vccalType;
        int noports= default(4);
        @display("i=block/broadcast");
         gates:
        inout in;
        inout out;
        inout portinterin[4];
        inout portinterout[4];

    submodules:
        
        scheduler: <schedulerType> like butterfly64.src.router.scheduler.scheduler_Ifc {
            @display("p=173,143");
              gates:
                
            sc_in;
            sc_out;
            scctrl_in [4];
             scctrl_out [4];
        
        }
       
        
connections allowunconnected:
   
        scheduler.sc_in <--> in;
        scheduler.sc_out <--> out;
         for i=0..noports-1 {
            scheduler.scctrl_in[i] <--> portinterin[i];
            scheduler.scctrl_out[i] <--> portinterout[i];
}
}
