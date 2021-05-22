//#ifndef SCHEDULER_CC_
//#define SCHEDULER_CC_
#include "scheduler.h"
#include "Flit_m.h"
#include "simtime.h"
#include<omnetpp.h>
Define_Module(scheduler);




int scheduler::getOutport(int destId, int rId,int destR)
{

    EV<<"   destId    "<<destId<<"   rId   "<<rId<<"   destR   "<<destR<<endl;

        if(rId==destR)
            {

                if(destId%2==0)
                {
                    opline=1;
                    return(opline);
                }
                else
                    {opline=0;
                    return(opline);
                    }
            }
        else if(destR==400)
        {
            if (rId>=0 && rId<=315)
                {opline=1;
                return(opline);
                }
        }
        else if(destR==401)
                {
                    if (rId>=0 && rId<=15)
                        {opline=1;
                        return(opline);
                        }
                    if (rId>=100 && rId<=115)
                        {opline=1;
                        return(opline);
                         }
                    if (rId>=200 && rId<=215)
                                           {opline=1;
                                           return(opline);
                                            }
                    if (rId>=300 && rId<=315)
                                           {opline=0;
                                           return(opline);
                                            }
                }
        else if(destR==402)
                {
            if (rId>=0 && rId<=15)
                                    {opline=1;
                                    return(opline);
                                    }
                                if (rId>=100 && rId<=115)
                                    {opline=1;
                                    return(opline);
                                     }
                                if (rId>=200 && rId<=215)
                                                       {opline=0;
                                                       return(opline);
                                                        }
                                if (rId>=300 && rId<=315)
                                                       {opline=1;
                                                       return(opline);
                                                        }
                }
        else if(destR==403)
        {
            if (rId>=0 && rId<=15)
                                    {opline=1;
                                    return(opline);
                                    }
                                if (rId>=100 && rId<=115)
                                    {opline=1;
                                    return(opline);
                                     }
                                if (rId>=200 && rId<=215)
                                                       {opline=0;
                                                       return(opline);
                                                        }
                                if (rId>=300 && rId<=315)
                                                       {opline=0;
                                                       return(opline);
                                                        }
                        }
        else if(destR==404)
        {
            if (rId>=0 && rId<=15)
                                    {opline=1;
                                    return(opline);
                                    }
                                if (rId>=100 && rId<=115)
                                    {opline=0;
                                    return(opline);
                                     }
                                if (rId>=200 && rId<=215)
                                                       {opline=1;
                                                       return(opline);
                                                        }
                                if (rId>=300 && rId<=315)
                                                       {opline=1;
                                                       return(opline);
                                                        }
                        }
        else if(destR==405)
        {
            if (rId>=0 && rId<=15)
                                    {opline=1;
                                    return(opline);
                                    }
                                if (rId>=100 && rId<=115)
                                    {opline=0;
                                    return(opline);
                                     }
                                if (rId>=200 && rId<=215)
                                                       {opline=1;
                                                       return(opline);
                                                        }
                                if (rId>=300 && rId<=315)
                                                       {opline=0;
                                                       return(opline);
                                                        }
                                }
        else if(destR==406)
        {
            if (rId>=0 && rId<=15)
        {opline=1;
        return(opline);
        }
    if (rId>=100 && rId<=115)
        {opline=0;
        return(opline);
         }
    if (rId>=200 && rId<=215)
                           {opline=0;
                           return(opline);
                            }
    if (rId>=300 && rId<=315)
                           {opline=1;
                           return(opline);
                            }
                                }
        else if(destR==407)
        {
            if (rId>=0 && rId<=15)
                                    {opline=1;
                                    return(opline);
                                    }
                                if (rId>=100 && rId<=115)
                                    {opline=0;
                                    return(opline);
                                     }
                                if (rId>=200 && rId<=215)
                                                       {opline=0;
                                                       return(opline);
                                                        }
                                if (rId>=300 && rId<=315)
                                                       {opline=0;
                                                       return(opline);
                                                        }
                                }
        else if(destR==408)
                { if (rId>=0 && rId<=15)
                {opline=0;
                return(opline);
                }
            if (rId>=100 && rId<=115)
                {opline=1;
                return(opline);
                 }
            if (rId>=200 && rId<=215)
                                   {opline=1;
                                   return(opline);
                                    }
            if (rId>=300 && rId<=315)
                                   {opline=1;
                                   return(opline);
                                    }
                }
                else if(destR==409)
                        {
                            if (rId>=0 && rId<=15)
                                {opline=0;
                                return(opline);
                                }
                            if (rId>=100 && rId<=115)
                                {opline=1;
                                return(opline);
                                 }
                            if (rId>=200 && rId<=215)
                                                   {opline=1;
                                                   return(opline);
                                                    }
                            if (rId>=300 && rId<=315)
                                                   {opline=0;
                                                   return(opline);
                                                    }
                        }
                else if(destR==410)
                        {
                    if (rId>=0 && rId<=15)
                                            {opline=0;
                                            return(opline);
                                            }
                                        if (rId>=100 && rId<=115)
                                            {opline=1;
                                            return(opline);
                                             }
                                        if (rId>=200 && rId<=215)
                                                               {opline=0;
                                                               return(opline);
                                                                }
                                        if (rId>=300 && rId<=315)
                                                               {opline=1;
                                                               return(opline);
                                                                }
                        }
                else if(destR==411)
                {
                    if (rId>=0 && rId<=15)
                                            {opline=0;
                                            return(opline);
                                            }
                                        if (rId>=100 && rId<=115)
                                            {opline=1;
                                            return(opline);
                                             }
                                        if (rId>=200 && rId<=215)
                                                               {opline=0;
                                                               return(opline);
                                                                }
                                        if (rId>=300 && rId<=315)
                                                               {opline=0;
                                                               return(opline);
                                                                }
                                }
                else if(destR==412)
                {
                    if (rId>=0 && rId<=15)
                                            {opline=0;
                                            return(opline);
                                            }
                                        if (rId>=100 && rId<=115)
                                            {opline=0;
                                            return(opline);
                                             }
                                        if (rId>=200 && rId<=215)
                                                               {opline=1;
                                                               return(opline);
                                                                }
                                        if (rId>=300 && rId<=315)
                                                               {opline=1;
                                                               return(opline);
                                                                }
                                }
                else if(destR==413)
                {
                    if (rId>=0 && rId<=15)
                                            {opline=0;
                                            return(opline);
                                            }
                                        if (rId>=100 && rId<=115)
                                            {opline=0;
                                            return(opline);
                                             }
                                        if (rId>=200 && rId<=215)
                                                               {opline=1;
                                                               return(opline);
                                                                }
                                        if (rId>=300 && rId<=315)
                                                               {opline=0;
                                                               return(opline);
                                                                }
                                        }
                else if(destR==414)
                {
                    if (rId>=0 && rId<=15)
                {opline=0;
                return(opline);
                }
            if (rId>=100 && rId<=115)
                {opline=0;
                return(opline);
                 }
            if (rId>=200 && rId<=215)
                                   {opline=0;
                                   return(opline);
                                    }
            if (rId>=300 && rId<=315)
                                   {opline=1;
                                   return(opline);
                                    }
                                        }
                else if(destR==415)
                {
                    if (rId>=0 && rId<=15)
                                            {opline=0;
                                            return(opline);
                                            }
                                        if (rId>=100 && rId<=115)
                                            {opline=0;
                                            return(opline);
                                             }
                                        if (rId>=200 && rId<=215)
                                                               {opline=0;
                                                               return(opline);
                                                                }
                                        if (rId>=300 && rId<=315)
                                                               {opline=0;
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
EV << "-The value of source-" << pkt->getPcktId() << endl;

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
                       destR=400;
                   }
               if(temp==2 || temp==3)
                       {
                           destR=401;
                       }
               if(temp==4 || temp==5)
                       {
                           destR=402;
                       }
               if(temp==6 || temp==7)
                       {
                           destR=403;
                       }
               if(temp==8 || temp==9)
                           {
                               destR=404;
                           }
                       if(temp==10 || temp==11)
                               {
                                   destR=405;
                               }
                       if(temp==12 || temp==13)
                               {
                                   destR=406;
                               }
                       if(temp==14 || temp==15)
                               {
                                   destR=407;
                               }
                       if(temp==16 || temp==17)
                                         {
                                             destR=408;
                                         }
                                     if(temp==18 || temp==19)
                                             {
                                                 destR=409;
                                             }
                                     if(temp==20 || temp==21)
                                             {
                                                 destR=410;
                                             }
                                     if(temp==21 || temp==22)
                                             {
                                                 destR=411;
                                             }
                                     if(temp==23 || temp==24)
                                                 {
                                                     destR=412;
                                                 }
                                             if(temp==26 || temp==27)
                                                     {
                                                         destR=413;
                                                     }
                                             if(temp==28 || temp==29)
                                                     {
                                                         destR=414;
                                                     }
                                             if(temp==30 || temp==31)
                                                     {
                                                         destR=415;
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

