//
// This program is property of its copyright holder. All rights reserved.
// 

package butterfly32.src.core.sink;
simple sink like sink_Ifc
{
    parameters:
        int srcId;
        @display("i=block/sink");
        gates:
            inout sinkin;
}