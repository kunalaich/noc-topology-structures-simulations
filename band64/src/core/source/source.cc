/*
 * Source.cc
 *
  */
/*
 * 1. generate 3 packets as flits
 * 2. mark them as start flit, mid flit and end flit
 * 3. queued all the three packets
 * 4. send them one after another after one packet finishes its trasnmission
 * 5. if the destination address and source address is same -
 *      if destination address is Odd -> destination=destination-1;
 *      if destination address is Even -> destination=destination+1;
 * 6. delete the flits from queue after pop sending them
 */

#include <iostream>
#include "simtime.h"
#include "source.h"
#include "Flit_m.h"

Define_Module (source);



void source::initialize()
{

    srcId = par("srcId");
//    no=par("no");
    numPktSent = 0;
    curMsgLen=1;
    maxQueuedPkts=100;
    pktIdx = 0;
    flitIdx = 0;
    numQueuedPkts=0;
    curPktIdx = 0;
    i=0;
    flag=true;
    destId = par("destId");


    if(destId < 0)      // invalid destination address, the source is turned off
    {
        EV<< "-I- " << getFullPath() << " is turned OFF" << endl;
    }
     else                // new message will be create and process
    {
     //  int i=0;
         if (srcId == destId) // if source id and destination id is same, change it
             {
             if(srcId%2==0)
                                               destId=destId+1;
                                               else
                                               destId=destId-1;
              }

       //for(i=0;i<1;i++)
         //if(flag)
             {

                   EV<<"SOURCE--Source ID:"<<srcId<<" and Destination ID: "<<destId<<endl;
                    char newmessage[32];
                    sprintf(newmessage, "generated-%d", srcId);
                    EV<<"SOURCE--New message has generated at client: "<< srcId<<endl;
                    newmsg = new cMessage("newmessage");
                    scheduleAt(simTime(), newmsg);
                    // obtain the data rate of the outgoing link
                    //cGate *g = gate("sourceout$o")->getNextGate();
                    flag=false;
             }//end of for loop //if lppo
      }
}

void source::sendFlitFromQ()
{
    Flit* flit = (Flit*) Q.pop();

    EV<< "SOURCE--I- "<<flit->getSrcId()<<endl<< getFullPath() << "Flit injected at time: " << simTime() << endl;
  //  cGate *g = gate("sourceout$o")->getNextGate();
    if(gate("sourceout$o")->getTransmissionChannel()->isBusy())
    {
        simtime_t txFinishTime = gate("sourceout$o")->getTransmissionChannel()->getTransmissionFinishTime();
        sendDelayed(flit, txFinishTime, "sourceout$o");
    }
    else
        send(flit, "sourceout$o");
    EV<<"SOURCE--Flit has sent out from source: "<<flit->getSrcId()<<endl;
  //  numPktSent++;
//else EV<<"No flit send";
}

//generate new message packet
void source::handleGenMsg(cMessage *msg)
{

                  numPktSent++;
                  numQueuedPkts++;
                  pktIdx++;
                  curPktId = (srcId << 16) + pktIdx;
                  curPktIdx++;
                  curPktLen = par("pktLen");
                              if (curMsgLen <= 0)
                              {
                                        throw cRuntimeError("-E- can not handle <= 0 packets message");
                               }
                           // curPktIdx = 0;
                   destId = par("destId");



                  for (flitIdx = 0; flitIdx < curPktLen; flitIdx++)
                      {  // devide a packet into flits
                          char flitName[128];
                          sprintf(flitName, "flit-s:%d-dest:%d-pID:%d-fID:%d", srcId, destId, pktIdx,flitIdx);
                          Flit *flit = new Flit(flitName);
                          flit->setKind(NOC_FLIT_MSG);
                          flit->setSrcId(srcId);
                          if (srcId == destId) // if source id and destination id is same, change it
                              {
                                  if(srcId%2==0)
                                  destId=destId+1;
                                  else
                                  destId=destId-1;
                              }

                          flit->setDestId(destId);
                          flit->setPcktId(curPktId);
                          flit->setFlitIdx(flitIdx);

                          ////////////////////////
                          flit->setCId(srcId);
                                                                          flit->setPcktId(pcktId);
                                                                          flit->setData(data);
                                                                          flit->setByteLength(flitSize);
                                                                          flit->setBitLength(8 * flitSize );

                         // flit->setByteLength(4);
                          //flit->setPre_r(0);
                          if (flitIdx == 0)
                              {
                                    flit->setType(NOC_START_FLIT);
                                    EV<<"start flit ready   "<<"src id   "<<flit->getSrcId()<<"   dest id   "<<flit->getDestId()<<endl;
                              }
                          else if (flitIdx == curPktLen - 1)
                              {
                                    flit->setType(NOC_END_FLIT);
                                   // flit->setType(NOC_END_FLIT);
                                     EV<<"end flit ready  "<<"src id   "<<flit->getSrcId()<<"   dest id   "<<flit->getDestId()<<endl;
                               }
                          else {
                                    flit->setType(NOC_MID_FLIT);
                                    //flit->setType(NOC_MID_FLIT);
                                    EV<<"start MID ready  "<<"src id   "<<flit->getSrcId()<<"   dest id   "<<flit->getDestId()<<endl;
                               }
                                Q.insert(flit);
                                sendFlitFromQ();
                      }//end of for loop


          //  }//end of if
}//end of handle msg



void source::handleMessage(cMessage *msg)
{   int sID=par("srcId");
//if(sID==0)
{
    int kind=msg->getKind();
    if (kind ==NOC_ACK_MSG)
        {
            EV<<"got an ack from router"<<endl;
        }

    else
    handleGenMsg(msg);
    EV<<"SOURCE--Number of packets sent= "<<numPktSent<<" from src="<<sID<<endl;
}
}




void source::finish()
{

}


source::~source()
{
}
