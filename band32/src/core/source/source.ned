//
// This program is property of its copyright holder. All rights reserved.
// 

package band32.src.core.source;
simple source like band32.src.core.source.source_Ifc
{
    parameters:
           int srcId;
         volatile	int destId; 
         int flitSize @unit(byte);
         int pktLen;
         @display("i=block/source");
        gates:
            inout sourceout;
}