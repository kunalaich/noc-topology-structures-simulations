//
// This program is property of its copyright holder. All rights reserved.
// 

package band64.src.core.source;
simple source like band64.src.core.source.source_ifc
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