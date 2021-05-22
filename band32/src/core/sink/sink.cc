/*
 * sink.cc
 *
 *  Created on: Nov 21, 2015
 *      Author: lenovo
 */


#include<omnetpp.h>
#include <stdlib.h>
#include "sink.h"
#include "Flit_m.h"
#include "simtime.h"
#include <math.h>
#include "simkerneldefs.h"
Define_Module(sink);

void sink:: initialize()
{
    srcId = par("srcId");

    numrecvpkt = 0;
    totalTimeTkn=0;
}
 void sink::handleMessage(cMessage *msg)
         {
     Flit *pkt=dynamic_cast<Flit *>(msg);
     int kind=msg->getKind();
         if(kind==NOC_FLIT_MSG){
             double dela= msg->getCreationTime().dbl();
             EV<<"DELAY"<<dela<<endl;

         }
      /*   if(kind== NOC_REQ_MSG)
         {
             EV<<" CLIENT got an request msg"<<endl;
                             //new code
                             char gntName[64];
                             sprintf(gntName,"gntmsg ");
                             NoCGntMsg *gnt = new NoCGntMsg(gntName);
                             gnt->setKind(NOC_GNT_MSG);
                             if(gate("sinkin$o")->getTransmissionChannel()->isBusy())
                                  {
                                       simtime_t txFinishTime = gate("sinkin$o")->getTransmissionChannel()->getTransmissionFinishTime();
                                       sendDelayed(gnt, txFinishTime, "sinkin$o");
                                       EV<<"Packet Send Delayed"<<endl;

                                  }
                             else
                                  send(gnt->dup(),"sinkin$o");
                             EV<<"send grn  msg "<<endl;
         }


    */
      //   else
         {

                //sourceid = msg->getSrcId();
                 //pktid=msg->getPktId();
                 //pkttype=pkt->getType();
                 double delay= msg->getArrivalTime().dbl()-msg->getCreationTime().dbl();
                 totalTimeTkn=totalTimeTkn+delay;
                 EV<<"Latency:"<<delay<<endl;
                 EV<<"Total Latency:"<<totalTimeTkn<<endl;
                 EV<<"SINK--Message packet has arrived at destination:"<<srcId<<" from source: "<<pkt->getSrcId()<<" with hop count: "<<pkt->getData() <<endl;
                 numrecvpkt++;// count the number of packets arrived
                 delete msg;
         }
            // delete the message

         }
 void sink::finish(){
     EV<< "No. of Received Packets:"<< numrecvpkt<< endl;
     EV<<"Total Latency:"<<totalTimeTkn<<endl;


 }
