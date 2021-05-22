/*
 * source.cc
 *
 *  Created on: Nov 21, 2015
 *      Author: lenovo
 */



#include <iostream>
#include "source.h"
#include "simtime.h"
#include<omnetpp.h>
#include "Flit_m.h"
Define_Module(source);

void source::initialize()
{

        srcId = par("srcId");

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



        if(destId < 0)
        {
            EV<< "-I- " << getFullPath() << " is turned OFF" << endl;
        }
         else
        {

             if (srcId == destId)
                 {
                         if(srcId%2 == 0)
                         destId= destId+1;
                         else
                         destId= destId-1;

                 }
                       EV<<"SOURCE--Source ID:"<<srcId<<" and Destination ID: "<<destId<<endl;
                        char newmessage[32];
                        sprintf(newmessage, "generated-%d", srcId);
                        EV<<"SOURCE--New message has generated at client: "<< srcId<<endl;
                        newmsg = new cMessage("newmessage");
                        scheduleAt(simTime(), newmsg);


                       /* Flit *newmsg = new Flit(newmessage);

                        newmsg->setDestId(destId);
                        newmsg->setCId(srcId);
                        newmsg->setPcktId(pcktId);
                        newmsg->setData(data);
                        newmsg->setByteLength(flitSize);
                        newmsg->setBitLength(8 * flitSize );

                        newmsg->setTimestamp();
                        send(newmsg, "sourceout$o");
                        noflitssent++;*/



                        //cGate *g = gate("sourceout$o")->getNextGate();
                        flag=false;
#ifdef TRACE_MSG
            EV << "Message created from Source." << endl;
    #endif

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


void source::handleGenMsg(cMessage *msg)
{
    flitSize = par(flitSize);
                  numPktSent++;
                  numQueuedPkts++;
                  pktIdx++;
                  curPktId = intuniform(1,1000);
                  curPktIdx++;
                  curPktLen = par("pktLen");
                              if (curMsgLen <= 0)
                              {
                                        throw cRuntimeError("-E- can not handle <= 0 packets message");
                               }
                           // curPktIdx = 0;
                   destId = par("destId");

                   //
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
                                  destId = destId+1;
                                  else
                                  destId = destId-1;
                              }

                          flit->setDestId(destId);
                          flit->setPcktId(curPktId);
                          flit->setFlitIdx(flitIdx);
                         // newmsg->setDestId(destId);
                                                  flit->setCId(srcId);
                                                  flit->setPcktId(pcktId);
                                                  flit->setData(data);
                                                  flit->setByteLength(flitSize);
                                                  flit->setBitLength(8 * flitSize );
                          //flit->setPre_r(0);
                          if (flitIdx == 0)
                              {
                                    flit->setType(NOC_START_FLIT);
                                    flit->setCId(srcId);
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
                      }



}

void source::handleMessage(cMessage *msg)
{   int sID=par("srcId");
if(sID==1)
{
    /*int kind=msg->getKind();
    if (kind ==NOC_ACK_MSG)
        {
            EV<<"got an ack from router"<<endl;
        }

    else*/
    handleGenMsg(msg);
    EV<<"SOURCE--Number of packets sent= "<<numPktSent<<" from src="<<sID<<endl;
}
}
  void source:: finish() { }
  source:: ~source() { }


