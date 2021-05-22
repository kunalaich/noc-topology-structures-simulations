//
// This program is property of its copyright holder. All rights reserved.
// 

package band64.src.core.source;
moduleinterface source_ifc
{
    parameters:
        int srcId;
        int pktLen;
        @display("i=block/source");
        gates:
            inout sourceout;
}