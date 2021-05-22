//#ifndef SCHEDULER_CC_
//#define SCHEDULER_CC_
#include "scheduler.h"
#include "Flit_m.h"
#include "simtime.h"
 #include<omnetpp.h>
Define_Module(scheduler);


int scheduler::getOutport(int destId, int rId,int destR)
{

    EV<<"   dest id    "<<destId<<"   rId   "<<rId<<"   dest R   "<<destR<<endl;

        if(rId==destR)
            {

                if(destId%2==0)
                {
                    opline=0;
                    return(opline);
                }
                else
                    {opline=1;
                    return(opline);
                    }
            }
        else if(destR==0)
        {
            if (rId==1||rId==2||rId==3||rId==4||rId==5||rId==6||rId==7||rId==8||rId==9||rId==10||rId==11||rId==12||rId==13||rId==14||rId==15||rId==17||rId==18||rId==19||rId==20||rId==21||rId==22||rId==23||rId==25||rId==26||rId==27||rId==29)
                {opline=2;
                return(opline);
                }
            if (rId==30||rId==28||rId==24||rId==16)
                {opline=0;
                return(opline);
                }

        }

        else if(destR==1)
               {
            if (rId==0||rId==2||rId==3||rId==4||rId==5||rId==6||rId==7||rId==8||rId==9||rId==10||rId==11||rId==12||rId==13||rId==14||rId==15||rId==17||rId==18||rId==19||rId==20||rId==21||rId==22||rId==23||rId==25||rId==26||rId==27||rId==29)
                            {opline=2;
                            return(opline);
                            }
                        if (rId==30||rId==28||rId==24)
                            {opline=0;
                            return(opline);
                            }
                   if(rId==16)
                       {opline=1;
                       return(opline);
                       }


               }
        else if(destR==2)
                      {
            if (rId==1||rId==0||rId==3||rId==4||rId==5||rId==6||rId==7||rId==8||rId==9||rId==10||rId==11||rId==12||rId==13||rId==14||rId==15||rId==16||rId==18||rId==19||rId==20||rId==21||rId==22||rId==23||rId==25||rId==26||rId==27||rId==29)
                            {opline=2;
                            return(opline);
                            }
                        if (rId==30||rId==28||rId==17)
                            {opline=0;
                            return(opline);
                            }
                          if(rId==24)
                              {opline=1;
                              return(opline);
                              }

                      }
        else if(destR==3)
                       {

            if (rId==1||rId==0||rId==2||rId==4||rId==5||rId==6||rId==7||rId==8||rId==9||rId==10||rId==11||rId==12||rId==13||rId==14||rId==15||rId==16||rId==18||rId==19||rId==20||rId==21||rId==22||rId==23||rId==25||rId==26||rId==27||rId==29)
                            {opline=2;
                            return(opline);
                            }
                        if (rId==30||rId==28)
                            {opline=0;
                            return(opline);
                            }
                          if(rId==24||rId==17)
                              {opline=1;
                              return(opline);
                              }
                              }

        else if(destR==4)
        {
            if (rId==1||rId==0||rId==3||rId==2||rId==5||rId==6||rId==7||rId==8||rId==9||rId==10||rId==11||rId==12||rId==13||rId==14||rId==15||rId==16||rId==17||rId==19||rId==20||rId==21||rId==22||rId==23||rId==24||rId==26||rId==27||rId==29)
                            {opline=2;
                            return(opline);
                            }
                        if (rId==30||rId==25||rId==18)
                            {opline=0;
                            return(opline);
                            }
                          if(rId==28)
                              {opline=1;
                              return(opline);
                              }
        }
        else if(destR==5)
        {
            if (rId==1||rId==0||rId==3||rId==4||rId==2||rId==6||rId==7||rId==8||rId==9||rId==10||rId==11||rId==12||rId==13||rId==14||rId==15||rId==16||rId==17||rId==19||rId==20||rId==21||rId==22||rId==24||rId==23||rId==26||rId==27||rId==29)
                                        {opline=2;
                                        return(opline);
                                        }
                                    if (rId==30||rId==25)
                                        {opline=0;
                                        return(opline);
                                        }
                                      if(rId==28||rId==18)
                                          {opline=1;
                                          return(opline);
                                          }        }
        else if(destR==6)
        {
            if (rId==1||rId==0||rId==3||rId==4||rId==2||rId==5||rId==7||rId==8||rId==9||rId==10||rId==11||rId==12||rId==13||rId==14||rId==15||rId==16||rId==17||rId==18||rId==20||rId==21||rId==22||rId==24||rId==23||rId==26||rId==27||rId==29)
                                                    {opline=2;
                                                    return(opline);
                                                    }
                                                if (rId==30||rId==19)
                                                    {opline=0;
                                                    return(opline);
                                                    }
                                                  if(rId==28||rId==25)
                                                      {opline=1;
                                                      return(opline);
                                                      }
        }
        else if(destR==7)
        {
            if (rId==1||rId==0||rId==3||rId==4||rId==2||rId==5||rId==6||rId==8||rId==9||rId==10||rId==11||rId==12||rId==13||rId==14||rId==15||rId==16||rId==17||rId==18||rId==20||rId==21||rId==22||rId==24||rId==23||rId==26||rId==27||rId==29)
                                                                {opline=2;
                                                                return(opline);
                                                                }
                                                            if (rId==30)
                                                                {opline=0;
                                                                return(opline);
                                                                }
                                                              if(rId==28||rId==25||rId==19)
                                                                  {opline=1;
                                                                  return(opline);
                                                                  }
        }
        else if(destR==8)
               {
            if (rId==1||rId==0||rId==3||rId==4||rId==2||rId==5||rId==6||rId==7||rId==9||rId==10||rId==11||rId==12||rId==13||rId==14||rId==15||rId==16||rId==17||rId==18||rId==19||rId==21||rId==22||rId==24||rId==23||rId==25||rId==27||rId==28)
                                                                            {opline=2;
                                                                            return(opline);
                                                                            }
                                                                        if (rId==29||rId==26||rId==20)
                                                                            {opline=0;
                                                                            return(opline);
                                                                            }
                                                                          if(rId==30)
                                                                              {opline=1;
                                                                              return(opline);
                                                                              }

               }

               else if(destR==9)
                      {
                   if (rId==1||rId==0||rId==3||rId==4||rId==2||rId==5||rId==6||rId==7||rId==8||rId==10||rId==11||rId==12||rId==13||rId==14||rId==15||rId==16||rId==17||rId==18||rId==19||rId==21||rId==22||rId==24||rId==23||rId==25||rId==27||rId==28)
                                                                                             {opline=2;
                                                                                             return(opline);
                                                                                             }
                                                                                         if (rId==29||rId==26)
                                                                                             {opline=0;
                                                                                             return(opline);
                                                                                             }
                                                                                           if(rId==30||rId==20)
                                                                                               {opline=1;
                                                                                               return(opline);
                                                                                               }

                      }
               else if(destR==10)
                             {
                   if (rId==1||rId==0||rId==3||rId==4||rId==2||rId==5||rId==6||rId==7||rId==9||rId==8||rId==11||rId==12||rId==13||rId==14||rId==15||rId==16||rId==17||rId==18||rId==19||rId==20||rId==22||rId==24||rId==23||rId==25||rId==27||rId==28)
                                                                                                                {opline=2;
                                                                                                                return(opline);
                                                                                                                }
                                                                                                            if (rId==29||rId==21)
                                                                                                                {opline=0;
                                                                                                                return(opline);
                                                                                                                }
                                                                                                              if(rId==30||rId==26)
                                                                                                                  {opline=1;
                                                                                                                  return(opline);
                                                                                                                  }

                             }
               else if(destR==11)
                              {
                   if (rId==1||rId==0||rId==3||rId==4||rId==2||rId==5||rId==6||rId==7||rId==9||rId==8||rId==10||rId==12||rId==13||rId==14||rId==15||rId==16||rId==17||rId==18||rId==19||rId==20||rId==22||rId==24||rId==23||rId==25||rId==27||rId==28)
                                                                                                                                   {opline=2;
                                                                                                                                   return(opline);
                                                                                                                                   }
                                                                                                                               if (rId==29)
                                                                                                                                   {opline=0;
                                                                                                                                   return(opline);
                                                                                                                                   }
                                                                                                                                 if(rId==30||rId==26||rId==21)
                                                                                                                                     {opline=1;
                                                                                                                                     return(opline);
                                                                                                                                     }
                                     }

               else if(destR==12)
               {
                   if (rId==1||rId==0||rId==3||rId==4||rId==2||rId==5||rId==6||rId==7||rId==9||rId==8||rId==11||rId==10||rId==13||rId==14||rId==15||rId==16||rId==17||rId==18||rId==19||rId==20||rId==21||rId==24||rId==23||rId==25||rId==26||rId==28)
                                                                                                                                                     {opline=2;
                                                                                                                                                     return(opline);
                                                                                                                                                     }
                                                                                                                                                 if (rId==27||rId==22)
                                                                                                                                                     {opline=0;
                                                                                                                                                     return(opline);
                                                                                                                                                     }
                                                                                                                                                   if(rId==30||rId==29)
                                                                                                                                                       {opline=1;
                                                                                                                                                       return(opline);
                                                                                                                                                       }
               }
               else if(destR==13)
               {
                   if (rId==1||rId==0||rId==3||rId==4||rId==2||rId==5||rId==6||rId==7||rId==9||rId==8||rId==11||rId==10||rId==12||rId==14||rId==15||rId==16||rId==17||rId==18||rId==19||rId==20||rId==21||rId==24||rId==23||rId==25||rId==26||rId==28)
                                                                                                                                                                        {opline=2;
                                                                                                                                                                        return(opline);
                                                                                                                                                                        }
                                                                                                                                                                    if (rId==27)
                                                                                                                                                                        {opline=0;
                                                                                                                                                                        return(opline);
                                                                                                                                                                        }
                                                                                                                                                                      if(rId==30||rId==29||rId==22)
                                                                                                                                                                          {opline=1;
                                                                                                                                                                          return(opline);}
                                                                          }
               else if(destR==14)
               {
                   if (rId==1||rId==0||rId==3||rId==4||rId==2||rId==5||rId==6||rId==7||rId==9||rId==8||rId==11||rId==10||rId==12||rId==13||rId==15||rId==16||rId==17||rId==18||rId==19||rId==20||rId==21||rId==24||rId==22||rId==25||rId==26||rId==28)
                                                                                                                                                                                          {opline=2;
                                                                                                                                                                                          return(opline);
                                                                                                                                                                                          }
                                                                                                                                                                                      if (rId==23)
                                                                                                                                                                                          {opline=0;
                                                                                                                                                                                          return(opline);
                                                                                                                                                                                          }
                                                                                                                                                                                        if(rId==30||rId==29||rId==27)
                                                                                                                                                                                            {opline=1;
                                                                                                                                                                                            return(opline);}

               }
               else if(destR==15)
               {
                   if (rId==1||rId==0||rId==3||rId==4||rId==2||rId==5||rId==6||rId==7||rId==9||rId==8||rId==11||rId==10||rId==12||rId==13||rId==15||rId==16||rId==17||rId==18||rId==19||rId==20||rId==21||rId==24||rId==22||rId==25||rId==26||rId==28)
                                                                                                                                                                                                             {opline=2;
                                                                                                                                                                                                             return(opline);
                                                                                                                                                                                                             }
                                                                                                                                                                                                         if (rId==23)
                                                                                                                                                                                                             {opline=1;
                                                                                                                                                                                                             return(opline);
                                                                                                                                                                                                             }
                                                                                                                                                                                                           if(rId==30||rId==29||rId==27)
                                                                                                                                                                                                               {opline=1;
                                                                                                                                                                                                               return(opline);

                                                                                                                                                                                                               }
               }


}

void scheduler::initialize()
{

                busyTime = 0;
                isBusy = false;
                numPktSent = 0;
                opline = 0;
                buf_flag=0;
                pre_r=0;
                flag=true;
                outport=0;
                insert_flag=false;
                to_be_recv_flit=0;


}
void scheduler::handleMessage(cMessage *msg)
{
int msgType = msg->getKind();
Flit *pkt=dynamic_cast<Flit *>(msg);
//Mypacket *pkt = dynamic_cast<Mypacket *>(msg);
cGate *ingate = pkt->getArrivalGate();
//cModule *router=getParentModule()->getParentModule();


type=pkt->getType();
EV << "-The value of destination-" << pkt->getDestId() << endl;
EV << "-The value of source-" << pkt->getSrcId() << endl;

simtime_t_cref cTime = msg->getCreationTime();
simtime_t_cref sTime = msg->getSendingTime();
EV << "Message Creation Time is"<< cTime << endl;
EV << "Message Sending Time is"<< sTime << endl;


if (ingate == gate("sc_in$i"))//new msg
{
        cModule *router=getParentModule()->getParentModule();
    int rId= router->par("id"); //ID of this router

    int destId; //variable to store destination id
    Flit *pkt=dynamic_cast<Flit *>(msg);
    EV<<" Source ID: "<<pkt->getSrcId()<<endl;
    destId=pkt->getDestId(); // fetch destination client id from the messsage
    EV<<" Destination client ID:"<<destId<<endl;

    int destR;
    int temp=destId%32;
        if(temp==0 || temp==1)
            {
                destR=0;
            }
        if(temp==2 || temp==3)
                {
                    destR=1;
                }
        if(temp==4 || temp==5)
                {
                    destR=2;
                }
        if(temp==6 || temp==7)
                {
                    destR=3;
                }
        if(temp==8 || temp==9)
            {
                destR=4;
            }
        if(temp==10 || temp==11)
                {
                    destR=5;
                }
        if(temp==12 || temp==13)
                {
                    destR=6;
                }
        if(temp==14 || temp==15)
                {
                    destR=7;
                }
        if(temp==16 || temp==17)
                    {
                        destR=8;
                    }
                if(temp==18 || temp==19)
                        {
                            destR=9;
                        }
                if(temp==20 || temp==21)
                        {
                            destR=10;
                        }
                if(temp==22 || temp==23)
                        {
                            destR=11;
                        }
                if(temp==24 || temp==25)
                    {
                        destR=12;
                    }
                if(temp==26 || temp==27)
                        {
                            destR=13;
                        }
                if(temp==28 || temp==29)
                        {
                            destR=14;
                        }
                if(temp==30 || temp==31)
                        {
                            destR=15;
                        }



        int opline= getOutport(destId, rId,destR);
        pkt->setOp(opline);
                                                      Q.insert(msg);
                                                     if(Q.length()==1)//start flit
                                                     {
                                                         int data=pkt->getData();
                                                         data=data+1;
                                                         pkt->setData(data);
                                                         handleNewMessage(pkt);

                                                     }

                                                         /* while(!Q.empty()) {
                                                              Flit *foundFlit = NULL;
                                                              foundFlit = (Flit*) Q.pop();
                                                             // outport=pkt->getOp();

                                                              send(foundFlit, "scctrl_out$o",outport);
                                                  }*/
                                                      }
           // send(msg, "scctrl_out$o",outport);




    if(ingate == gate("scctrl_in$i",0) || ingate == gate("scctrl_in$i",1) || ingate == gate("scctrl_in$i",2))
    {

        EV << "-Message to send to upward now...-"<< endl;
        if(gate("sc_out$o")->getTransmissionChannel()->isBusy())
        {
                                                         EV << "-E-" << getFullPath() << " out port of router Port is busy. will be available in " << (gate("sc_out$o")->getTransmissionChannel()->getTransmissionFinishTime()-simTime()) << endl;
                                                         simtime_t txFinishTime = gate("sc_out$o")->getTransmissionChannel()->getTransmissionFinishTime();

                                                         sendDelayed(msg,txFinishTime, "sc_out$o");

                                                     }else{
                                      send (msg, "sc_out$o");}


    }
        simtime_t aTime = msg->getArrivalTime();
        EV << "Message Arrival Time is"<< aTime << endl;

    }
    void scheduler::handleNewMessage(Flit *msg)
    {

       // Mypacket *pkt = dynamic_cast<Mypacket *>(msg);
        Flit *pkt=dynamic_cast<Flit *>(msg);
        outport=pkt->getOp();

                                  Flit *foundFlit = NULL;
                                  type = pkt->getType();
                                  int size= gateSize("scctrl_out");
                                  if(type== NOC_START_FLIT )

                                    {
                                      outport=pkt->getOp();

                                    }
                                  while(!Q.empty()){
                                      foundFlit  = (Flit *)Q.pop();
                                      //type=foundFlit->getType();
                                       //foundFlit->setOp(outport);

                                               if(getParentModule()->gate("portinterout$o",outport)->getTransmissionChannel()->isBusy())
                                               {
                                                   EV << "-E-" << getFullPath() << " out port of router Port is busy. will be available in " << (gate("portinterout$o", outport)->getTransmissionChannel()->getTransmissionFinishTime()-simTime()) << endl;
                                                       sendDelayed(foundFlit->dup(),1000, "ingate");

                                               }
                                               else
                                               EV << "-The message has to be SEND." << endl;
                                               send(foundFlit->dup(), "scctrl_out$o",outport);
                                               EV<<"-Message sent back to port-"<<outport<<endl;




    }
    }
    //void scheduler::handleInportMessage(Mypacket *msg)
    //{

    //}
    void scheduler::finish()
    {


    }
    //#endif /* SCHEDULER_CC_ */

