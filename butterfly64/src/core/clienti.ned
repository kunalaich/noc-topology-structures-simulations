//
// This program is property of its copyright holder. All rights reserved.
// 

package butterfly64.src.core;

import butterfly64.src.core.source.source;
//
// TODO documentation
//
module clienti like clienti_Ifc
{
    parameters:
        int srcId;
        string sourceType;
        
        @display("i=abstract/person");
    gates:
        
        inout clientout;
    submodules:
        source: source {
            srcId = srcId;
            @display("p=73,77");
        }
    connections:
        source.sourceout <--> clientout;
}
