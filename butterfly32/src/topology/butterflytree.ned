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


package butterfly32.src.topology;



import butterfly32.src.core.clienti;
import butterfly32.src.core.cliento;
import butterfly32.src.router.router;




//
// TODO documentation
//
channel Link extends ned.DatarateChannel    // stating the link
{
    datarate = 16Gbps;
}

network butterflytree
{
    parameters:

        //    string routerType;  // specify router type
        //   string clientType;  // specify client type
    // number of rows  
        int totalclients = default(32);


        @display("bgb=1516,1017");
    submodules:
        router0: router {
            noports = default(4);  // router has 4 ports
            id = 0;
            @display("p=135,35");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router1: router {
            noports = default(4);  // router has 4 ports
            id = 1;
            @display("p=134,97");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router2: router {
            noports = default(4);  // router has 4 ports
            id = 2;
            @display("p=135,159;i=,#0080FF");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router3: router {
            noports = default(4);  // router has 4 ports
            id = 3;
            @display("p=134,219");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router4: router {
            noports = default(4);  // router has 4 ports
            id = 4;
            @display("p=135,285");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router5: router {
            noports = default(4);  // router has 4 ports
            id = 5;
            @display("p=135,344");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router6: router {
            noports = default(4);  // router has 4 ports
            id = 6;
            @display("p=133,401");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router7: router {
            noports = default(4);  // router has 4 ports
            id = 7;
            @display("p=132,466");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router8: router {
            noports = default(4);  // router has 4 ports
            id = 8;
            @display("p=132,527");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router9: router {
            noports = default(4);  // router has 4 ports
            id = 9;
            @display("p=132,588");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router10: router {
            noports = default(4);  // router has 4 ports
            id = 10;
            @display("p=132,642");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router11: router {
            noports = default(4);  // router has 4 ports
            id = 11;
            @display("p=132,708");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router12: router {
            noports = default(4);  // router has 4 ports
            id = 12;
            @display("p=132,782");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router13: router {
            noports = default(4);  // router has 4 ports
            id = 13;
            @display("p=134,852");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router14: router {
            noports = default(4);  // router has 4 ports
            id = 14;
            @display("p=135,917");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router15: router {
            noports = default(4);  // router has 4 ports
            id = 15;
            @display("p=135,976");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router16: router {
            noports = default(4);  // router has 4 ports
            id = 100;
            @display("p=282,35");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router17: router {
            noports = default(4);  // router has 4 ports
            id = 101;
            @display("p=282,97");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router18: router {
            noports = default(4);  // router has 4 ports
            id = 102;
            @display("p=282,159");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router19: router {
            noports = default(4);  // router has 4 ports
            id = 103;
            @display("p=282,219");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router20: router {
            noports = default(4);  // router has 4 ports
            id = 104;
            @display("p=282,285");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router21: router {
            noports = default(4);  // router has 4 ports
            id = 105;
            @display("p=282,344");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router22: router {
            noports = default(4);  // router has 4 ports
            id = 106;
            @display("p=282,401");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router23: router {
            noports = default(4);  // router has 4 ports
            id = 107;
            @display("p=282,466");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router24: router {
            noports = default(4);  // router has 4 ports
            id = 108;
            @display("p=282,527");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router25: router {
            noports = default(4);  // router has 4 ports
            id = 109;
            @display("p=282,588");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router26: router {
            noports = default(4);  // router has 4 ports
            id = 110;
            @display("p=282,651");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router27: router {
            noports = default(4);  // router has 4 ports
            id = 111;
            @display("p=282,718");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router28: router {
            noports = default(4);  // router has 4 ports
            id = 112;
            @display("p=273,782");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router29: router {
            noports = default(4);  // router has 4 ports
            id = 113;
            @display("p=273,852");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router30: router {
            noports = default(4);  // router has 4 ports
            id = 114;
            @display("p=273,911");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router31: router {
            noports = default(4);  // router has 4 ports
            id = 115;
            @display("p=273,976");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router32: router {
            noports = default(4);  // router has 4 ports
            id = 200;
            @display("p=408,35");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router33: router {
            noports = default(4);  // router has 4 ports
            id = 201;
            @display("p=408,90");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router34: router {
            noports = default(4);  // router has 4 ports
            id = 202;
            @display("p=404,150");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router35: router {
            noports = default(4);  // router has 4 ports
            id = 203;
            @display("p=404,212");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router36: router {
            noports = default(4);  // router has 4 ports
            id = 204;
            @display("p=404,277");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router37: router {
            noports = default(4);  // router has 4 ports
            id = 205;
            @display("p=406,336");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router38: router {
            noports = default(4);  // router has 4 ports
            id = 206;
            @display("p=400,390");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router39: router {
            noports = default(4);  // router has 4 ports
            id = 207;
            @display("p=400,462");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router40: router {
            noports = default(4);  // router has 4 ports
            id = 208;
            @display("p=392,526");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router41: router {
            noports = default(4);  // router has 4 ports
            id = 209;
            @display("p=394,586");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router42: router {
            noports = default(4);  // router has 4 ports
            id = 210;
            @display("p=394,642");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router43: router {
            noports = default(4);  // router has 4 ports
            id = 211;
            @display("p=392,704");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router44: router {
            noports = default(4);  // router has 4 ports
            id = 212;
            @display("p=400,768");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router45: router {
            noports = default(4);  // router has 4 ports
            id = 213;
            @display("p=398,834");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router46: router {
            noports = default(4);  // router has 4 ports
            id = 214;
            @display("p=398,898");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router47: router {
            noports = default(4);  // router has 4 ports
            id = 215;
            @display("p=398,968");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router48: router {
            noports = default(4);  // router has 4 ports
            id = 300;
            @display("p=520,28");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router49: router {
            noports = default(4);  // router has 4 ports
            id = 301;
            @display("p=522,82");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router50: router {
            noports = default(4);  // router has 4 ports
            id = 302;
            @display("p=518,148");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router51: router {
            noports = default(4);  // router has 4 ports
            id = 303;
            @display("p=522,212");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router52: router {
            noports = default(4);  // router has 4 ports
            id = 304;
            @display("p=518,280");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router53: router {
            noports = default(4);  // router has 4 ports
            id = 305;
            @display("p=518,326");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router54: router {
            noports = default(4);  // router has 4 ports
            id = 306;
            @display("p=514,388");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router55: router {
            noports = default(4);  // router has 4 ports
            id = 307;
            @display("p=508,450");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router56: router {
            noports = default(4);  // router has 4 ports
            id = 308;

            @display("p=508,520");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router57: router {
            noports = default(4);  // router has 4 ports
            id = 309;
            @display("p=508,586");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router58: router {
            noports = default(4);  // router has 4 ports
            id = 310;
            @display("p=504,646");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router59: router {
            noports = default(4);  // router has 4 ports
            id = 311;
            @display("p=514,704");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router60: router {
            noports = default(4);  // router has 4 ports
            id = 312;
            @display("p=514,768");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router61: router {
            noports = default(4);  // router has 4 ports
            id = 313;
            @display("p=514,828");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router62: router {
            noports = default(4);  // router has 4 ports
            id = 314;
            @display("p=508,892");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router63: router {
            noports = default(4);  // router has 4 ports
            id = 315;
            @display("p=514,958");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router64: router {
            noports = default(4);  // router has 4 ports
            id = 400;
            @display("p=628,24");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router65: router {
            noports = default(4);  // router has 4 ports
            id = 401;
            @display("p=628,82");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router66: router {
            noports = default(4);  // router has 4 ports
            id = 402;
            @display("p=624,152");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router67: router {
            noports = default(4);  // router has 4 ports
            id = 403;
            @display("p=624,212");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router68: router {
            noports = default(4);  // router has 4 ports
            id = 404;
            @display("p=620,274");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router69: router {
            noports = default(4);  // router has 4 ports
            id = 405;
            @display("p=624,326");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router70: router {
            noports = default(4);  // router has 4 ports
            id = 406;
            @display("p=628,388");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router71: router {
            noports = default(4);  // router has 4 ports
            id = 407;
            @display("p=628,442");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router72: router {
            noports = default(4);  // router has 4 ports
            id = 408;
            @display("p=614,512");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router73: router {
            noports = default(4);  // router has 4 ports
            id = 409;
            @display("p=614,576");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router74: router {
            noports = default(4);  // router has 4 ports
            id = 410;
            @display("p=612,638");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router75: router {
            noports = default(4);  // router has 4 ports
            id = 411;
            @display("p=612,696");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router76: router {
            noports = default(4);  // router has 4 ports
            id = 412;
            @display("p=618,768");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router77: router {
            noports = default(4);  // router has 4 ports
            id = 413;
            @display("p=612,834");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router78: router {
            noports = default(4);  // router has 4 ports
            id = 414;
            @display("p=608,890");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router79: router {
            noports = default(4);  // router has 4 ports
            id = 415;
            @display("p=616,950");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        clienti0: clienti {
            srcId = 0;

            @display("p=51,28");
            gates:
                // gate to sink 
                clientout;
        }
        clienti1: clienti {
            srcId = 1;
            @display("p=51,56");
            gates:
                // gate to sink 
                clientout;
        }
        clienti3: clienti {
            srcId = 3;
            @display("p=51,114");
            gates:
                 // gate to sink 
                clientout;
        }
        clienti2: clienti {
            srcId = 2;
            @display("p=51,82");
            gates:
                 // gate to sink 
                clientout;
        }
        clienti4: clienti {
            srcId = 4;
            @display("p=51,148");
            gates:
                 // gate to sink 
                clientout;
        }
        clienti5: clienti {
            srcId = 5;
            @display("p=51,172");
            gates:
                 // gate to sink 
                clientout;
        }
        clienti6: clienti {
            srcId = 6;
            @display("p=51,212");
            gates:
                 // gate to sink 
                clientout;
        }
        clienti7: clienti {
            srcId = 7;
            @display("p=51,244");
            gates:
                 // gate to sink 
                clientout;
        }
        clienti8: clienti {
            srcId = 8;
            @display("p=51,277");
            gates:
                 // gate to sink 
                clientout;
        }
        clienti9: clienti {
            srcId = 9;
            @display("p=51,306");
            gates:
                 // gate to sink 
                clientout;
        }
        clienti10: clienti {
            srcId = 10;
            @display("p=51,336");
            gates:
                 // gate to sink 
                clientout;
        }
        clienti11: clienti {
            srcId = 11;
            @display("p=51,358");
            gates:
                 // gate to sink 
                clientout;
        }
        clienti12: clienti {
            srcId = 12;
            @display("p=57,388");
            gates:
                 // gate to sink 
                clientout;
        }
        clienti13: clienti {
            srcId = 13;
            @display("p=57,422");
            gates:
                 // gate to sink 
                clientout;
        }
        clienti14: clienti {
            srcId = 14;
            @display("p=57,452");
            gates:
                 // gate to sink 
                clientout;
        }
        clienti15: clienti {
            srcId = 15;
            @display("p=57,484");
            gates:
                 // gate to sink 
                clientout;
        }
        clienti16: clienti {
            srcId = 16;
            @display("p=57,512");
            gates:
                 // gate to sink 
                clientout;
        }
        clienti17: clienti {
            srcId = 17;
            @display("p=57,544");
            gates:
                 // gate to sink 
                clientout;
        }
        clienti18: clienti {
            srcId = 18;
            @display("p=57,576");
            gates:
                 // gate to sink 
                clientout;
        }
        clienti19: clienti {
            srcId = 19;
            @display("p=57,599");
            gates:
                 // gate to sink 
                clientout;
        }
        clienti20: clienti {
            srcId = 20;
            @display("p=56,617");
            gates:
                 // gate to sink 
                clientout;
        }
        clienti21: clienti {
            srcId = 21;
            @display("p=62,647");
            gates:
                 // gate to sink 
                clientout;
        }
        clienti22: clienti {
            srcId = 22;
            @display("p=55,680");
            gates:
                 // gate to sink 
                clientout;
        }
        clienti23: clienti {
            srcId = 23;
            @display("p=57,711");
            gates:
                 // gate to sink 
                clientout;
        }
        clienti24: clienti {
            srcId = 24;
            @display("p=55,767");
            gates:
                 // gate to sink 
                clientout;
        }
        clienti25: clienti {
            srcId = 25;
            @display("p=57,796");
            gates:
                 // gate to sink 
                clientout;
        }
        clienti26: clienti {
            srcId = 26;
            @display("p=59,832");
            gates:
                 // gate to sink 
                clientout;
        }
        clienti27: clienti {
            srcId = 27;
            @display("p=59,860");
            gates:
                 // gate to sink 
                clientout;
        }
        clienti28: clienti {
            srcId = 28;
            @display("p=60,904");
            gates:
                 // gate to sink 
                clientout;
        }
        clienti29: clienti {
            srcId = 29;
            @display("p=55,934");
            gates:
                 // gate to sink 
                clientout;
        }
        clienti30: clienti {
            srcId = 30;
            @display("p=57,968");
            gates:
                 // gate to sink 
                clientout;
        }
        clienti31: clienti {
            srcId = 31;
            @display("p=58,998");
            gates:
                 // gate to sink 
                clientout;
        }
        cliento0: cliento {
            srcId = 32;
            @display("p=716,13");

            gates:
                clientin;  // gate to sink 

        }
        cliento1: cliento {
            srcId = 33;
            @display("p=716,46");
            gates:
                clientin;  // gate to sink 

        }
        cliento2: cliento {
            srcId = 34;
            @display("p=716,67");
            gates:
                clientin;  // gate to sink 

        }
        cliento3: cliento {
            srcId = 35;
            @display("p=716,97");
            gates:
                clientin;  // gate to sink 

        }


        cliento4: cliento {
            srcId = 36;
            @display("p=716,122");
            gates:
                clientin;
        }
        cliento5: cliento {
            srcId = 37;
            @display("p=714,153");
            gates:
                clientin;
        }
        cliento6: cliento {
            srcId = 38;
            @display("p=710,186");
            gates:
                clientin;
        }
        cliento7: cliento {
            srcId = 39;
            @display("p=714,212");
            gates:
                clientin;
        }
        cliento8: cliento {
            srcId = 40;
            @display("p=710,249");
            gates:
                clientin;
        }
        cliento9: cliento {
            srcId = 41;
            @display("p=705,279");
            gates:
                clientin;
        }
        cliento10: cliento {
            srcId = 42;
            @display("p=706,315");
            gates:
                clientin;
        }
        cliento11: cliento {
            srcId = 43;
            @display("p=706,336");
            gates:
                clientin;
        }
        cliento12: cliento {
            srcId = 44;
            @display("p=706,369");
            gates:
                clientin;
        }
        cliento13: cliento {
            srcId = 45;
            @display("p=704,404");
            gates:
                clientin;
        }
        cliento14: cliento {
            srcId = 46;
            @display("p=705,442");
            gates:
                clientin;
        }
        cliento15: cliento {
            srcId = 47;
            @display("p=704,462");
            gates:
                clientin;
        }
        cliento16: cliento {
            srcId = 48;
            @display("p=702,496");
            gates:
                clientin;
        }
        cliento17: cliento {
            srcId = 49;
            @display("p=704,520");
            gates:
                clientin;
        }
        cliento18: cliento {
            srcId = 50;
            @display("p=701,557");
            gates:
                clientin;
        }
        cliento19: cliento {
            srcId = 51;
            @display("p=701,586");
            gates:
                clientin;
        }
        cliento20: cliento {
            srcId = 52;
            @display("p=696,624");
            gates:
                clientin;
        }
        cliento21: cliento {
            srcId = 53;
            @display("p=696,646");
            gates:
                clientin;
        }
        cliento22: cliento {
            srcId = 54;
            @display("p=698,678");
            gates:
                clientin;
        }
        cliento23: cliento {
            srcId = 55;
            @display("p=697,711");
            gates:
                clientin;
        }
        cliento24: cliento {
            srcId = 56;
            @display("p=696,747");
            gates:
                clientin;
        }
        cliento25: cliento {
            srcId = 57;
            @display("p=697,785");
            gates:
                clientin;
        }
        cliento26: cliento {
            srcId = 58;
            @display("p=698,820");
            gates:
                clientin;
        }
        cliento27: cliento {
            srcId = 59;
            @display("p=699,851");
            gates:
                clientin;
        }
        cliento28: cliento {
            srcId = 60;
            @display("p=700,888");
            gates:
                clientin;
        }
        cliento29: cliento {
            srcId = 61;
            @display("p=703,923");
            gates:
                clientin;
        }
        cliento30: cliento {
            srcId = 62;
            @display("p=704,955");
            gates:
                clientin;
        }
        cliento31: cliento {
            srcId = 63;
            @display("p=707,983");
            gates:
                clientin;
        }
    connections allowunconnected:
 {
            router0.in[3] <--> Link <--> clienti0.clientout; // 

            router0.in[2] <--> Link <--> clienti1.clientout;

            router1.in[3] <--> Link <--> clienti2.clientout;

            router1.in[2] <--> Link <--> clienti3.clientout;

            router2.in[3] <--> Link <--> clienti4.clientout;

            router2.in[2] <--> Link <--> clienti5.clientout;

            router3.in[3] <--> Link <--> clienti6.clientout;

            router3.in[2] <--> Link <--> clienti7.clientout;

            router4.in[3] <--> Link <--> clienti8.clientout;

            router4.in[2] <--> Link <--> clienti9.clientout;

            router5.in[3] <--> Link <--> clienti10.clientout;

            router5.in[2] <--> Link <--> clienti11.clientout;

            router6.in[3] <--> Link <--> clienti12.clientout;

            router6.in[2] <--> Link <--> clienti13.clientout;

            router7.in[3] <--> Link <--> clienti14.clientout;

            router7.in[2] <--> Link <--> clienti15.clientout;



            router8.in[3] <--> Link <--> clienti16.clientout; // 

            router8.in[2] <--> Link <--> clienti17.clientout;

            router9.in[3] <--> Link <--> clienti18.clientout;

            router9.in[2] <--> Link <--> clienti19.clientout;

            router10.in[3] <--> Link <--> clienti20.clientout;

            router10.in[2] <--> Link <--> clienti21.clientout;

            router11.in[3] <--> Link <--> clienti22.clientout;

            router11.in[2] <--> Link <--> clienti23.clientout;

            router12.in[3] <--> Link <--> clienti24.clientout;

            router12.in[2] <--> Link <--> clienti25.clientout;

            router13.in[3] <--> Link <--> clienti26.clientout;

            router13.in[2] <--> Link <--> clienti27.clientout;

            router14.in[3] <--> Link <--> clienti28.clientout;

            router14.in[2] <--> Link <--> clienti29.clientout;

            router15.in[3] <--> Link <--> clienti30.clientout;

            router15.in[2] <--> Link <--> clienti31.clientout;

            router64.out[1] <--> Link <--> cliento0.clientin;

            router64.out[0] <--> Link <--> cliento1.clientin;

            router65.out[1] <--> Link <--> cliento2.clientin;

            router65.out[0] <--> Link <--> cliento3.clientin;

            router66.out[1] <--> Link <--> cliento4.clientin;

            router66.out[0] <--> Link <--> cliento5.clientin;

            router67.out[1] <--> Link <--> cliento6.clientin;

            router67.out[0] <--> Link <--> cliento7.clientin;

            router68.out[1] <--> Link <--> cliento8.clientin;

            router68.out[0] <--> Link <--> cliento9.clientin;

            router69.out[1] <--> Link <--> cliento10.clientin;

            router69.out[0] <--> Link <--> cliento11.clientin;

            router70.out[1] <--> Link <--> cliento12.clientin;

            router70.out[0] <--> Link <--> cliento13.clientin;

            router71.out[1] <--> Link <--> cliento14.clientin;

            router71.out[0] <--> Link <--> cliento15.clientin;

            router72.out[1] <--> Link <--> cliento16.clientin;

            router72.out[0] <--> Link <--> cliento17.clientin;

            router73.out[1] <--> Link <--> cliento18.clientin;

            router73.out[0] <--> Link <--> cliento19.clientin;

            router74.out[1] <--> Link <--> cliento20.clientin;

            router74.out[0] <--> Link <--> cliento21.clientin;

            router75.out[1] <--> Link <--> cliento22.clientin;

            router75.out[0] <--> Link <--> cliento23.clientin;

            router76.out[1] <--> Link <--> cliento24.clientin;

            router76.out[0] <--> Link <--> cliento25.clientin;

            router77.out[1] <--> Link <--> cliento26.clientin;

            router77.out[0] <--> Link <--> cliento27.clientin;

            router78.out[1] <--> Link <--> cliento28.clientin;

            router78.out[0] <--> Link <--> cliento29.clientin;

            router79.out[1] <--> Link <--> cliento30.clientin;

            router79.out[0] <--> Link <--> cliento31.clientin;

            router0.out[1] <--> Link <--> router16.in[3];




            router1.out[1] <--> Link <--> router17.in[3];

            router2.out[1] <--> Link <--> router18.in[3];

            router3.out[1] <--> Link <--> router19.in[3];

            router4.out[1] <--> Link <--> router20.in[3];

            router5.out[1] <--> Link <--> router21.in[3];

            router6.out[1] <--> Link <--> router22.in[3];

            router7.out[1] <--> Link <--> router23.in[3];
            router8.out[0] <--> Link <--> router24.in[3];

            router9.out[0] <--> Link <--> router25.in[3];

            router10.out[0] <--> Link <--> router26.in[3];

            router11.out[0] <--> Link <--> router27.in[3];

            router12.out[0] <--> Link <--> router28.in[3];

            router13.out[0] <--> Link <--> router29.in[3];
            router14.out[0] <--> Link <--> router30.in[3];

            router15.out[0] <--> Link <--> router31.in[3];

            router16.out[1] <--> Link <--> router32.in[3];
            router17.out[1] <--> Link <--> router33.in[3];

            router18.out[1] <--> Link <--> router34.in[3];

            router19.out[1] <--> Link <--> router35.in[3];

            router20.out[0] <--> Link <--> router36.in[3];

            router21.out[0] <--> Link <--> router37.in[3];

            router22.out[0] <--> Link <--> router38.in[3];

            router23.out[0] <--> Link <--> router39.in[3];
            router24.out[1] <--> Link <--> router40.in[3];

            router25.out[1] <--> Link <--> router41.in[3];

            router26.out[1] <--> Link <--> router42.in[3];

            router27.out[1] <--> Link <--> router43.in[3];

            router28.out[0] <--> Link <--> router44.in[3];

            router29.out[0] <--> Link <--> router45.in[3];

            router30.out[0] <--> Link <--> router46.in[3];
            router31.out[0] <--> Link <--> router47.in[3];

            router32.out[1] <--> Link <--> router48.in[3];

            router33.out[1] <--> Link <--> router49.in[3];

            router34.out[0] <--> Link <--> router50.in[3];

            router35.out[0] <--> Link <--> router51.in[3];

            router36.out[1] <--> Link <--> router52.in[3];

            router37.out[1] <--> Link <--> router53.in[3];

            router38.out[0] <--> Link <--> router54.in[3];

            router39.out[0] <--> Link <--> router55.in[3];

            router40.out[1] <--> Link <--> router56.in[3];

            router41.out[1] <--> Link <--> router57.in[3];

            router42.out[0] <--> Link <--> router58.in[3];

            router43.out[0] <--> Link <--> router59.in[3];

            router44.out[1] <--> Link <--> router60.in[3];

            router45.out[1] <--> Link <--> router61.in[3];

            router46.out[0] <--> Link <--> router62.in[3];

            router47.out[0] <--> Link <--> router63.in[3];

            router48.out[1] <--> Link <--> router64.in[3];

            router49.out[0] <--> Link <--> router65.in[3];

            router50.out[1] <--> Link <--> router66.in[3];

            router51.out[0] <--> Link <--> router67.in[3];
            router52.out[1] <--> Link <--> router68.in[3];

            router53.out[0] <--> Link <--> router69.in[3];

            router54.out[1] <--> Link <--> router70.in[3];

            router55.out[0] <--> Link <--> router71.in[3];

            router56.out[1] <--> Link <--> router72.in[3];

            router57.out[0] <--> Link <--> router73.in[3];

            router58.out[1] <--> Link <--> router74.in[3];

            router59.out[0] <--> Link <--> router75.in[3];

            router60.out[1] <--> Link <--> router76.in[3];

            router61.out[0] <--> Link <--> router77.in[3];

            router62.out[1] <--> Link <--> router78.in[3];

            router63.out[0] <--> Link <--> router79.in[3];

            router48.out[0] <--> Link <--> router65.in[2];
            router49.out[1] <--> Link <--> router64.in[2];

            router50.out[0] <--> Link <--> router67.in[2];
            router51.out[1] <--> Link <--> router66.in[2];

            router52.out[0] <--> Link <--> router69.in[2];
            router53.out[1] <--> Link <--> router68.in[2];

            router54.out[0] <--> Link <--> router71.in[2];
            router55.out[1] <--> Link <--> router70.in[2];
            router56.out[0] <--> Link <--> router73.in[2];
            router57.out[1] <--> Link <--> router72.in[2];

            router58.out[0] <--> Link <--> router75.in[2];
            router59.out[1] <--> Link <--> router74.in[2];

            router60.out[0] <--> Link <--> router77.in[2];
            router61.out[1] <--> Link <--> router76.in[2];

            router62.out[0] <--> Link <--> router79.in[2];
            router63.out[1] <--> Link <--> router78.in[2];

            router32.out[0] <--> Link <--> router50.in[2];

            router33.out[0] <--> Link <--> router51.in[2];

            router34.out[1] <--> Link <--> router48.in[2];

            router35.out[1] <--> Link <--> router49.in[2];

            router36.out[0] <--> Link <--> router54.in[2];

            router37.out[0] <--> Link <--> router55.in[2];

            router38.out[1] <--> Link <--> router52.in[2];

            router39.out[1] <--> Link <--> router53.in[2];
            router40.out[0] <--> Link <--> router58.in[2];

            router41.out[0] <--> Link <--> router59.in[2];

            router42.out[1] <--> Link <--> router56.in[2];

            router43.out[1] <--> Link <--> router57.in[2];

            router44.out[0] <--> Link <--> router62.in[2];

            router45.out[0] <--> Link <--> router63.in[2];

            router46.out[1] <--> Link <--> router60.in[2];

            router47.out[1] <--> Link <--> router61.in[2];

            router16.out[0] <--> Link <--> router36.in[2];

            router17.out[0] <--> Link <--> router37.in[2];

            router18.out[0] <--> Link <--> router38.in[2];

            router19.out[0] <--> Link <--> router39.in[2];

            router20.out[1] <--> Link <--> router32.in[2];

            router21.out[1] <--> Link <--> router33.in[2];

            router22.out[1] <--> Link <--> router34.in[2];

            router23.out[1] <--> Link <--> router35.in[2];


            router24.out[0] <--> Link <--> router44.in[2];

            router25.out[0] <--> Link <--> router45.in[2];

            router26.out[0] <--> Link <--> router46.in[2];

            router27.out[0] <--> Link <--> router47.in[2];

            router28.out[1] <--> Link <--> router40.in[2];

            router29.out[1] <--> Link <--> router41.in[2];

            router30.out[1] <--> Link <--> router42.in[2];

            router31.out[1] <--> Link <--> router43.in[2];

            router0.out[0] <--> Link <--> router24.in[2];

            router1.out[0] <--> Link <--> router25.in[2];

            router2.out[0] <--> Link <--> router26.in[2];

            router3.out[0] <--> Link <--> router27.in[2];

            router4.out[0] <--> Link <--> router28.in[2];

            router5.out[0] <--> Link <--> router29.in[2];

            router6.out[0] <--> Link <--> router30.in[2];

            router7.out[0] <--> Link <--> router31.in[2];


            router8.out[1] <--> Link <--> router16.in[2];

            router9.out[1] <--> Link <--> router17.in[2];

            router10.out[1] <--> Link <--> router18.in[2];

            router11.out[1] <--> Link <--> router19.in[2];

            router12.out[1] <--> Link <--> router20.in[2];

            router13.out[1] <--> Link <--> router21.in[2];

            router14.out[1] <--> Link <--> router22.in[2];

            router15.out[1] <--> Link <--> router23.in[2];



        }


}
