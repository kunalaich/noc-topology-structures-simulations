//
// This program is property of its copyright holder. All rights reserved.
// 

package butterfly64.src.router;
moduleinterface port_Ifc
{
    parameters:
        int noports;
        @display("i=block/broadcast");
    gates:
        inout in;
        inout out;
        inout portinterin[4];
        inout portinterout[4];
}