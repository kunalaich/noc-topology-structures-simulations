//
// This program is property of its copyright holder. All rights reserved.
// 

package butterfly64.src.core;
import butterfly64.src.core.sink.sink;

//
// TODO documentation
//
module cliento like cliento_Ifc
{
    parameters:
        int srcId;
        
        string sinkType;
        @display("i=abstract/person");
    gates:
        inout clientin;
        
    submodules:
        sink: sink {
            srcId = srcId;
            @display("p=152,47");
        }
    connections:
        sink.sinkin <--> clientin;
}
