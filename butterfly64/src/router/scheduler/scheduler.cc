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
        else if(destR==500)
        {
            if (rId>=0 && rId<=431)
                {opline=1;
                return(opline);
                }
        }
        else if(destR==501)
                {if (rId>=0 && rId<=31)
                {opline=1;
                return(opline);
                }
                    if (rId>=100 && rId<=131)
                        {opline=1;
                        return(opline);
                        }
                    if (rId>=200 && rId<=231)
                        {opline=1;
                        return(opline);
                         }
                    if (rId>=300 && rId<=331)
                                           {opline=1;
                                           return(opline);
                                            }
                    if (rId>=400 && rId<=431)
                                           {opline=0;
                                           return(opline);
                                            }
                }
        else if(destR==502)
                {
            if (rId>=0 && rId<=31)
                            {opline=1;
                            return(opline);
                            }
            if (rId>=100 && rId<=131)
                                    {opline=1;
                                    return(opline);
                                    }
                                if (rId>=200 && rId<=231)
                                    {opline=1;
                                    return(opline);
                                     }
                                if (rId>=300 && rId<=331)
                                                       {opline=0;
                                                       return(opline);
                                                        }
                                if (rId>=400 && rId<=431)
                                                       {opline=1;
                                                       return(opline);
                                                        }
                }
        else if(destR==503)
        {
            if (rId>=0 && rId<=31)
                            {opline=1;
                            return(opline);
                            }
            if (rId>=100 && rId<=131)
                                    {opline=1;
                                    return(opline);
                                    }
                                if (rId>=200 && rId<=231)
                                    {opline=1;
                                    return(opline);
                                     }
                                if (rId>=300 && rId<=331)
                                                       {opline=0;
                                                       return(opline);
                                                        }
                                if (rId>=400 && rId<=431)
                                                       {opline=0;
                                                       return(opline);
                                                        }
                        }
        else if(destR==504)
        {
            if (rId>=0 && rId<=31)
                            {opline=1;
                            return(opline);
                            }
            if (rId>=100 && rId<=131)
                                    {opline=1;
                                    return(opline);
                                    }
                                if (rId>=200 && rId<=231)
                                    {opline=0;
                                    return(opline);
                                     }
                                if (rId>=300 && rId<=331)
                                                       {opline=1;
                                                       return(opline);
                                                        }
                                if (rId>=400 && rId<=431)
                                                       {opline=1;
                                                       return(opline);
                                                        }
                        }
        else if(destR==505)
        {
            if (rId>=0 && rId<=31)
                            {opline=1;
                            return(opline);
                            }
            if (rId>=100 && rId<=131)
                                    {opline=1;
                                    return(opline);
                                    }
                                if (rId>=200 && rId<=231)
                                    {opline=0;
                                    return(opline);
                                     }
                                if (rId>=300 && rId<=331)
                                                       {opline=1;
                                                       return(opline);
                                                        }
                                if (rId>=400 && rId<=431)
                                                       {opline=0;
                                                       return(opline);
                                                        }
                                }
        else if(destR==506)
        {

            if (rId>=0 && rId<=31)
                            {opline=1;
                            return(opline);
                            }
            if (rId>=100 && rId<=131)
        {opline=1;
        return(opline);
        }
    if (rId>=200 && rId<=231)
        {opline=0;
        return(opline);
         }
    if (rId>=300 && rId<=331)
                           {opline=0;
                           return(opline);
                            }
    if (rId>=400 && rId<=431)
                           {opline=1;
                           return(opline);
                            }
                                }
        else if(destR==507)
        {
            if (rId>=0 && rId<=31)
                            {opline=1;
                            return(opline);
                            }
            if (rId>=100 && rId<=131)
                                    {opline=1;
                                    return(opline);
                                    }
                                if (rId>=200 && rId<=231)
                                    {opline=0;
                                    return(opline);
                                     }
                                if (rId>=300 && rId<=331)
                                                       {opline=0;
                                                       return(opline);
                                                        }
                                if (rId>=400 && rId<=431)
                                                       {opline=0;
                                                       return(opline);
                                                        }
                                }
        else if(destR==508)
                {
            if (rId>=0 && rId<=31)
                            {opline=1;
                            return(opline);
                            }if (rId>=100 && rId<=131)
                {opline=0;
                return(opline);
                }
            if (rId>=200 && rId<=231)
                {opline=1;
                return(opline);
                 }
            if (rId>=300 && rId<=331)
                                   {opline=1;
                                   return(opline);
                                    }
            if (rId>=400 && rId<=431)
                                   {opline=1;
                                   return(opline);
                                    }
                }
                else if(destR==509)
                        {
                    if (rId>=0 && rId<=31)
                                    {opline=1;
                                    return(opline);
                                    }
                            if (rId>=100 && rId<=131)
                                {opline=0;
                                return(opline);
                                }
                            if (rId>=200 && rId<=231)
                                {opline=1;
                                return(opline);
                                 }
                            if (rId>=300 && rId<=331)
                                                   {opline=1;
                                                   return(opline);
                                                    }
                            if (rId>=400 && rId<=431)
                                                   {opline=0;
                                                   return(opline);
                                                    }
                        }
                else if(destR==510)
                        {
                    if (rId>=0 && rId<=31)
                                    {opline=1;
                                    return(opline);
                                    }
                    if (rId>=100 && rId<=131)
                                            {opline=0;
                                            return(opline);
                                            }
                                        if (rId>=200 && rId<=231)
                                            {opline=1;
                                            return(opline);
                                             }
                                        if (rId>=300 && rId<=331)
                                                               {opline=0;
                                                               return(opline);
                                                                }
                                        if (rId>=400 && rId<=431)
                                                               {opline=1;
                                                               return(opline);
                                                                }
                        }
                else if(destR==511)
                {
                    if (rId>=0 && rId<=31)
                                    {opline=1;
                                    return(opline);
                                    }
                    if (rId>=100 && rId<=131)
                                            {opline=0;
                                            return(opline);
                                            }
                                        if (rId>=200 && rId<=231)
                                            {opline=1;
                                            return(opline);
                                             }
                                        if (rId>=300 && rId<=331)
                                                               {opline=0;
                                                               return(opline);
                                                                }
                                        if (rId>=400 && rId<=431)
                                                               {opline=0;
                                                               return(opline);
                                                                }
                                }
                else if(destR==512)
                {
                    if (rId>=0 && rId<=31)
                                    {opline=1;
                                    return(opline);
                                    }
                    if (rId>=100 && rId<=131)
                                            {opline=0;
                                            return(opline);
                                            }
                                        if (rId>=200 && rId<=231)
                                            {opline=0;
                                            return(opline);
                                             }
                                        if (rId>=300 && rId<=331)
                                                               {opline=1;
                                                               return(opline);
                                                                }
                                        if (rId>=400 && rId<=431)
                                                               {opline=1;
                                                               return(opline);
                                                                }
                                }
                else if(destR==513)
                {
                    if (rId>=0 && rId<=31)
                                    {opline=1;
                                    return(opline);
                                    }
                    if (rId>=100 && rId<=131)
                                            {opline=0;
                                            return(opline);
                                            }
                                        if (rId>=200 && rId<=231)
                                            {opline=0;
                                            return(opline);
                                             }
                                        if (rId>=300 && rId<=331)
                                                               {opline=1;
                                                               return(opline);
                                                                }
                                        if (rId>=400 && rId<=431)
                                                               {opline=0;
                                                               return(opline);
                                                                }
                                        }
                else if(destR==514)
                {
                    if (rId>=0 && rId<=31)
                                    {opline=1;
                                    return(opline);
                                    }
                    if (rId>=100 && rId<=131)
                {opline=0;
                return(opline);
                }
            if (rId>=200 && rId<=231)
                {opline=0;
                return(opline);
                 }
            if (rId>=300 && rId<=331)
                                   {opline=0;
                                   return(opline);
                                    }
            if (rId>=400 && rId<=431)
                                   {opline=1;
                                   return(opline);
                                    }
                                        }
                else if(destR==515)
                {
                    if (rId>=0 && rId<=31)
                                    {opline=1;
                                    return(opline);
                                    }
                    if (rId>=100 && rId<=131)
                                            {opline=0;
                                            return(opline);
                                            }
                                        if (rId>=200 && rId<=231)
                                            {opline=0;
                                            return(opline);
                                             }
                                        if (rId>=300 && rId<=331)
                                                               {opline=0;
                                                               return(opline);
                                                                }
                                        if (rId>=400 && rId<=431)
                                                               {opline=0;
                                                               return(opline);
                                                                }
                                        }
                else if(destR==516)
                        { if (rId>=0 && rId<=31)
                        {opline=0;
                        return(opline);
                        }
                            if (rId>=100 && rId<=431)
                                {opline=1;
                                return(opline);
                                }
                        }
                        else if(destR==517)
                                {if (rId>=0 && rId<=31)
                                {opline=0;
                                return(opline);
                                }
                                    if (rId>=100 && rId<=131)
                                        {opline=1;
                                        return(opline);
                                        }
                                    if (rId>=200 && rId<=231)
                                        {opline=1;
                                        return(opline);
                                         }
                                    if (rId>=300 && rId<=331)
                                                           {opline=1;
                                                           return(opline);
                                                            }
                                    if (rId>=400 && rId<=431)
                                                           {opline=0;
                                                           return(opline);
                                                            }
                                }
                        else if(destR==518)
                                {
                            if (rId>=0 && rId<=31)
                                            {opline=0;
                                            return(opline);
                                            }
                            if (rId>=100 && rId<=131)
                                                    {opline=1;
                                                    return(opline);
                                                    }
                                                if (rId>=200 && rId<=231)
                                                    {opline=1;
                                                    return(opline);
                                                     }
                                                if (rId>=300 && rId<=331)
                                                                       {opline=0;
                                                                       return(opline);
                                                                        }
                                                if (rId>=400 && rId<=431)
                                                                       {opline=1;
                                                                       return(opline);
                                                                        }
                                }
                        else if(destR==519)
                        {
                            if (rId>=0 && rId<=31)
                                            {opline=0;
                                            return(opline);
                                            }
                            if (rId>=100 && rId<=131)
                                                    {opline=1;
                                                    return(opline);
                                                    }
                                                if (rId>=200 && rId<=231)
                                                    {opline=1;
                                                    return(opline);
                                                     }
                                                if (rId>=300 && rId<=331)
                                                                       {opline=0;
                                                                       return(opline);
                                                                        }
                                                if (rId>=400 && rId<=431)
                                                                       {opline=0;
                                                                       return(opline);
                                                                        }
                                        }
                        else if(destR==520)
                        {
                            if (rId>=0 && rId<=31)
                                            {opline=0;
                                            return(opline);
                                            }
                            if (rId>=100 && rId<=131)
                                                    {opline=1;
                                                    return(opline);
                                                    }
                                                if (rId>=200 && rId<=231)
                                                    {opline=0;
                                                    return(opline);
                                                     }
                                                if (rId>=300 && rId<=331)
                                                                       {opline=1;
                                                                       return(opline);
                                                                        }
                                                if (rId>=400 && rId<=431)
                                                                       {opline=1;
                                                                       return(opline);
                                                                        }
                                        }
                        else if(destR==521)
                        {
                            if (rId>=0 && rId<=31)
                                            {opline=0;
                                            return(opline);
                                            }
                            if (rId>=100 && rId<=131)
                                                    {opline=1;
                                                    return(opline);
                                                    }
                                                if (rId>=200 && rId<=231)
                                                    {opline=0;
                                                    return(opline);
                                                     }
                                                if (rId>=300 && rId<=331)
                                                                       {opline=1;
                                                                       return(opline);
                                                                        }
                                                if (rId>=400 && rId<=431)
                                                                       {opline=0;
                                                                       return(opline);
                                                                        }
                                                }
                        else if(destR==522)
                        {

                            if (rId>=0 && rId<=31)
                                            {opline=0;
                                            return(opline);
                                            }
                            if (rId>=100 && rId<=131)
                        {opline=1;
                        return(opline);
                        }
                    if (rId>=200 && rId<=231)
                        {opline=0;
                        return(opline);
                         }
                    if (rId>=300 && rId<=331)
                                           {opline=0;
                                           return(opline);
                                            }
                    if (rId>=400 && rId<=431)
                                           {opline=1;
                                           return(opline);
                                            }
                                                }
                        else if(destR==523)
                        {
                            if (rId>=0 && rId<=31)
                                            {opline=0;
                                            return(opline);
                                            }
                            if (rId>=100 && rId<=131)
                                                    {opline=1;
                                                    return(opline);
                                                    }
                                                if (rId>=200 && rId<=231)
                                                    {opline=0;
                                                    return(opline);
                                                     }
                                                if (rId>=300 && rId<=331)
                                                                       {opline=0;
                                                                       return(opline);
                                                                        }
                                                if (rId>=400 && rId<=431)
                                                                       {opline=0;
                                                                       return(opline);
                                                                        }
                                                }
                        else if(destR==524)
                                {
                            if (rId>=0 && rId<=31)
                                            {opline=0;
                                            return(opline);
                                            }if (rId>=100 && rId<=131)
                                {opline=0;
                                return(opline);
                                }
                            if (rId>=200 && rId<=231)
                                {opline=1;
                                return(opline);
                                 }
                            if (rId>=300 && rId<=331)
                                                   {opline=1;
                                                   return(opline);
                                                    }
                            if (rId>=400 && rId<=431)
                                                   {opline=1;
                                                   return(opline);
                                                    }
                                }
                                else if(destR==525)
                                        {
                                    if (rId>=0 && rId<=31)
                                                    {opline=0;
                                                    return(opline);
                                                    }
                                            if (rId>=100 && rId<=131)
                                                {opline=0;
                                                return(opline);
                                                }
                                            if (rId>=200 && rId<=231)
                                                {opline=1;
                                                return(opline);
                                                 }
                                            if (rId>=300 && rId<=331)
                                                                   {opline=1;
                                                                   return(opline);
                                                                    }
                                            if (rId>=400 && rId<=431)
                                                                   {opline=0;
                                                                   return(opline);
                                                                    }
                                        }
                                else if(destR==526)
                                        {
                                    if (rId>=0 && rId<=31)
                                                    {opline=0;
                                                    return(opline);
                                                    }
                                    if (rId>=100 && rId<=131)
                                                            {opline=0;
                                                            return(opline);
                                                            }
                                                        if (rId>=200 && rId<=231)
                                                            {opline=1;
                                                            return(opline);
                                                             }
                                                        if (rId>=300 && rId<=331)
                                                                               {opline=0;
                                                                               return(opline);
                                                                                }
                                                        if (rId>=400 && rId<=431)
                                                                               {opline=1;
                                                                               return(opline);
                                                                                }
                                        }
                                else if(destR==527)
                                {
                                    if (rId>=0 && rId<=31)
                                                    {opline=0;
                                                    return(opline);
                                                    }
                                    if (rId>=100 && rId<=131)
                                                            {opline=0;
                                                            return(opline);
                                                            }
                                                        if (rId>=200 && rId<=231)
                                                            {opline=1;
                                                            return(opline);
                                                             }
                                                        if (rId>=300 && rId<=331)
                                                                               {opline=0;
                                                                               return(opline);
                                                                                }
                                                        if (rId>=400 && rId<=431)
                                                                               {opline=0;
                                                                               return(opline);
                                                                                }
                                                }
                                else if(destR==528)
                                {
                                    if (rId>=0 && rId<=31)
                                                    {opline=0;
                                                    return(opline);
                                                    }
                                    if (rId>=100 && rId<=131)
                                                            {opline=0;
                                                            return(opline);
                                                            }
                                                        if (rId>=200 && rId<=231)
                                                            {opline=0;
                                                            return(opline);
                                                             }
                                                        if (rId>=300 && rId<=331)
                                                                               {opline=1;
                                                                               return(opline);
                                                                                }
                                                        if (rId>=400 && rId<=431)
                                                                               {opline=1;
                                                                               return(opline);
                                                                                }
                                                }
                                else if(destR==529)
                                {
                                    if (rId>=0 && rId<=31)
                                                    {opline=0;
                                                    return(opline);
                                                    }
                                    if (rId>=100 && rId<=131)
                                                            {opline=0;
                                                            return(opline);
                                                            }
                                                        if (rId>=200 && rId<=231)
                                                            {opline=0;
                                                            return(opline);
                                                             }
                                                        if (rId>=300 && rId<=331)
                                                                               {opline=1;
                                                                               return(opline);
                                                                                }
                                                        if (rId>=400 && rId<=431)
                                                                               {opline=0;
                                                                               return(opline);
                                                                                }
                                                        }
                                else if(destR==530)
                                {
                                    if (rId>=0 && rId<=31)
                                                    {opline=0;
                                                    return(opline);
                                                    }
                                    if (rId>=100 && rId<=131)
                                {opline=0;
                                return(opline);
                                }
                            if (rId>=200 && rId<=231)
                                {opline=0;
                                return(opline);
                                 }
                            if (rId>=300 && rId<=331)
                                                   {opline=0;
                                                   return(opline);
                                                    }
                            if (rId>=400 && rId<=431)
                                                   {opline=1;
                                                   return(opline);
                                                    }
                                                        }
                                else if(destR==531)
                                {
                                    if (rId>=0 && rId<=31)
                                                    {opline=0;
                                                    return(opline);
                                                    }
                                    if (rId>=100 && rId<=131)
                                                            {opline=0;
                                                            return(opline);
                                                            }
                                                        if (rId>=200 && rId<=231)
                                                            {opline=0;
                                                            return(opline);
                                                             }
                                                        if (rId>=300 && rId<=331)
                                                                               {opline=0;
                                                                               return(opline);
                                                                                }
                                                        if (rId>=400 && rId<=431)
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
    int temp=destId%64;
               if(temp==0 || temp==1)
                   {
                       destR=500;
                   }
               if(temp==2 || temp==3)
                       {
                           destR=501;
                       }
               if(temp==4 || temp==5)
                       {
                           destR=502;
                       }
               if(temp==6 || temp==7)
                       {
                           destR=503;
                       }
               if(temp==8 || temp==9)
                           {
                               destR=504;
                           }
                       if(temp==10 || temp==11)
                               {
                                   destR=505;
                               }
                       if(temp==12 || temp==13)
                               {
                                   destR=506;
                               }
                       if(temp==14 || temp==15)
                               {
                                   destR=507;
                               }
                       if(temp==16 || temp==17)
                                         {
                                             destR=508;
                                         }
                                     if(temp==18 || temp==19)
                                             {
                                                 destR=509;
                                             }
                                     if(temp==20 || temp==21)
                                             {
                                                 destR=510;
                                             }
                                     if(temp==21 || temp==22)
                                             {
                                                 destR=511;
                                             }
                                     if(temp==23 || temp==24)
                                                 {
                                                     destR=512;
                                                 }
                                             if(temp==26 || temp==27)
                                                     {
                                                         destR=513;
                                                     }
                                             if(temp==28 || temp==29)
                                                     {
                                                         destR=514;
                                                     }
                                             if(temp==30 || temp==31)
                                                     {
                                                         destR=515;
                                                     }
                                             if(temp==32 || temp==33)
                                                               {
                                                                   destR=516;
                                                               }
                                                           if(temp==34 || temp==35)
                                                                   {
                                                                       destR=517;
                                                                   }
                                                           if(temp==36 || temp==37)
                                                                   {
                                                                       destR=518;
                                                                   }
                                                           if(temp==38 || temp==39)
                                                                   {
                                                                       destR=519;
                                                                   }
                                                           if(temp==40 || temp==41)
                                                                       {
                                                                           destR=520;
                                                                       }
                                                                   if(temp==42 || temp==43)
                                                                           {
                                                                               destR=521;
                                                                           }
                                                                   if(temp==44 || temp==45)
                                                                           {
                                                                               destR=522;
                                                                           }
                                                                   if(temp==46 || temp==47)
                                                                           {
                                                                               destR=523;
                                                                           }
                                                                   if(temp==48 || temp==49)
                                                                                     {
                                                                                         destR=524;
                                                                                     }
                                                                                 if(temp==50 || temp==51)
                                                                                         {
                                                                                             destR=525;
                                                                                         }
                                                                                 if(temp==52 || temp==53)
                                                                                         {
                                                                                             destR=526;
                                                                                         }
                                                                                 if(temp==54 || temp==55)
                                                                                         {
                                                                                             destR=527;
                                                                                         }
                                                                                 if(temp==56 || temp==57)
                                                                                             {
                                                                                                 destR=528;
                                                                                             }
                                                                                         if(temp==58 || temp==59)
                                                                                                 {
                                                                                                     destR=529;
                                                                                                 }
                                                                                         if(temp==60 || temp==61)
                                                                                                 {
                                                                                                     destR=530;
                                                                                                 }
                                                                                         if(temp==62 || temp==63)
                                                                                                 {
                                                                                                     destR=531;
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

