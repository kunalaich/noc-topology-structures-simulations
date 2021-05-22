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

package band32.src.topology;
import band32.src.core.client;
import band32.src.router.router;
import band32.src.router.router1;
import band32.src.router.router2;
import band32.src.router.router3;
import band32.src.router.router4;


channel Link extends ned.DatarateChannel    // stating the link
{
    datarate = 16Gbps;
}

channel Link1 extends ned.DatarateChannel    // stating the link
{
    datarate = 32Gbps;
}

channel Link2 extends ned.DatarateChannel    // stating the link
{
    datarate = 64Gbps;
}

channel Link3 extends ned.DatarateChannel    // stating the link
{
    datarate =128Gbps;
}

channel Link4 extends ned.DatarateChannel    // stating the link
{
    datarate = 256Gbps;
}
network band32
{
    parameters:

        //    string routerType;  // specify router type
        //   string clientType;  // specify client type
      	    // number of rows  
        int totalclients = default(32);


        @display("bgb=1208,455");
    submodules:
        router0: router {
            parameters:
                noports = default(4);  // router has 4 ports
                id = 0;
                   // id of the router is the index

                @display("p=38,358");
            gates:

                in[5];   // in gate of router
                out[5];   // outgate of router           
        }
        router1: router {
            parameters:
                noports = default(4);  // router has 4 ports
                id = 1;
                   // id of the router is the index

                @display("p=114,358");
            gates:

                in[5];   // in gate of router
                out[5];   // outgate of router           
        }

        router2: router {
            parameters:
                noports = default(4);  // router has 4 ports
                id = 2;
                   // id of the router is the index

                @display("p=188,358");
            gates:

                in[5];   // in gate of router
                out[5];   // outgate of router           
        }
        router3: router {
            parameters:
                noports = default(4);  // router has 4 ports
                id = 3;
                   // id of the router is the index

                @display("p=259,358");
            gates:

                in[5];   // in gate of router
                out[5];   // outgate of router           
        }

        router4: router {
            parameters:
                noports = default(4);  // router has 4 ports
                id = 4;
                   // id of the router is the index

                @display("p=386,358");
            gates:

                in[5];   // in gate of router
                out[5];   // outgate of router 
        }
        router5: router {
            parameters:
                noports = default(4);  // router has 4 ports
                id = 5;
                   // id of the router is the index

                @display("p=453,358");
            gates:

                in[5];   // in gate of router
                out[5];   // outgate of router 
        }
        router6: router {
            parameters:
                noports = default(4);  // router has 4 ports
                id = 6;
                   // id of the router is the index

                @display("p=527,358");
            gates:

                in[5];   // in gate of router
                out[5];   // outgate of router
        }
        router7: router {
            parameters:
                noports = default(4);  // router has 4 ports
                id = 7;
                   // id of the router is the index

                @display("p=596,358");
            gates:

                in[5];   // in gate of router
                out[5];   // outgate of router
        }
        router8: router {
            parameters:
                noports = default(4);  // router has 4 ports
                id = 8;
                   // id of the router is the index

                @display("p=691,358");
            gates:

                in[5];   // in gate of router
                out[5];   // outgate of router
        }
        router9: router {
            parameters:
                noports = default(4);  // router has 4 ports
                id = 9;
                   // id of the router is the index

                @display("p=750,358");
            gates:

                in[5];   // in gate of router
                out[5];   // outgate of router
        }
        router10: router {
            parameters:
                noports = default(4);  // router has 4 ports
                id = 10;
                   // id of the router is the index

                @display("p=822,358");
            gates:

                in[5];   // in gate of router
                out[5];   // outgate of router
        }
        router11: router {
            parameters:
                noports = default(4);  // router has 4 ports
                id = 11;
                   // id of the router is the index

                @display("p=882,358");
            gates:

                in[5];   // in gate of router
                out[5];   // outgate of router
        }
        router12: router {
            parameters:
                noports = default(4);  // router has 4 ports
                id = 12;
                   // id of the router is the index

                @display("p=964,358");
            gates:

                in[5];   // in gate of router
                out[5];   // outgate of router
        }
        router13: router {
            parameters:
                noports = default(4);  // router has 4 ports
                id = 13;
                   // id of the router is the index

                @display("p=1025,358");
            gates:

                in[5];   // in gate of router
                out[5];   // outgate of router
        }
        router14: router {
            parameters:
                noports = default(4);  // router has 4 ports
                id = 14;
                   // id of the router is the index

                @display("p=1097,358");
            gates:

                in[5];   // in gate of router
                out[5];   // outgate of router
        }
        router15: router {
            parameters:
                noports = default(4);  // router has 4 ports
                id = 15;
                   // id of the router is the index

                @display("p=1157,358");
            gates:

                in[5];   // in gate of router
                out[5];   // outgate of router
        }
        router16: router1 {
            parameters:
                noports = default(4);  // router has 4 ports
                id = 16;
                   // id of the router is the index

                @display("p=75,271");
            gates:

                in[5];   // in gate of router
                out[5];   // outgate of router
        }
        router17: router1 {
            parameters:
                noports = default(4);  // router has 4 ports
                id = 17;
                   // id of the router is the index

                @display("p=220,259");
            gates:

                in[5];   // in gate of router
                out[5];   // outgate of router
        }
        router18: router1 {
            parameters:
                noports = default(4);  // router has 4 ports
                id = 18;
                   // id of the router is the index

                @display("p=432,272");
            gates:

                in[5];   // in gate of router
                out[5];   // outgate of router
        }
        router19: router1 {
            parameters:
                noports = default(4);  // router has 4 ports
                id = 19;
                   // id of the router is the index

                @display("p=555,265");
            gates:

                in[5];   // in gate of router
                out[5];   // outgate of router
        }
        router20: router1 {
            parameters:
                noports = default(4);  // router has 4 ports
                id = 20;
                   // id of the router is the index
            
            @display("p=720,283");
            gates:

                in[5];   // in gate of router
                out[5]; 
        }
        router21: router1 {
            parameters:
                noports = default(4);  // router has 4 ports
                id = 21;
                   // id of the router is the index
            
            @display("p=845,281");
            gates:

                in[5];   // in gate of router
                out[5]; 
        }
        router22: router1 {
            parameters:
                noports = default(4);  // router has 4 ports
                id = 22;
                   // id of the router is the index
            
            @display("p=992,279");
            gates:

                in[5];   // in gate of router
                out[5]; 
        }
        router23: router1 {
            parameters:
                noports = default(4);  // router has 4 ports
                id = 23;
                   // id of the router is the index
            
            @display("p=1124,284");
            gates:

                in[5];   // in gate of router
                out[5]; 
        }
        router24: router2 {
            parameters:
                noports = default(4);  // router has 4 ports
                id = 24;
                   // id of the router is the index
            
            @display("p=148,158");
            gates:

                in[5];   // in gate of router
                out[5]; 
        }
        router25: router2 {
            parameters:
                noports = default(4);  // router has 4 ports
                id = 25;
                   // id of the router is the index
            
            @display("p=495,158");
            gates:

                in[5];   // in gate of router
                out[5]; 
        }
        router26: router2 {
            parameters:
                noports = default(4);  // router has 4 ports
                id = 26;
                   // id of the router is the index
            
            @display("p=773,166");
            gates:

                in[5];   // in gate of router
                out[5]; 
        }
        router27: router2 {
            parameters:
                noports = default(4);  // router has 4 ports
                id = 27;
                   // id of the router is the index
            
            @display("p=1060,190");
            gates:

                in[5];   // in gate of router
                out[5]; 
        }
        router28: router3 {
            parameters:
                noports = default(4);  // router has 4 ports
                id = 28;
                   // id of the router is the index
            
            @display("p=323,106");
            gates:

                in[5];   // in gate of router
                out[5]; 
        }
        router29: router3 {
            parameters:
                noports = default(4);  // router has 4 ports
                id = 29;
                   // id of the router is the index
            
            @display("p=905,92");
            gates:

                in[5];   // in gate of router
                out[5]; 
        }
        router30: router4 {
            parameters:
                noports = default(4);  // router has 4 ports
                id = 30;
                   // id of the router is the index
            
            @display("p=639,55");
            gates:

                in[5];   // in gate of router
                out[5]; 
        }
        client0: client {
            parameters:
                srcId = 0;
                @display("p=13,427");

            gates:
                clientin;  // gate to sink 
                clientout;   // gate from source
        }
        client1: client {
            parameters:
                srcId = 1;
                @display("p=59,421");

            gates:
                clientin;  // gate to sink 
                clientout;   // gate from source
        }
        client2: client {
            parameters:
                srcId = 2;
                @display("p=108,427");

            gates:
                clientin;  // gate to sink 
                clientout;   // gate from source
        }
        client3: client {
            parameters:
                srcId = 3;
                @display("p=147,427");

            gates:
                clientin;  // gate to sink 
                clientout;   // gate from source
        }
        client4: client {
            parameters:
                srcId = 4;
                @display("p=201,427");

            gates:
                clientin;  // gate to sink 
                clientout;   // gate from source
        }
        client5: client {
            parameters:
                srcId = 5;
                @display("p=238,427");

            gates:
                clientin;  // gate to sink 
                clientout;   // gate from source
        }
        client6: client {
            parameters:
                srcId = 6;
                @display("p=277,427");

            gates:
                clientin;  // gate to sink 
                clientout;   // gate from source
        }
        client7: client {
            parameters:
                srcId = 7;
                @display("p=316,421");

            gates:
                clientin;  // gate to sink 
                clientout;   // gate from source
        }
        client8: client {
            parameters:
                srcId = 8;
                @display("p=374,427");

            gates:
                clientin;  // gate to sink 
                clientout;   // gate from source
        }
        client9: client {
            parameters:
                srcId = 9;
                @display("p=419,427");

            gates:
                clientin;  // gate to sink 
                clientout;   // gate from source
        }
        client10: client {
            parameters:
                srcId = 10;
                @display("p=452,427");

            gates:
                clientin;  // gate to sink 
                clientout;   // gate from source
        }
        client11: client {
            parameters:
                srcId = 11;
                @display("p=488,427");

            gates:
                clientin;  // gate to sink 
                clientout;   // gate from source
        }
        client12: client {
            parameters:
                srcId = 12;
                @display("p=526,427");

            gates:
                clientin;  // gate to sink 
                clientout;   // gate from source
        }
        client13: client {
            parameters:
                srcId = 13;
                @display("p=562,427");

            gates:
                clientin;  // gate to sink 
                clientout;   // gate from source
        }
        client14: client {
            parameters:
                srcId = 14;
                @display("p=595,427");

            gates:
                clientin;  // gate to sink 
                clientout;   // gate from source
        }
        client15: client {
            parameters:
                srcId = 15;
                @display("p=629,421");

            gates:
                clientin;  // gate to sink 
                clientout;   // gate from source
        }
        client16: client {
            parameters:
                srcId = 16;
                @display("p=675,421");

            gates:
                clientin;  // gate to sink 
                clientout;   // gate from source
        }
        client17: client {
            parameters:
                srcId = 17;
                @display("p=709,421");

            gates:
                clientin;  // gate to sink 
                clientout;   // gate from source
        }
        client18: client {
            parameters:
                srcId = 18;
                @display("p=742,421");

            gates:
                clientin;  // gate to sink 
                clientout;   // gate from source
        }
        client19: client {
            parameters:
                srcId = 19;
                @display("p=776,427");

            gates:
                clientin;  // gate to sink 
                clientout;   // gate from source
        }
        client20: client {
            parameters:
                srcId = 20;
                @display("p=813,421");

            gates:
                clientin;  // gate to sink 
                clientout;   // gate from source
        }
        client21: client {
            parameters:
                srcId = 21;
                @display("p=855,421");

            gates:
                clientin;  // gate to sink 
                clientout;   // gate from source
        }
        client22: client {
            parameters:
                srcId = 22;
                @display("p=888,421");

            gates:
                clientin;  // gate to sink 
                clientout;   // gate from source
        }
        client23: client {
            parameters:
                srcId = 23;
                @display("p=922,421");

            gates:
                clientin;  // gate to sink 
                clientout;   // gate from source
        }
        client24: client {
            parameters:
                srcId = 24;
                @display("p=963,421");

            gates:
                clientin;  // gate to sink 
                clientout;   // gate from source
        }
        client25: client {
            parameters:
                srcId = 25;
                @display("p=997,427");

            gates:
                clientin;  // gate to sink 
                clientout;   // gate from source
        }
        client26: client {
            parameters:
                srcId = 26;
                @display("p=1024,427");

            gates:
                clientin;  // gate to sink 
                clientout;   // gate from source
        }
        client27: client {
            parameters:
                srcId = 27;
                @display("p=1052,421");

            gates:
                clientin;  // gate to sink 
                clientout;   // gate from source
        }
        client28: client {
            parameters:
                srcId = 28;
                @display("p=1096,427");

            gates:
                clientin;  // gate to sink 
                clientout;   // gate from source
        }
        client29: client {
            parameters:
                srcId = 29;
                @display("p=1124,421");

            gates:
                clientin;  // gate to sink 
                clientout;   // gate from source
        }
        client30: client {
            parameters:
                srcId = 30;
                @display("p=1156,421");

            gates:
                clientin;  // gate to sink 
                clientout;   // gate from source
        }
        client31: client {
            parameters:
                srcId = 31;
                @display("p=1190,421");

            gates:
                clientin;  // gate to sink 
                clientout;   // gate from source
        }
        
    connections allowunconnected:
 {
     
            router0.out[0] <--> Link <--> client0.clientin;  // 
            router0.in[0] <--> Link <--> client0.clientout; // 
            router0.out[1] <--> Link <--> client1.clientin;
            router0.in[1] <--> Link <--> client1.clientout;
            router1.out[0] <--> Link <--> client2.clientin;
            router1.in[0] <--> Link <--> client2.clientout;
            router1.out[1] <--> Link <--> client3.clientin;
            router1.in[1] <--> Link <--> client3.clientout;
            router2.out[0] <--> Link <--> client4.clientin;
            router2.in[0] <--> Link <--> client4.clientout;
            router2.out[1] <--> Link <--> client5.clientin;
            router2.in[1] <--> Link <--> client5.clientout;
            router3.out[0] <--> Link <--> client6.clientin;
            router3.in[0] <--> Link <--> client6.clientout;
            router3.out[1] <--> Link <--> client7.clientin;
            router3.in[1] <--> Link <--> client7.clientout;
            router4.out[0] <--> Link <--> client8.clientin;
            router4.in[0] <--> Link <--> client8.clientout;
            router4.out[1] <--> Link <--> client9.clientin;
            router4.in[1] <--> Link <--> client9.clientout;
            router5.out[0] <--> Link <--> client10.clientin;
            router5.in[0] <--> Link <--> client10.clientout;
            router5.out[1] <--> Link <--> client11.clientin;
            router5.in[1] <--> Link <--> client11.clientout;
            router6.in[0] <--> Link <--> client12.clientout;
            router6.out[1] <--> Link <--> client12.clientin;
            router6.in[1] <--> Link <--> client13.clientout;
            router6.out[0] <--> Link <--> client13.clientin;
            router7.in[0] <--> Link <--> client14.clientout;
            router7.out[1] <--> Link <--> client14.clientin;
            router7.out[0] <--> Link <--> client15.clientin;
            router7.in[1] <--> Link <--> client15.clientout;
            router8.out[0] <--> Link <--> client16.clientin;
            router8.in[0] <--> Link <--> client16.clientout;
            router8.out[1] <--> Link <--> client17.clientin;
            router8.in[1] <--> Link <--> client17.clientout;
            router9.out[0] <--> Link <--> client18.clientin;
            router9.in[0] <--> Link <--> client18.clientout;
            router9.out[1] <--> Link <--> client19.clientin;
            router9.in[1] <--> Link <--> client19.clientout;
            router10.out[0] <--> Link <--> client20.clientin;
            router10.in[0] <--> Link <--> client20.clientout;
            router10.out[1] <--> Link <--> client21.clientin;
            router10.in[1] <--> Link <--> client21.clientout;
            router11.out[0] <--> Link <--> client22.clientin;
            router11.in[0] <--> Link <--> client22.clientout;
            router11.out[1] <--> Link <--> client23.clientin;
            router11.in[1] <--> Link <--> client23.clientout;
            router12.out[0] <--> Link <--> client24.clientin;
            router12.in[0] <--> Link <--> client24.clientout;
            router12.out[1] <--> Link <--> client25.clientin;
            router12.in[1] <--> Link <--> client25.clientout;
            router13.out[0] <--> Link <--> client26.clientin;
            router13.in[0] <--> Link <--> client26.clientout;
            router13.out[1] <--> Link <--> client27.clientin;
            router13.in[1] <--> Link <--> client27.clientout;
            router14.out[0] <--> Link <--> client28.clientin;
            router14.in[0] <--> Link <--> client28.clientout;
            router14.out[1] <--> Link <--> client29.clientin;
            router14.in[1] <--> Link <--> client29.clientout;
            router15.out[0] <--> Link <--> client30.clientin;
            router15.in[0] <--> Link <--> client30.clientout;
            router15.out[1] <--> Link <--> client31.clientin;
            router15.in[1] <--> Link <--> client31.clientout;
     
            
            router0.in[2] <--> Link1 <--> router16.out[0];
            router0.out[2] <--> Link1 <--> router16.in[0];
            router1.in[2] <--> Link1 <--> router16.out[1];
            router1.out[2] <--> Link1 <--> router16.in[1];
            
            router2.in[2] <--> Link1 <--> router17.out[0];
            router2.out[2] <--> Link1 <--> router17.in[0];
            router3.in[2] <--> Link1 <--> router17.out[1];
            router3.out[2] <--> Link1 <--> router17.in[1];
            
            router4.in[2] <--> Link1 <--> router18.out[0];
            router4.out[2] <--> Link1 <--> router18.in[0];
            router5.in[2] <--> Link1 <--> router18.out[1];
            router5.out[2] <--> Link1 <--> router18.in[1];

            router6.in[2] <--> Link1 <--> router19.out[0];
            router6.out[2] <--> Link1 <--> router19.in[0];
             router7.in[2] <--> Link1 <--> router19.out[1];
            router7.out[2] <--> Link1 <--> router19.in[1];
            
            router8.in[2] <--> Link1 <--> router20.out[0];
            router8.out[2] <--> Link1 <--> router20.in[0];
            router9.in[2] <--> Link1 <--> router20.out[1];
            router9.out[2] <--> Link1 <--> router20.in[1];
            
            router10.in[2] <--> Link1 <--> router21.out[0];
            router10.out[2] <--> Link1 <--> router21.in[0];
            router11.in[2] <--> Link1 <--> router21.out[1];
            router11.out[2] <--> Link1 <--> router21.in[1];
            
            router12.in[2] <--> Link1 <--> router22.out[0];
            router12.out[2] <--> Link1 <--> router22.in[0];
            router13.in[2] <--> Link1 <--> router22.out[1];
            router13.out[2] <--> Link1 <--> router22.in[1];
            
            router14.in[2] <--> Link1 <--> router23.out[0];
            router14.out[2] <--> Link1 <--> router23.in[0];
            router15.in[2] <--> Link1 <--> router23.out[1];
            router15.out[2] <--> Link1 <--> router23.in[1];
            
            
            router16.in[2] <--> Link2 <--> router24.out[0];
            router16.out[2] <--> Link2 <--> router24.in[0];
            router17.in[2] <--> Link2 <--> router24.out[1];
            router17.out[2] <--> Link2 <--> router24.in[1];
            
            
            router18.in[2] <--> Link2 <--> router25.out[0];
            router18.out[2] <--> Link2 <--> router25.in[0];
            router19.in[2] <--> Link2 <--> router25.out[1];
            router19.out[2] <--> Link2 <--> router25.in[1];
            
            router20.in[2] <--> Link2 <--> router26.out[0];
            router20.out[2] <--> Link2 <--> router26.in[0];
            router21.in[2] <--> Link2 <--> router26.out[1];
            router21.out[2] <--> Link2 <--> router26.in[1];
            
            
            router22.in[2] <--> Link2 <--> router27.out[0];
            router22.out[2] <--> Link2 <--> router27.in[0];
            router23.in[2] <--> Link2 <--> router27.out[1];
            router23.out[2] <--> Link2 <--> router27.in[1];
            
            router24.in[2] <--> Link3 <--> router28.out[0];
            router24.out[2] <--> Link3 <--> router28.in[0];
            router25.in[2] <--> Link3 <--> router28.out[1];
            router25.out[2] <--> Link3 <--> router28.in[1];
            
            
            router26.in[2] <--> Link3 <--> router29.out[0];
            router26.out[2] <--> Link3 <--> router29.in[0];
            router27.in[2] <--> Link3 <--> router29.out[1];
            router27.out[2] <--> Link3 <--> router29.in[1];
            
            router28.in[2] <--> Link4 <--> router30.out[0];
            router28.out[2] <--> Link4 <--> router30.in[0];
            router29.in[2] <--> Link4 <--> router30.out[1];
            router29.out[2] <--> Link4 <--> router30.in[1]; 
            
            
            


            

           
            




        }





}
