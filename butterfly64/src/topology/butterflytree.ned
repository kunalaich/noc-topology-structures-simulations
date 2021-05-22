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

package butterfly64.src.topology;



import butterfly64.src.core.clienti;
import butterfly64.src.core.cliento;
import butterfly64.src.router.router;



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
        int totalclients = default(4);


        @display("bgb=2078,1069");
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
            @display("p=135,67");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router2: router {
            noports = default(4);  // router has 4 ports
            id = 2;
            @display("p=135,97;i=,#0080FF");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router3: router {
            noports = default(4);  // router has 4 ports
            id = 3;
            @display("p=134,129");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router4: router {
            noports = default(4);  // router has 4 ports
            id = 4;
            @display("p=133,160");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router5: router {
            noports = default(4);  // router has 4 ports
            id = 5;
            @display("p=135,198");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router6: router {
            noports = default(4);  // router has 4 ports
            id = 6;
            @display("p=133,243");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router7: router {
            noports = default(4);  // router has 4 ports
            id = 7;
            @display("p=132,283");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router8: router {
            noports = default(4);  // router has 4 ports
            id = 8;
            @display("p=132,326");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router9: router {
            noports = default(4);  // router has 4 ports
            id = 9;
            @display("p=132,369");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router10: router {
            noports = default(4);  // router has 4 ports
            id = 10;
            @display("p=135,410");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router11: router {
            noports = default(4);  // router has 4 ports
            id = 11;
            @display("p=135,452");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router12: router {
            noports = default(4);  // router has 4 ports
            id = 12;
            @display("p=135,496");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router13: router {
            noports = default(4);  // router has 4 ports
            id = 13;
            @display("p=141,537");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router14: router {
            noports = default(4);  // router has 4 ports
            id = 14;
            @display("p=141,576");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router15: router {
            noports = default(4);  // router has 4 ports
            id = 15;
            @display("p=141,617");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router16: router {
            noports = default(4);  // router has 4 ports
            id = 16;
            @display("p=138,639");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router17: router {
            noports = default(4);  // router has 4 ports
            id = 17;
            @display("p=138,656");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router18: router {
            noports = default(4);  // router has 4 ports
            id = 18;
            @display("p=138,687");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router19: router {
            noports = default(4);  // router has 4 ports
            id = 19;
            @display("p=135,717");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router20: router {
            noports = default(4);  // router has 4 ports
            id = 20;
            @display("p=133,747");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router21: router {
            noports = default(4);  // router has 4 ports
            id = 21;
            @display("p=135,778");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router22: router {
            noports = default(4);  // router has 4 ports
            id = 22;
            @display("p=135,803");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router23: router {
            noports = default(4);  // router has 4 ports
            id = 23;
            @display("p=132,834");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router24: router {
            noports = default(4);  // router has 4 ports
            id = 24;
            @display("p=132,865");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router25: router {
            noports = default(4);  // router has 4 ports
            id = 25;
            @display("p=132,896");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router26: router {
            noports = default(4);  // router has 4 ports
            id = 26;
            @display("p=132,921");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router27: router {
            noports = default(4);  // router has 4 ports
            id = 27;
            @display("p=132,946");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router28: router {
            noports = default(4);  // router has 4 ports
            id = 28;
            @display("p=133,970");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router29: router {
            noports = default(4);  // router has 4 ports
            id = 29;
            @display("p=132,987");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router30: router {
            noports = default(4);  // router has 4 ports
            id = 30;
            @display("p=132,1015");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router31: router {
            noports = default(4);  // router has 4 ports
            id = 31;
            @display("p=133,1040");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router32: router {
            noports = default(4);  // router has 4 ports
            id = 100;
            @display("p=266,35");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router33: router {
            noports = default(4);  // router has 4 ports
            id = 101;
            @display("p=266,60");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router34: router {
            noports = default(4);  // router has 4 ports
            id = 102;
            @display("p=266,97");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router35: router {
            noports = default(4);  // router has 4 ports
            id = 103;
            @display("p=266,129");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router36: router {
            noports = default(4);  // router has 4 ports
            id = 104;
            @display("p=266,160");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router37: router {
            noports = default(4);  // router has 4 ports
            id = 105;
            @display("p=266,198");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router38: router {
            noports = default(4);  // router has 4 ports
            id = 106;
            @display("p=266,230");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router39: router {
            noports = default(4);  // router has 4 ports
            id = 107;
            @display("p=266,274");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router40: router {
            noports = default(4);  // router has 4 ports
            id = 108;
            @display("p=266,326");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router41: router {
            noports = default(4);  // router has 4 ports
            id = 109;
            @display("p=266,369");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router42: router {
            noports = default(4);  // router has 4 ports
            id = 110;
            @display("p=266,404");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router43: router {
            noports = default(4);  // router has 4 ports
            id = 111;
            @display("p=266,452");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router44: router {
            noports = default(4);  // router has 4 ports
            id = 112;
            @display("p=266,496");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router45: router {
            noports = default(4);  // router has 4 ports
            id = 113;
            @display("p=266,537");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router46: router {
            noports = default(4);  // router has 4 ports
            id = 114;
            @display("p=266,576");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router47: router {
            noports = default(4);  // router has 4 ports
            id = 115;
            @display("p=266,617");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router48: router {
            noports = default(4);  // router has 4 ports
            id = 116;
            @display("p=266,639");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router49: router {
            noports = default(4);  // router has 4 ports
            id = 117;
            @display("p=266,662");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router50: router {
            noports = default(4);  // router has 4 ports
            id = 118;
            @display("p=266,685");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router51: router {
            noports = default(4);  // router has 4 ports
            id = 119;
            @display("p=265,711");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router52: router {
            noports = default(4);  // router has 4 ports
            id = 120;
            @display("p=266,738");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router53: router {
            noports = default(4);  // router has 4 ports
            id = 121;
            @display("p=266,768");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router54: router {
            noports = default(4);  // router has 4 ports
            id = 122;
            @display("p=265,803");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router55: router {
            noports = default(4);  // router has 4 ports
            id = 123;
            @display("p=264,825");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router56: router {
            noports = default(4);  // router has 4 ports
            id = 124;

            @display("p=264,856");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router57: router {
            noports = default(4);  // router has 4 ports
            id = 125;
            @display("p=266,884");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router58: router {
            noports = default(4);  // router has 4 ports
            id = 126;
            @display("p=264,914");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router59: router {
            noports = default(4);  // router has 4 ports
            id = 127;
            @display("p=266,945");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router60: router {
            noports = default(4);  // router has 4 ports
            id = 128;
            @display("p=266,967");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router61: router {
            noports = default(4);  // router has 4 ports
            id = 129;
            @display("p=266,987");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router62: router {
            noports = default(4);  // router has 4 ports
            id = 130;
            @display("p=266,1015");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router63: router {
            noports = default(4);  // router has 4 ports
            id = 131;
            @display("p=271,1034");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router64: router {
            noports = default(4);  // router has 4 ports
            id = 200;
            @display("p=414,35");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router65: router {
            noports = default(4);  // router has 4 ports
            id = 201;
            @display("p=414,60");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router66: router {
            noports = default(4);  // router has 4 ports
            id = 202;
            @display("p=421,91");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router67: router {
            noports = default(4);  // router has 4 ports
            id = 203;
            @display("p=421,122");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router68: router {
            noports = default(4);  // router has 4 ports
            id = 204;
            @display("p=421,153");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router69: router {
            noports = default(4);  // router has 4 ports
            id = 205;
            @display("p=421,191");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router70: router {
            noports = default(4);  // router has 4 ports
            id = 206;
            @display("p=421,230");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router71: router {
            noports = default(4);  // router has 4 ports
            id = 207;
            @display("p=421,267");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router72: router {
            noports = default(4);  // router has 4 ports
            id = 208;
            @display("p=421,315");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router73: router {
            noports = default(4);  // router has 4 ports
            id = 209;
            @display("p=421,358");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router74: router {
            noports = default(4);  // router has 4 ports
            id = 210;
            @display("p=429,404");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router75: router {
            noports = default(4);  // router has 4 ports
            id = 211;
            @display("p=429,442");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router76: router {
            noports = default(4);  // router has 4 ports
            id = 212;
            @display("p=429,484");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router77: router {
            noports = default(4);  // router has 4 ports
            id = 213;
            @display("p=429,520");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router78: router {
            noports = default(4);  // router has 4 ports
            id = 214;
            @display("p=429,568");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router79: router {
            noports = default(4);  // router has 4 ports
            id = 215;
            @display("p=429,604");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router80: router {
            noports = default(4);  // router has 4 ports
            id = 216;
            @display("p=429,630");
            gates:

                in[5];   // in gate of router
                out[5];
        }

        router81: router {
            noports = default(4);  // router has 4 ports
            id = 217;
            @display("p=429,656");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router82: router {
            noports = default(4);  // router has 4 ports
            id = 218;
            @display("p=429,685");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router83: router {
            noports = default(4);  // router has 4 ports
            id = 219;
            @display("p=429,700");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router84: router {
            noports = default(4);  // router has 4 ports
            id = 220;
            @display("p=428,737");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router85: router {
            noports = default(4);  // router has 4 ports
            id = 221;
            @display("p=425,760");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router86: router {
            noports = default(4);  // router has 4 ports
            id = 222;
            @display("p=429,793");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router87: router {
            noports = default(4);  // router has 4 ports
            id = 223;
            @display("p=429,825");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router88: router {
            noports = default(4);  // router has 4 ports
            id = 224;
            @display("p=428,852");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router89: router {
            noports = default(4);  // router has 4 ports
            id = 225;
            @display("p=429,882");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router90: router {
            noports = default(4);  // router has 4 ports
            id = 226;
            @display("p=426,914");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router91: router {
            noports = default(4);  // router has 4 ports
            id = 227;
            @display("p=425,938");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router92: router {
            noports = default(4);  // router has 4 ports
            id = 228;
            @display("p=422,969");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router93: router {
            noports = default(4);  // router has 4 ports
            id = 229;
            @display("p=425,987");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router94: router {
            noports = default(4);  // router has 4 ports
            id = 230;
            @display("p=422,1015");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router95: router {
            noports = default(4);  // router has 4 ports
            id = 231;
            @display("p=422,1034");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router96: router {
            noports = default(4);  // router has 4 ports
            id = 300;
            @display("p=568,28");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router97: router {
            noports = default(4);  // router has 4 ports
            id = 301;
            @display("p=573,56");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router98: router {
            noports = default(4);  // router has 4 ports
            id = 302;
            @display("p=573,82");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router99: router {
            noports = default(4);  // router has 4 ports
            id = 303;
            @display("p=570,116");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router100: router {
            noports = default(4);  // router has 4 ports
            id = 304;
            @display("p=572,148");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router101: router {
            noports = default(4);  // router has 4 ports
            id = 305;
            @display("p=574,184");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router102: router {
            noports = default(4);  // router has 4 ports
            id = 306;
            @display("p=570,224");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router103: router {
            noports = default(4);  // router has 4 ports
            id = 307;
            @display("p=579,261");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router104: router {
            noports = default(4);  // router has 4 ports
            id = 308;
            @display("p=577,304");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router105: router {
            noports = default(4);  // router has 4 ports
            id = 309;
            @display("p=573,348");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router106: router {
            noports = default(4);  // router has 4 ports
            id = 310;
            @display("p=572,392");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router107: router {
            noports = default(4);  // router has 4 ports
            id = 311;
            @display("p=573,440");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router108: router {
            noports = default(4);  // router has 4 ports
            id = 312;
            @display("p=574,482");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router109: router {
            noports = default(4);  // router has 4 ports
            id = 313;
            @display("p=568,520");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router110: router {
            noports = default(4);  // router has 4 ports
            id = 314;
            @display("p=574,557");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router111: router {
            noports = default(4);  // router has 4 ports
            id = 315;
            @display("p=574,591");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router112: router {
            noports = default(4);  // router has 4 ports
            id = 316;
            @display("p=573,622");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router113: router {
            noports = default(4);  // router has 4 ports
            id = 317;
            @display("p=574,646");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router114: router {
            noports = default(4);  // router has 4 ports
            id = 318;
            @display("p=568,678");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router115: router {
            noports = default(4);  // router has 4 ports
            id = 319;
            @display("p=565,702");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router116: router {
            noports = default(4);  // router has 4 ports
            id = 320;
            @display("p=561,729");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router117: router {
            noports = default(4);  // router has 4 ports
            id = 321;
            @display("p=564,760");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router118: router {
            noports = default(4);  // router has 4 ports
            id = 322;
            @display("p=565,785");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router119: router {
            noports = default(4);  // router has 4 ports
            id = 323;
            @display("p=565,820");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router120: router {
            noports = default(4);  // router has 4 ports
            id = 324;
            @display("p=565,850");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router121: router {
            noports = default(4);  // router has 4 ports
            id = 325;
            @display("p=564,881");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router122: router {
            noports = default(4);  // router has 4 ports
            id = 326;
            @display("p=561,914");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router123: router {
            noports = default(4);  // router has 4 ports
            id = 327;
            @display("p=562,930");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router124: router {
            noports = default(4);  // router has 4 ports
            id = 328;
            @display("p=562,957");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router125: router {
            noports = default(4);  // router has 4 ports
            id = 329;
            @display("p=562,986");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router126: router {
            noports = default(4);  // router has 4 ports
            id = 330;
            @display("p=565,1018");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router127: router {
            noports = default(4);  // router has 4 ports
            id = 331;
            @display("p=566,1044");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router128: router {
            noports = default(4);  // router has 4 ports
            id = 400;
            @display("p=703,21");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router129: router {
            noports = default(4);  // router has 4 ports
            id = 401;
            @display("p=701,56");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router130: router {
            noports = default(4);  // router has 4 ports
            id = 402;
            @display("p=703,82");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router131: router {
            noports = default(4);  // router has 4 ports
            id = 403;
            @display("p=704,114");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router132: router {
            noports = default(4);  // router has 4 ports
            id = 404;
            @display("p=705,148");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router133: router {
            noports = default(4);  // router has 4 ports
            id = 405;
            @display("p=709,184");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router134: router {
            noports = default(4);  // router has 4 ports
            id = 406;
            @display("p=711,219");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router135: router {
            noports = default(4);  // router has 4 ports
            id = 407;
            @display("p=712,251");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router136: router {
            noports = default(4);  // router has 4 ports
            id = 408;
            @display("p=710,296");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router137: router {
            noports = default(4);  // router has 4 ports
            id = 409;
            @display("p=713,341");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router138: router {
            noports = default(4);  // router has 4 ports
            id = 410;
            @display("p=718,377");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router139: router {
            noports = default(4);  // router has 4 ports
            id = 411;
            @display("p=714,425");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router140: router {
            noports = default(4);  // router has 4 ports
            id = 412;
            @display("p=712,468");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router141: router {
            noports = default(4);  // router has 4 ports
            id = 413;
            @display("p=709,508");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router142: router {
            noports = default(4);  // router has 4 ports
            id = 414;
            @display("p=708,541");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router143: router {
            noports = default(4);  // router has 4 ports
            id = 415;
            @display("p=705,586");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router144: router {
            noports = default(4);  // router has 4 ports
            id = 416;
            @display("p=701,617");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router145: router {
            noports = default(4);  // router has 4 ports
            id = 417;
            @display("p=701,646");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router146: router {
            noports = default(4);  // router has 4 ports
            id = 418;
            @display("p=704,678");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router147: router {
            noports = default(4);  // router has 4 ports
            id = 419;
            @display("p=705,711");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router148: router {
            noports = default(4);  // router has 4 ports
            id = 420;
            @display("p=704,737");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router149: router {
            noports = default(4);  // router has 4 ports
            id = 421;
            @display("p=705,768");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router150: router {
            noports = default(4);  // router has 4 ports
            id = 422;
            @display("p=701,793");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router151: router {
            noports = default(4);  // router has 4 ports
            id = 423;
            @display("p=698,818");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router152: router {
            noports = default(4);  // router has 4 ports
            id = 424;
            @display("p=694,850");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router153: router {
            noports = default(4);  // router has 4 ports
            id = 425;
            @display("p=694,882");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router154: router {
            noports = default(4);  // router has 4 ports
            id = 426;
            @display("p=694,914");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router155: router {
            noports = default(4);  // router has 4 ports
            id = 427;
            @display("p=694,938");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router156: router {
            noports = default(4);  // router has 4 ports
            id = 428;
            @display("p=694,969");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router157: router {
            noports = default(4);  // router has 4 ports
            id = 429;
            @display("p=698,999");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router158: router {
            noports = default(4);  // router has 4 ports
            id = 430;
            @display("p=698,1027");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router159: router {
            noports = default(4);  // router has 4 ports
            id = 431;
            @display("p=703,1050");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router160: router {
            noports = default(4);  // router has 4 ports
            id = 500;
            @display("p=830,16");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router161: router {
            noports = default(4);  // router has 4 ports
            id = 501;
            @display("p=830,46");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router162: router {
            noports = default(4);  // router has 4 ports
            id = 502;
            @display("p=826,77");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router163: router {
            noports = default(4);  // router has 4 ports
            id = 503;
            @display("p=826,108");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router164: router {
            noports = default(4);  // router has 4 ports
            id = 504;
            @display("p=830,141");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router165: router {
            noports = default(4);  // router has 4 ports
            id = 505;
            @display("p=830,179");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router166: router {
            noports = default(4);  // router has 4 ports
            id = 506;
            @display("p=824,208");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router167: router {
            noports = default(4);  // router has 4 ports
            id = 507;
            @display("p=824,243");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router168: router {
            noports = default(4);  // router has 4 ports
            id = 508;
            @display("p=828,283");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router169: router {
            noports = default(4);  // router has 4 ports
            id = 509;
            @display("p=830,326");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router170: router {
            noports = default(4);  // router has 4 ports
            id = 510;
            @display("p=821,370");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router171: router {
            noports = default(4);  // router has 4 ports
            id = 511;
            @display("p=830,410");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router172: router {
            noports = default(4);  // router has 4 ports
            id = 512;
            @display("p=828,452");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router173: router {
            noports = default(4);  // router has 4 ports
            id = 513;
            @display("p=824,496");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router174: router {
            noports = default(4);  // router has 4 ports
            id = 514;
            @display("p=824,529");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router175: router {
            noports = default(4);  // router has 4 ports
            id = 515;
            @display("p=822,572");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router176: router {
            noports = default(4);  // router has 4 ports
            id = 516;
            @display("p=825,606");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router177: router {
            noports = default(4);  // router has 4 ports
            id = 517;
            @display("p=824,638");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router178: router {
            noports = default(4);  // router has 4 ports
            id = 518;
            @display("p=826,664");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router179: router {
            noports = default(4);  // router has 4 ports
            id = 519;
            @display("p=829,693");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router180: router {
            noports = default(4);  // router has 4 ports
            id = 520;
            @display("p=828,720");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router181: router {
            noports = default(4);  // router has 4 ports
            id = 521;
            @display("p=826,749");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router182: router {
            noports = default(4);  // router has 4 ports
            id = 522;
            @display("p=825,785");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router183: router {
            noports = default(4);  // router has 4 ports
            id = 523;
            @display("p=820,820");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router184: router {
            noports = default(4);  // router has 4 ports
            id = 524;
            @display("p=829,855");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router185: router {
            noports = default(4);  // router has 4 ports
            id = 525;
            @display("p=825,884");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router186: router {
            noports = default(4);  // router has 4 ports
            id = 526;
            @display("p=826,914");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router187: router {
            noports = default(4);  // router has 4 ports
            id = 527;
            @display("p=826,942");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router188: router {
            noports = default(4);  // router has 4 ports
            id = 528;
            @display("p=820,959");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router189: router {
            noports = default(4);  // router has 4 ports
            id = 529;
            @display("p=820,992");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router190: router {
            noports = default(4);  // router has 4 ports
            id = 530;
            @display("p=822,1019");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        router191: router {
            noports = default(4);  // router has 4 ports
            id = 531;
            @display("p=820,1050");
            gates:

                in[5];   // in gate of router
                out[5];
        }
        clienti0: clienti {
            srcId = 0;

            @display("p=56,13");
            gates:
                // gate to sink 
                clientout;
        }
        clienti1: clienti {
            srcId = 1;
            @display("p=58,35");
            gates:
                // gate to sink 
                clientout;
        }
        clienti3: clienti {
            srcId = 3;
            @display("p=62,82");
            gates:
                 // gate to sink 
                clientout;
        }
        clienti2: clienti {
            srcId = 2;
            @display("p=58,60");
            gates:
                 // gate to sink 
                clientout;
        }
        clienti4: clienti {
            srcId = 4;
            @display("p=63,100");
            gates:
                 // gate to sink 
                clientout;
        }
        clienti5: clienti {
            srcId = 5;
            @display("p=63,122");
            gates:
                 // gate to sink 
                clientout;
        }
        clienti6: clienti {
            srcId = 6;
            @display("p=63,141");
            gates:
                 // gate to sink 
                clientout;
        }
        clienti7: clienti {
            srcId = 7;
            @display("p=63,166");
            gates:
                 // gate to sink 
                clientout;
        }
        clienti8: clienti {
            srcId = 8;
            @display("p=64,186");
            gates:
                 // gate to sink 
                clientout;
        }
        clienti9: clienti {
            srcId = 9;
            @display("p=64,198");
            gates:
                 // gate to sink 
                clientout;
        }
        clienti10: clienti {
            srcId = 10;
            @display("p=64,219");
            gates:
                 // gate to sink 
                clientout;
        }
        clienti11: clienti {
            srcId = 11;
            @display("p=63,243");
            gates:
                 // gate to sink 
                clientout;
        }
        clienti12: clienti {
            srcId = 12;
            @display("p=64,243");
            gates:
                 // gate to sink 
                clientout;
        }
        clienti13: clienti {
            srcId = 13;
            @display("p=64,267");
            gates:
                 // gate to sink 
                clientout;
        }
        clienti14: clienti {
            srcId = 14;
            @display("p=64,280");
            gates:
                 // gate to sink 
                clientout;
        }
        clienti15: clienti {
            srcId = 15;
            @display("p=64,300");
            gates:
                 // gate to sink 
                clientout;
        }
        clienti16: clienti {
            srcId = 16;
            @display("p=64,315");
            gates:
                 // gate to sink 
                clientout;
        }
        clienti17: clienti {
            srcId = 17;
            @display("p=64,336");
            gates:
                 // gate to sink 
                clientout;
        }
        clienti18: clienti {
            srcId = 18;
            @display("p=64,358");
            gates:
                 // gate to sink 
                clientout;
        }
        clienti19: clienti {
            srcId = 19;
            @display("p=62,388");
            gates:
                 // gate to sink 
                clientout;
        }
        clienti20: clienti {
            srcId = 20;
            @display("p=64,404");
            gates:
                 // gate to sink 
                clientout;
        }
        clienti21: clienti {
            srcId = 21;
            @display("p=62,420");
            gates:
                 // gate to sink 
                clientout;
        }
        clienti22: clienti {
            srcId = 22;
            @display("p=64,442");
            gates:
                 // gate to sink 
                clientout;
        }
        clienti23: clienti {
            srcId = 23;
            @display("p=64,462");
            gates:
                 // gate to sink 
                clientout;
        }
        clienti24: clienti {
            srcId = 24;
            @display("p=62,484");
            gates:
                 // gate to sink 
                clientout;
        }
        clienti25: clienti {
            srcId = 25;
            @display("p=64,505");
            gates:
                 // gate to sink 
                clientout;
        }
        clienti26: clienti {
            srcId = 26;
            @display("p=64,526");
            gates:
                 // gate to sink 
                clientout;
        }
        clienti27: clienti {
            srcId = 27;
            @display("p=64,544");
            gates:
                 // gate to sink 
                clientout;
        }
        clienti28: clienti {
            srcId = 28;
            @display("p=64,557");
            gates:
                 // gate to sink 
                clientout;
        }
        clienti29: clienti {
            srcId = 29;
            @display("p=64,576");
            gates:
                 // gate to sink 
                clientout;
        }
        clienti30: clienti {
            srcId = 30;
            @display("p=64,591");
            gates:
                 // gate to sink 
                clientout;
        }
        clienti31: clienti {
            srcId = 31;
            @display("p=63,617");
            gates:
                 // gate to sink 
                clientout;
        }

        clienti32: clienti {
            srcId = 32;
            @display("p=54,630");
            gates:
                 // gate to sink 
                clientout;
        }
        clienti33: clienti {
            srcId = 33;
            @display("p=50,637");
            gates:
                 // gate to sink 
                clientout;
        }
        clienti34: clienti {
            srcId = 34;
            @display("p=52,669");
            gates:
                 // gate to sink 
                clientout;
        }
        clienti35: clienti {
            srcId = 35;
            @display("p=50,678");
            gates:
                 // gate to sink 
                clientout;
        }
        clienti36: clienti {
            srcId = 36;
            @display("p=50,685");
            gates:
                 // gate to sink 
                clientout;
        }
        clienti37: clienti {
            srcId = 37;
            @display("p=50,710");
            gates:
                 // gate to sink 
                clientout;
        }
        clienti38: clienti {
            srcId = 38;
            @display("p=53,728");
            gates:
                 // gate to sink 
                clientout;
        }
        clienti39: clienti {
            srcId = 39;
            @display("p=50,738");
            gates:
                 // gate to sink 
                clientout;
        }
        clienti40: clienti {
            srcId = 40;
            @display("p=50,749");
            gates:
                 // gate to sink 
                clientout;
        }
        clienti41: clienti {
            srcId = 41;
            @display("p=50,761");
            gates:
                 // gate to sink 
                clientout;
        }
        clienti42: clienti {
            srcId = 42;
            @display("p=50,778");
            gates:
                 // gate to sink 
                clientout;
        }
        clienti43: clienti {
            srcId = 43;
            @display("p=46,793");
            gates:
                 // gate to sink 
                clientout;
        }
        clienti44: clienti {
            srcId = 44;
            @display("p=49,817");
            gates:
                 // gate to sink 
                clientout;
        }
        clienti45: clienti {
            srcId = 45;
            @display("p=46,848");
            gates:
                 // gate to sink 
                clientout;
        }
        clienti46: clienti {
            srcId = 46;
            @display("p=52,865");
            gates:
                 // gate to sink 
                clientout;
        }
        clienti47: clienti {
            srcId = 47;
            @display("p=51,882");
            gates:
                 // gate to sink 
                clientout;
        }
        clienti48: clienti {
            srcId = 48;
            @display("p=52,884");
            gates:
                 // gate to sink 
                clientout;
        }
        clienti49: clienti {
            srcId = 49;
            @display("p=55,893");
            gates:
                 // gate to sink 
                clientout;
        }
        clienti50: clienti {
            srcId = 50;
            @display("p=52,898");
            gates:
                 // gate to sink 
                clientout;
        }
        clienti51: clienti {
            srcId = 51;
            @display("p=51,904");
            gates:
                 // gate to sink 
                clientout;
        }
        clienti52: clienti {
            srcId = 52;
            @display("p=48,926");
            gates:
                 // gate to sink 
                clientout;
        }
        clienti53: clienti {
            srcId = 53;
            @display("p=48,930");
            gates:
                 // gate to sink 
                clientout;
        }
        clienti54: clienti {
            srcId = 54;
            @display("p=47,945");
            gates:
                 // gate to sink 
                clientout;
        }
        clienti55: clienti {
            srcId = 55;
            @display("p=46,948");
            gates:
                 // gate to sink 
                clientout;
        }
        clienti56: clienti {
            srcId = 56;
            @display("p=46,967");
            gates:
                 // gate to sink 
                clientout;
        }
        clienti57: clienti {
            srcId = 57;
            @display("p=48,984");
            gates:
                 // gate to sink 
                clientout;
        }
        clienti58: clienti {
            srcId = 58;
            @display("p=47,999");
            gates:
                 // gate to sink 
                clientout;
        }
        clienti59: clienti {
            srcId = 59;
            @display("p=46,1002");
            gates:
                 // gate to sink 
                clientout;
        }
        clienti60: clienti {
            srcId = 60;
            @display("p=38,1004");
            gates:
                 // gate to sink 
                clientout;
        }
        clienti61: clienti {
            srcId = 61;
            @display("p=46,1019");
            gates:
                 // gate to sink 
                clientout;
        }
        clienti62: clienti {
            srcId = 62;
            @display("p=45,1034");
            gates:
                 // gate to sink 
                clientout;
        }
        clienti63: clienti {
            srcId = 63;
            @display("p=48,1058");
            gates:
                 // gate to sink 
                clientout;
        }
        cliento0: cliento {
            srcId = 64;
            @display("p=936,13");

            gates:
                clientin;  // gate to sink 

        }
        cliento1: cliento {
            srcId = 65;
            @display("p=936,28");
            gates:
                clientin;  // gate to sink 

        }
        cliento2: cliento {
            srcId = 66;
            @display("p=936,35");
            gates:
                clientin;  // gate to sink 

        }
        cliento3: cliento {
            srcId = 67;
            @display("p=936,46");
            gates:
                clientin;  // gate to sink 

        }


        cliento4: cliento {
            srcId = 68;
            @display("p=936,56");
            gates:
                clientin;
        }
        cliento5: cliento {
            srcId = 69;
            @display("p=936,67");
            gates:
                clientin;
        }
        cliento6: cliento {
            srcId = 70;
            @display("p=936,97");
            gates:
                clientin;
        }
        cliento7: cliento {
            srcId = 71;
            @display("p=934,114");
            gates:
                clientin;
        }
        cliento8: cliento {
            srcId = 72;
            @display("p=932,129");
            gates:
                clientin;
        }
        cliento9: cliento {
            srcId = 73;
            @display("p=932,148");
            gates:
                clientin;
        }
        cliento10: cliento {
            srcId = 74;
            @display("p=932,148");
            gates:
                clientin;
        }
        cliento11: cliento {
            srcId = 75;
            @display("p=932,167");
            gates:
                clientin;
        }
        cliento12: cliento {
            srcId = 76;
            @display("p=932,195");
            gates:
                clientin;
        }
        cliento13: cliento {
            srcId = 77;
            @display("p=932,218");
            gates:
                clientin;
        }
        cliento14: cliento {
            srcId = 78;
            @display("p=932,240");
            gates:
                clientin;
        }
        cliento15: cliento {
            srcId = 79;
            @display("p=937,261");
            gates:
                clientin;
        }
        cliento16: cliento {
            srcId = 80;
            @display("p=937,272");
            gates:
                clientin;
        }
        cliento17: cliento {
            srcId = 81;
            @display("p=937,298");
            gates:
                clientin;
        }
        cliento18: cliento {
            srcId = 82;
            @display("p=937,326");
            gates:
                clientin;
        }
        cliento19: cliento {
            srcId = 83;
            @display("p=937,345");
            gates:
                clientin;
        }
        cliento20: cliento {
            srcId = 84;
            @display("p=937,370");
            gates:
                clientin;
        }
        cliento21: cliento {
            srcId = 85;
            @display("p=937,392");
            gates:
                clientin;
        }
        cliento22: cliento {
            srcId = 86;
            @display("p=937,419");
            gates:
                clientin;
        }
        cliento23: cliento {
            srcId = 87;
            @display("p=938,441");
            gates:
                clientin;
        }
        cliento24: cliento {
            srcId = 88;
            @display("p=937,465");
            gates:
                clientin;
        }
        cliento25: cliento {
            srcId = 89;
            @display("p=938,483");
            gates:
                clientin;
        }
        cliento26: cliento {
            srcId = 90;
            @display("p=940,501");
            gates:
                clientin;
        }
        cliento27: cliento {
            srcId = 91;
            @display("p=940,529");
            gates:
                clientin;
        }
        cliento28: cliento {
            srcId = 92;
            @display("p=940,546");
            gates:
                clientin;
        }
        cliento29: cliento {
            srcId = 93;
            @display("p=940,565");
            gates:
                clientin;
        }
        cliento30: cliento {
            srcId = 94;
            @display("p=938,576");
            gates:
                clientin;
        }
        cliento31: cliento {
            srcId = 95;
            @display("p=941,604");
            gates:
                clientin;
        }

        cliento32: cliento {
            srcId = 96;

            @display("p=938,622");
            gates:
                clientin;
        }
        cliento33: cliento {
            srcId = 97;

            @display("p=936,640");
            gates:
                clientin;
        }
        cliento34: cliento {
            srcId = 98;

            @display("p=936,661");
            gates:
                clientin;
        }
        cliento35: cliento {
            srcId = 99;

            @display("p=936,682");
            gates:
                clientin;
        }
        cliento36: cliento {
            srcId = 100;

            @display("p=936,702");
            gates:
                clientin;
        }
        cliento37: cliento {
            srcId = 101;

            @display("p=935,726");
            gates:
                clientin;
        }
        cliento38: cliento {
            srcId = 102;

            @display("p=934,745");
            gates:
                clientin;
        }
        cliento39: cliento {
            srcId = 103;

            @display("p=935,769");
            gates:
                clientin;
        }
        cliento40: cliento {
            srcId = 104;

            @display("p=935,772");
            gates:
                clientin;
        }
        cliento41: cliento {
            srcId = 105;

            @display("p=932,792");
            gates:
                clientin;
        }
        cliento42: cliento {
            srcId = 106;

            @display("p=936,811");
            gates:
                clientin;
        }
        cliento43: cliento {
            srcId = 107;

            @display("p=934,816");
            gates:
                clientin;
        }
        cliento44: cliento {
            srcId = 108;

            @display("p=931,824");
            gates:
                clientin;

        }
        cliento45: cliento {
            srcId = 109;

            @display("p=929,843");
            gates:
                clientin;
        }
        cliento46: cliento {
            srcId = 110;

            @display("p=935,854");
            gates:
                clientin;
        }
        cliento47: cliento {
            srcId = 111;

            @display("p=939,860");
            gates:
                clientin;
        }
        cliento48: cliento {
            srcId = 112;

            @display("p=935,875");
            gates:
                clientin;
        }
        cliento49: cliento {
            srcId = 113;

            @display("p=933,891");
            gates:
                clientin;
        }
        cliento50: cliento {
            srcId = 114;

            @display("p=930,899");
            gates:
                clientin;
        }
        cliento51: cliento {
            srcId = 115;

            @display("p=933,915");
            gates:
                clientin;
        }
        cliento52: cliento {
            srcId = 116;

            @display("p=933,942");
            gates:
                clientin;
        }
        cliento53: cliento {
            srcId = 117;

            @display("p=935,960");
            gates:
                clientin;
        }
        cliento54: cliento {
            srcId = 118;

            @display("p=933,971");
            gates:
                clientin;
        }
        cliento55: cliento {
            srcId = 119;


            @display("p=932,985");
            gates:
                clientin;
        }
        cliento56: cliento {
            srcId = 120;

            @display("p=932,1002");
            gates:
                clientin;
        }
        cliento57: cliento {
            srcId = 121;

            @display("p=932,1005");
            gates:
                clientin;
        }
        cliento58: cliento {
            srcId = 122;

            @display("p=928,1025");
            gates:
                clientin;
        }
        cliento59: cliento {
            srcId = 123;

            @display("p=929,1029");
            gates:
                clientin;
        }
        cliento60: cliento {
            srcId = 124;

            @display("p=932,1045");
            gates:
                clientin;
        }
        cliento61: cliento {
            srcId = 125;

            @display("p=926,1049");
            gates:
                clientin;
        }
        cliento62: cliento {
            srcId = 126;

            @display("p=929,1049");
            gates:
                clientin;
        }
        cliento63: cliento {
            srcId = 127;

            @display("p=926,1066");
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
            router16.in[3] <--> Link <--> clienti32.clientout;

            router16.in[2] <--> Link <--> clienti33.clientout;

            router17.in[3] <--> Link <--> clienti34.clientout;

            router17.in[2] <--> Link <--> clienti35.clientout;

            router18.in[3] <--> Link <--> clienti36.clientout;

            router18.in[2] <--> Link <--> clienti37.clientout;


            router19.in[3] <--> Link <--> clienti38.clientout;

            router19.in[2] <--> Link <--> clienti39.clientout;

            router20.in[3] <--> Link <--> clienti40.clientout;

            router20.in[2] <--> Link <--> clienti41.clientout;
            router21.in[3] <--> Link <--> clienti42.clientout;

            router21.in[2] <--> Link <--> clienti43.clientout;

            router22.in[3] <--> Link <--> clienti44.clientout;

            router22.in[2] <--> Link <--> clienti45.clientout;
            router23.in[3] <--> Link <--> clienti46.clientout;

            router23.in[2] <--> Link <--> clienti47.clientout;

            router24.in[3] <--> Link <--> clienti48.clientout;

            router24.in[2] <--> Link <--> clienti49.clientout;
            router25.in[3] <--> Link <--> clienti50.clientout;

            router25.in[2] <--> Link <--> clienti51.clientout;

            router26.in[3] <--> Link <--> clienti52.clientout;

            router26.in[2] <--> Link <--> clienti53.clientout;
            router27.in[3] <--> Link <--> clienti54.clientout;

            router27.in[2] <--> Link <--> clienti55.clientout;

            router28.in[3] <--> Link <--> clienti56.clientout;

            router28.in[2] <--> Link <--> clienti57.clientout;
            router29.in[3] <--> Link <--> clienti58.clientout;

            router29.in[2] <--> Link <--> clienti59.clientout;

            router30.in[3] <--> Link <--> clienti60.clientout;

            router30.in[2] <--> Link <--> clienti61.clientout;
            router31.in[3] <--> Link <--> clienti62.clientout;

            router31.in[2] <--> Link <--> clienti63.clientout;

            router160.out[1] <--> Link <--> cliento0.clientin;

            router160.out[0] <--> Link <--> cliento1.clientin;

            router161.out[1] <--> Link <--> cliento2.clientin;

            router161.out[0] <--> Link <--> cliento3.clientin;

            router162.out[1] <--> Link <--> cliento4.clientin;

            router162.out[0] <--> Link <--> cliento5.clientin;

            router163.out[1] <--> Link <--> cliento6.clientin;

            router163.out[0] <--> Link <--> cliento7.clientin;

            router164.out[1] <--> Link <--> cliento8.clientin;

            router164.out[0] <--> Link <--> cliento9.clientin;

            router165.out[1] <--> Link <--> cliento10.clientin;

            router165.out[0] <--> Link <--> cliento11.clientin;

            router166.out[1] <--> Link <--> cliento12.clientin;

            router166.out[0] <--> Link <--> cliento13.clientin;

            router167.out[1] <--> Link <--> cliento14.clientin;

            router167.out[0] <--> Link <--> cliento15.clientin;

            router168.out[1] <--> Link <--> cliento16.clientin;

            router168.out[0] <--> Link <--> cliento17.clientin;

            router169.out[1] <--> Link <--> cliento18.clientin;

            router169.out[0] <--> Link <--> cliento19.clientin;

            router170.out[1] <--> Link <--> cliento20.clientin;

            router170.out[0] <--> Link <--> cliento21.clientin;

            router171.out[1] <--> Link <--> cliento22.clientin;

            router171.out[0] <--> Link <--> cliento23.clientin;

            router172.out[1] <--> Link <--> cliento24.clientin;

            router172.out[0] <--> Link <--> cliento25.clientin;

            router173.out[1] <--> Link <--> cliento26.clientin;

            router173.out[0] <--> Link <--> cliento27.clientin;

            router174.out[1] <--> Link <--> cliento28.clientin;

            router174.out[0] <--> Link <--> cliento29.clientin;

            router175.out[1] <--> Link <--> cliento30.clientin;

            router175.out[0] <--> Link <--> cliento31.clientin;
            router176.out[1] <--> Link <--> cliento32.clientin;

            router176.out[0] <--> Link <--> cliento33.clientin;

            router177.out[1] <--> Link <--> cliento34.clientin;

            router177.out[0] <--> Link <--> cliento35.clientin;
            router178.out[1] <--> Link <--> cliento36.clientin;

            router178.out[0] <--> Link <--> cliento37.clientin;

            router179.out[1] <--> Link <--> cliento38.clientin;

            router179.out[0] <--> Link <--> cliento39.clientin;
            router180.out[1] <--> Link <--> cliento40.clientin;

            router180.out[0] <--> Link <--> cliento41.clientin;

            router181.out[1] <--> Link <--> cliento42.clientin;

            router181.out[0] <--> Link <--> cliento43.clientin;
            router182.out[1] <--> Link <--> cliento44.clientin;

            router182.out[0] <--> Link <--> cliento45.clientin;

            router183.out[1] <--> Link <--> cliento46.clientin;

            router183.out[0] <--> Link <--> cliento47.clientin;
            router184.out[1] <--> Link <--> cliento48.clientin;

            router184.out[0] <--> Link <--> cliento49.clientin;

            router185.out[1] <--> Link <--> cliento50.clientin;

            router185.out[0] <--> Link <--> cliento51.clientin;
            router186.out[1] <--> Link <--> cliento52.clientin;

            router186.out[0] <--> Link <--> cliento53.clientin;

            router187.out[1] <--> Link <--> cliento54.clientin;

            router187.out[0] <--> Link <--> cliento55.clientin;
            router188.out[1] <--> Link <--> cliento56.clientin;

            router188.out[0] <--> Link <--> cliento57.clientin;

            router189.out[1] <--> Link <--> cliento58.clientin;

            router189.out[0] <--> Link <--> cliento59.clientin;
            router190.out[1] <--> Link <--> cliento60.clientin;

            router190.out[0] <--> Link <--> cliento61.clientin;

            router191.out[1] <--> Link <--> cliento62.clientin;

            router191.out[0] <--> Link <--> cliento63.clientin;



            router128.out[1] <--> Link <--> router160.in[3];
            router128.out[0] <--> Link <--> router161.in[2];
            router129.out[0] <--> Link <--> router161.in[3];
            router129.out[1] <--> Link <--> router160.in[2];
            router130.out[1] <--> Link <--> router162.in[3];
            router130.out[0] <--> Link <--> router163.in[2];
            router131.out[0] <--> Link <--> router163.in[3];
            router131.out[1] <--> Link <--> router162.in[2];

            router132.out[1] <--> Link <--> router164.in[3];
            router132.out[0] <--> Link <--> router165.in[2];
            router133.out[0] <--> Link <--> router165.in[3];
            router133.out[1] <--> Link <--> router164.in[2];

            router134.out[1] <--> Link <--> router166.in[3];
            router134.out[0] <--> Link <--> router167.in[2];
            router135.out[0] <--> Link <--> router167.in[3];
            router135.out[1] <--> Link <--> router166.in[2];

            router136.out[1] <--> Link <--> router168.in[3];
            router136.out[0] <--> Link <--> router169.in[2];
            router137.out[0] <--> Link <--> router169.in[3];
            router137.out[1] <--> Link <--> router168.in[2];
            router138.out[1] <--> Link <--> router170.in[3];
            router138.out[0] <--> Link <--> router171.in[2];
            router139.out[0] <--> Link <--> router171.in[3];
            router139.out[1] <--> Link <--> router170.in[2];
            router140.out[1] <--> Link <--> router172.in[3];
            router140.out[0] <--> Link <--> router173.in[2];
            router141.out[0] <--> Link <--> router173.in[3];
            router141.out[1] <--> Link <--> router172.in[2];
            router142.out[1] <--> Link <--> router174.in[3];
            router142.out[0] <--> Link <--> router175.in[2];
            router143.out[0] <--> Link <--> router175.in[3];
            router143.out[1] <--> Link <--> router174.in[2];
            router144.out[1] <--> Link <--> router176.in[3];
            router144.out[0] <--> Link <--> router177.in[2];
            router145.out[0] <--> Link <--> router177.in[3];
            router145.out[1] <--> Link <--> router176.in[2];
            router146.out[1] <--> Link <--> router178.in[3];
            router146.out[0] <--> Link <--> router179.in[2];
            router147.out[0] <--> Link <--> router179.in[3];
            router147.out[1] <--> Link <--> router178.in[2];
            router148.out[1] <--> Link <--> router180.in[3];
            router148.out[0] <--> Link <--> router181.in[2];
            router149.out[0] <--> Link <--> router181.in[3];
            router149.out[1] <--> Link <--> router180.in[2];
            router150.out[1] <--> Link <--> router182.in[3];
            router150.out[0] <--> Link <--> router183.in[2];
            router151.out[0] <--> Link <--> router183.in[3];
            router151.out[1] <--> Link <--> router182.in[2];
            router152.out[1] <--> Link <--> router184.in[3];
            router152.out[0] <--> Link <--> router185.in[2];
            router153.out[0] <--> Link <--> router185.in[3];
            router153.out[1] <--> Link <--> router184.in[2];
            router154.out[1] <--> Link <--> router186.in[3];
            router154.out[0] <--> Link <--> router187.in[2];
            router155.out[0] <--> Link <--> router187.in[3];
            router155.out[1] <--> Link <--> router186.in[2];
            router156.out[1] <--> Link <--> router188.in[3];
            router156.out[0] <--> Link <--> router189.in[2];
            router157.out[0] <--> Link <--> router189.in[3];
            router157.out[1] <--> Link <--> router188.in[2];
            router158.out[1] <--> Link <--> router190.in[3];
            router158.out[0] <--> Link <--> router191.in[2];
            router159.out[0] <--> Link <--> router191.in[3];
            router159.out[1] <--> Link <--> router190.in[2];

            router96.out[1] <--> Link <--> router128.in[3];
            router96.out[0] <--> Link <--> router130.in[2];
            router97.out[1] <--> Link <--> router129.in[3];
            router97.out[0] <--> Link <--> router131.in[2];
            router98.out[0] <--> Link <--> router130.in[3];
            router98.out[1] <--> Link <--> router128.in[2];
            router99.out[0] <--> Link <--> router131.in[3];
            router99.out[1] <--> Link <--> router129.in[2];

            router100.out[1] <--> Link <--> router132.in[3];
            router100.out[0] <--> Link <--> router134.in[2];
            router101.out[1] <--> Link <--> router133.in[3];
            router101.out[0] <--> Link <--> router135.in[2];
            router102.out[0] <--> Link <--> router134.in[3];
            router102.out[1] <--> Link <--> router132.in[2];
            router103.out[0] <--> Link <--> router135.in[3];
            router103.out[1] <--> Link <--> router133.in[2];

            router104.out[1] <--> Link <--> router136.in[3];
            router104.out[0] <--> Link <--> router138.in[2];
            router105.out[1] <--> Link <--> router137.in[3];
            router105.out[0] <--> Link <--> router139.in[2];
            router106.out[0] <--> Link <--> router138.in[3];
            router106.out[1] <--> Link <--> router136.in[2];
            router107.out[0] <--> Link <--> router139.in[3];
            router107.out[1] <--> Link <--> router137.in[2];
            router108.out[1] <--> Link <--> router140.in[3];
            router108.out[0] <--> Link <--> router142.in[2];
            router109.out[1] <--> Link <--> router141.in[3];
            router109.out[0] <--> Link <--> router143.in[2];
            router110.out[0] <--> Link <--> router142.in[3];
            router110.out[1] <--> Link <--> router140.in[2];
            router111.out[0] <--> Link <--> router143.in[3];
            router111.out[1] <--> Link <--> router141.in[2];
            router112.out[1] <--> Link <--> router144.in[3];
            router112.out[0] <--> Link <--> router146.in[2];
            router113.out[1] <--> Link <--> router145.in[3];
            router113.out[0] <--> Link <--> router147.in[2];
            router114.out[0] <--> Link <--> router146.in[3];
            router114.out[1] <--> Link <--> router144.in[2];
            router115.out[0] <--> Link <--> router147.in[3];
            router115.out[1] <--> Link <--> router145.in[2];

            router116.out[1] <--> Link <--> router148.in[3];
            router116.out[0] <--> Link <--> router150.in[2];
            router117.out[1] <--> Link <--> router149.in[3];
            router117.out[0] <--> Link <--> router151.in[2];
            router118.out[0] <--> Link <--> router150.in[3];
            router118.out[1] <--> Link <--> router148.in[2];
            router119.out[0] <--> Link <--> router151.in[3];
            router119.out[1] <--> Link <--> router149.in[2];

            router120.out[1] <--> Link <--> router152.in[3];
            router120.out[0] <--> Link <--> router154.in[2];
            router121.out[1] <--> Link <--> router153.in[3];
            router121.out[0] <--> Link <--> router155.in[2];
            router122.out[0] <--> Link <--> router154.in[3];
            router122.out[1] <--> Link <--> router152.in[2];
            router123.out[0] <--> Link <--> router155.in[3];
            router123.out[1] <--> Link <--> router153.in[2];
            router124.out[1] <--> Link <--> router156.in[3];
            router124.out[0] <--> Link <--> router158.in[2];
            router125.out[1] <--> Link <--> router157.in[3];
            router125.out[0] <--> Link <--> router159.in[2];
            router126.out[0] <--> Link <--> router158.in[3];
            router126.out[1] <--> Link <--> router156.in[2];
            router127.out[0] <--> Link <--> router159.in[3];
            router127.out[1] <--> Link <--> router157.in[2];
            router64.out[1] <--> Link <--> router96.in[3];
            router64.out[0] <--> Link <--> router100.in[2];
            router65.out[1] <--> Link <--> router97.in[3];
            router65.out[0] <--> Link <--> router101.in[2];
            router66.out[1] <--> Link <--> router98.in[3];
            router66.out[0] <--> Link <--> router102.in[2];
            router67.out[1] <--> Link <--> router99.in[3];
            router67.out[0] <--> Link <--> router103.in[2];
            router68.out[0] <--> Link <--> router100.in[3];
            router68.out[1] <--> Link <--> router96.in[2];
            router69.out[0] <--> Link <--> router101.in[3];
            router69.out[1] <--> Link <--> router97.in[2];
            router70.out[0] <--> Link <--> router102.in[3];
            router70.out[1] <--> Link <--> router98.in[2];
            router71.out[0] <--> Link <--> router103.in[3];
            router71.out[1] <--> Link <--> router99.in[2];

            router72.out[1] <--> Link <--> router104.in[3];
            router72.out[0] <--> Link <--> router108.in[2];
            router73.out[1] <--> Link <--> router105.in[3];
            router73.out[0] <--> Link <--> router109.in[2];
            router74.out[1] <--> Link <--> router106.in[3];
            router74.out[0] <--> Link <--> router110.in[2];
            router75.out[1] <--> Link <--> router107.in[3];
            router75.out[0] <--> Link <--> router111.in[2];
            router76.out[0] <--> Link <--> router108.in[3];
            router76.out[1] <--> Link <--> router104.in[2];
            router77.out[0] <--> Link <--> router109.in[3];
            router77.out[1] <--> Link <--> router105.in[2];
            router78.out[0] <--> Link <--> router110.in[3];
            router78.out[1] <--> Link <--> router106.in[2];
            router79.out[0] <--> Link <--> router111.in[3];
            router79.out[1] <--> Link <--> router107.in[2];

            router80.out[1] <--> Link <--> router112.in[3];
            router80.out[0] <--> Link <--> router116.in[2];
            router81.out[1] <--> Link <--> router113.in[3];
            router81.out[0] <--> Link <--> router117.in[2];
            router82.out[1] <--> Link <--> router114.in[3];
            router82.out[0] <--> Link <--> router118.in[2];
            router83.out[1] <--> Link <--> router115.in[3];
            router83.out[0] <--> Link <--> router119.in[2];
            router84.out[0] <--> Link <--> router116.in[3];
            router84.out[1] <--> Link <--> router112.in[2];
            router85.out[0] <--> Link <--> router117.in[3];
            router85.out[1] <--> Link <--> router113.in[2];
            router86.out[0] <--> Link <--> router118.in[3];
            router86.out[1] <--> Link <--> router114.in[2];
            router87.out[0] <--> Link <--> router119.in[3];
            router87.out[1] <--> Link <--> router115.in[2];

            router88.out[1] <--> Link <--> router120.in[3];
            router88.out[0] <--> Link <--> router124.in[2];
            router89.out[1] <--> Link <--> router121.in[3];
            router89.out[0] <--> Link <--> router125.in[2];
            router90.out[1] <--> Link <--> router122.in[3];
            router90.out[0] <--> Link <--> router126.in[2];
            router91.out[1] <--> Link <--> router123.in[3];
            router91.out[0] <--> Link <--> router127.in[2];
            router92.out[0] <--> Link <--> router124.in[3];
            router92.out[1] <--> Link <--> router120.in[2];
            router93.out[0] <--> Link <--> router125.in[3];
            router93.out[1] <--> Link <--> router121.in[2];
            router94.out[0] <--> Link <--> router126.in[3];
            router94.out[1] <--> Link <--> router122.in[2];
            router95.out[0] <--> Link <--> router127.in[3];
            router95.out[1] <--> Link <--> router123.in[2];

            router32.out[1] <--> Link <--> router64.in[3];
            router32.out[0] <--> Link <--> router72.in[2];
            router33.out[1] <--> Link <--> router65.in[3];
            router33.out[0] <--> Link <--> router73.in[2];
            router34.out[1] <--> Link <--> router66.in[3];
            router34.out[0] <--> Link <--> router74.in[2];
            router35.out[1] <--> Link <--> router67.in[3];
            router35.out[0] <--> Link <--> router75.in[2];
            router36.out[1] <--> Link <--> router68.in[3];
            router36.out[0] <--> Link <--> router76.in[2];
            router37.out[1] <--> Link <--> router69.in[3];
            router37.out[0] <--> Link <--> router77.in[2];
            router38.out[1] <--> Link <--> router70.in[3];
            router38.out[0] <--> Link <--> router78.in[2];
            router39.out[1] <--> Link <--> router71.in[3];
            router39.out[0] <--> Link <--> router79.in[2];
            router40.out[0] <--> Link <--> router72.in[3];
            router40.out[1] <--> Link <--> router64.in[2];
            router41.out[0] <--> Link <--> router73.in[3];
            router41.out[1] <--> Link <--> router65.in[2];
            router42.out[0] <--> Link <--> router74.in[3];
            router42.out[1] <--> Link <--> router66.in[2];
            router43.out[0] <--> Link <--> router75.in[3];
            router43.out[1] <--> Link <--> router67.in[2];
            router44.out[0] <--> Link <--> router76.in[3];
            router44.out[1] <--> Link <--> router68.in[2];
            router45.out[0] <--> Link <--> router77.in[3];
            router45.out[1] <--> Link <--> router69.in[2];
            router46.out[0] <--> Link <--> router78.in[3];
            router46.out[1] <--> Link <--> router70.in[2];
            router47.out[0] <--> Link <--> router79.in[3];
            router47.out[1] <--> Link <--> router71.in[2];

            router48.out[1] <--> Link <--> router80.in[3];
            router48.out[0] <--> Link <--> router88.in[2];
            router49.out[1] <--> Link <--> router81.in[3];
            router49.out[0] <--> Link <--> router89.in[2];
            router50.out[1] <--> Link <--> router82.in[3];
            router50.out[0] <--> Link <--> router90.in[2];
            router51.out[1] <--> Link <--> router83.in[3];
            router51.out[0] <--> Link <--> router91.in[2];
            router52.out[1] <--> Link <--> router84.in[3];
            router52.out[0] <--> Link <--> router92.in[2];
            router53.out[1] <--> Link <--> router85.in[3];
            router53.out[0] <--> Link <--> router93.in[2];
            router54.out[1] <--> Link <--> router86.in[3];
            router54.out[0] <--> Link <--> router94.in[2];
            router55.out[1] <--> Link <--> router87.in[3];
            router55.out[0] <--> Link <--> router95.in[2];
            router56.out[0] <--> Link <--> router88.in[3];
            router56.out[1] <--> Link <--> router80.in[2];
            router57.out[0] <--> Link <--> router89.in[3];
            router57.out[1] <--> Link <--> router81.in[2];
            router58.out[0] <--> Link <--> router90.in[3];
            router58.out[1] <--> Link <--> router82.in[2];
            router59.out[0] <--> Link <--> router91.in[3];
            router59.out[1] <--> Link <--> router83.in[2];
            router60.out[0] <--> Link <--> router92.in[3];
            router60.out[1] <--> Link <--> router84.in[2];
            router61.out[0] <--> Link <--> router93.in[3];
            router61.out[1] <--> Link <--> router85.in[2];
            router62.out[0] <--> Link <--> router94.in[3];
            router62.out[1] <--> Link <--> router86.in[2];
            router63.out[0] <--> Link <--> router95.in[3];
            router63.out[1] <--> Link <--> router87.in[2];


            router0.out[1] <--> Link <--> router32.in[3];
            router0.out[0] <--> Link <--> router48.in[2];
            router1.out[1] <--> Link <--> router33.in[3];
            router1.out[0] <--> Link <--> router49.in[2];
            router2.out[1] <--> Link <--> router34.in[3];
            router2.out[0] <--> Link <--> router50.in[2];
            router3.out[1] <--> Link <--> router35.in[3];
            router3.out[0] <--> Link <--> router51.in[2];
            router4.out[1] <--> Link <--> router36.in[3];
            router4.out[0] <--> Link <--> router52.in[2];
            router5.out[1] <--> Link <--> router37.in[3];
            router5.out[0] <--> Link <--> router53.in[2];
            router6.out[1] <--> Link <--> router38.in[3];
            router6.out[0] <--> Link <--> router54.in[2];
            router7.out[1] <--> Link <--> router39.in[3];
            router7.out[0] <--> Link <--> router55.in[2];
            router8.out[1] <--> Link <--> router40.in[3];
            router8.out[0] <--> Link <--> router56.in[2];
            router9.out[1] <--> Link <--> router41.in[3];
            router9.out[0] <--> Link <--> router57.in[2];
            router10.out[1] <--> Link <--> router42.in[3];
            router10.out[0] <--> Link <--> router58.in[2];
            router11.out[1] <--> Link <--> router43.in[3];
            router11.out[0] <--> Link <--> router59.in[2];
            router12.out[1] <--> Link <--> router44.in[3];
            router12.out[0] <--> Link <--> router60.in[2];
            router13.out[1] <--> Link <--> router45.in[3];
            router13.out[0] <--> Link <--> router61.in[2];
            router14.out[1] <--> Link <--> router46.in[3];
            router14.out[0] <--> Link <--> router62.in[2];
            router15.out[1] <--> Link <--> router47.in[3];
            router15.out[0] <--> Link <--> router63.in[2];

            router16.out[0] <--> Link <--> router48.in[3];
            router16.out[1] <--> Link <--> router32.in[2];
            router17.out[0] <--> Link <--> router49.in[3];
            router17.out[1] <--> Link <--> router33.in[2];
            router18.out[0] <--> Link <--> router50.in[3];
            router18.out[1] <--> Link <--> router34.in[2];
            router19.out[0] <--> Link <--> router51.in[3];
            router19.out[1] <--> Link <--> router35.in[2];
            router20.out[0] <--> Link <--> router52.in[3];
            router20.out[1] <--> Link <--> router36.in[2];
            router21.out[0] <--> Link <--> router53.in[3];
            router21.out[1] <--> Link <--> router37.in[2];
            router22.out[0] <--> Link <--> router54.in[3];
            router22.out[1] <--> Link <--> router38.in[2];
            router23.out[0] <--> Link <--> router55.in[3];
            router23.out[1] <--> Link <--> router39.in[2];
            router24.out[0] <--> Link <--> router56.in[3];
            router24.out[1] <--> Link <--> router40.in[2];
            router25.out[0] <--> Link <--> router57.in[3];
            router25.out[1] <--> Link <--> router41.in[2];
            router26.out[0] <--> Link <--> router58.in[3];
            router26.out[1] <--> Link <--> router42.in[2];
            router27.out[0] <--> Link <--> router59.in[3];
            router27.out[1] <--> Link <--> router43.in[2];
            router28.out[0] <--> Link <--> router60.in[3];
            router28.out[1] <--> Link <--> router44.in[2];
            router29.out[0] <--> Link <--> router61.in[3];
            router29.out[1] <--> Link <--> router45.in[2];
            router30.out[0] <--> Link <--> router62.in[3];
            router30.out[1] <--> Link <--> router46.in[2];
            router31.out[0] <--> Link <--> router63.in[3];
            router31.out[1] <--> Link <--> router47.in[2];






        }


}
