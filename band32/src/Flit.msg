//
// This program is property of its copyright holder. All rights reserved.
//




enum NOC_MSGS
{
  NOC_FLIT_MSG    = 1; 
  NOC_CREDIT_MSG  = 2; 
  NOC_REQ_MSG     = 3;
  NOC_GNT_MSG     = 4;
  NOC_ACK_MSG     = 5;
  NOC_POP_MSG     = 7;
  NOC_GEN_MSG     = 8;
  NOC_APP_MSG 	  = 9;
  NOC_CLK_MSG 	  = 10;
  
}


enum NOC_FLIT_TYPES
{
    NOC_START_FLIT = 1;
    NOC_MID_FLIT   = 2;
    NOC_END_FLIT   = 3;
}

packet Flit
{
     
    int cId;
    
    int data;     
    int msgLength ;
    int pktLen;
    
    int flitSize; 
  int type;    // first middle end of packet
  int Vc;      // the VC of the FLIT as on the wire
  int pcktId;   // packet id globally unique
  int flits;   // number of flits in this message 
  int flitIdx; // index within the packet
  int srcId;
  int destId;
  int op;
  int pre_r;
  bool firstNet; 
  simtime_t InjectTime; // the time the flit is injected to the NoC , i.e: when it leaves the source`s queue. 
  simtime_t FirstNetTime; // the time the flit is transimitted by a sched,  in order to mask source-router latency effects 
   
}

message NoCAckMsg extends cMessage 
{
  int AckPktId; //paket id 
    
}
message NoCReqMsg extends cMessage 
{
  int ReqPktId;  //packet id 
  int noFlits; //no of flits send
  int srcRouter;
    
}

message NoCGntMsg extends cMessage 
{
  int GntPktId; //pkt id
  int cur_vc;  //currently available vc
    
}
