//
// This program is property of its copyright holder. All rights reserved.
// 

package band64.src.router;

channel RLink extends ned.DatarateChannel
{
    datarate = 16Gbps;
}
module router like router_Ifc
{
    parameters:
        string portType;
        int noports = default(4);
        int id;
        
        @display("i=abstract/router");
    gates:
        inout in[];
        inout out[];

    submodules:
        port[noports]: <portType> like band64.src.router.port_Ifc {
            @display("p=141,85");
            gates:
                in;    // link connceting external router
                out;
                 portinterin[4];
        portinterout[4];
        }
        connections allowunconnected:
           for i=0..noports -1 {
            port[i].in <--> in[i];   // port connected to router in
            port[i].out <--> out[i];  // port connected to router out
        }
		for i=0..noports - 1, for j=i+1..noports - 1{
         port[i].portinterin[j] <--> RLink <--> port[j].portinterout[i];  // port 0 gate 1 to port 1 gate 0, for i=0
          port[i].portinterout[j] <--> RLink <--> port[j].portinterin[i];
	   }                     
}

            