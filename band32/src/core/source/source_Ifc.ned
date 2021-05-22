//
// This program is property of its copyright holder. All rights reserved.
// 

package band32.src.core.source;
moduleinterface source_Ifc
{
    parameters:
        int srcId;
        int pktLen;
        
        @display("i=block/source");
        gates:
            inout sourceout;
}