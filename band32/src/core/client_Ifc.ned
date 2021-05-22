//
// This program is property of its copyright holder. All rights reserved.
// 

package band32.src.core;
moduleinterface client_Ifc
{
    parameters:
        int srcId;
        
    @display("i=abstract/person");
gates:
    inout clientin;
    inout clientout;
}
