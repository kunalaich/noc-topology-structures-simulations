//
// This program is property of its copyright holder. All rights reserved.
// 

package butterfly64.src.router;
moduleinterface router_Ifc
{
    parameters: 
       
        int noports ;
        int id; // global identifier of a router
    
        @display("i=abstract/router");
      gates: 
             inout in[];   // in gate connectiong to other router
	         inout out[];  // out gate of the router connecting to other router
    
}

