//
// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU Lesser General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
// 
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU Lesser General Public License for more details.
// 
// You should have received a copy of the GNU Lesser General Public License
// along with this program.  If not, see http://www.gnu.org/licenses/.
// 

package band64.src.router;



channel RLink5 extends ned.DatarateChannel
{
    datarate = 512Gbps;
}
module router5 like router5_Ifc
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
         port[i].portinterin[j] <--> RLink5 <--> port[j].portinterout[i];  // port 0 gate 1 to port 1 gate 0, for i=0
          port[i].portinterout[j] <--> RLink5 <--> port[j].portinterin[i];
	   }                     
}
            