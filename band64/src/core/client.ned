//
// This program is property of its copyright holder. All rights reserved.
// 

package band64.src.core;
import band64.src.core.sink.sink;
import band64.src.core.source.source;
//
// TODO documentation
//
module client like client_Ifc
{
    parameters:
        int srcId;
        string sourceType;
        string sinkType;
        @display("i=abstract/person");
    gates:
        inout clientin;
        inout clientout;
    submodules:
        sink: sink {
            srcId=srcId;
            @display("p=152,47");
        }
        source: source {
            srcId=srcId;
            @display("p=73,77");
        }
        connections:
            source.sourceout <--> clientout;
            sink.sinkin <--> clientin;
}
