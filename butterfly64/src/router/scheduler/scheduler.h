/*
 * scheduler.h
 *
 *  Created on: Nov 21, 2015
 *      Author: lenovo
 */

#ifndef SCHEDULER_H_
#define SCHEDULER_H_



#include <omnetpp.h>
#include "simtime.h"
#include<Flit_m.h>




class scheduler : public cSimpleModule
{



    private:

       // void handleNewMessage(Mypacket *msg);
        //void handleInportMessage(Mypacket *msg);

        int srcId;   // client id


        int rId, destId,destRId,opline,id, gid, left, right, i, j, jgid, sgid, dgid, x, rGId;
            //int getDestRouter(int dstId, int dgid); //to find destination router ID
            int getOutport(int destId, int rId,int destR);//to find the output port for sending message
            int getDestRouterID(int, int );

        void sendMessage(Flit *msg);

        //parameters
            int outport;
            int numPktSent;

            cDatarateChannel *chan;
            double data_rate; //variable to hold data rate of output channel
            cGate *g; // outgoing link
            bool isBusy;
            double busyTime;
            cMessage *msg;
            cQueue Q;
            cQueue Q_outport;
            int type;
            int preopline;
            int buf_flag;
            int pre_r;
            bool flag;
            bool insert_flag;
            int to_be_recv_flit;


         //methods
                void handleNewMessage(Flit *msg);
                //void handleInportMessage(Flit *msg, int rId);
                void handleAckMsg(NoCAckMsg *msg);
                void handleReqMsg(NoCReqMsg *msg);
                void handleGntMsg(NoCGntMsg *msg);
                void sendAck();
                void sendReq();
                void sendGnt();
    protected:

        virtual void initialize();
        virtual void handleMessage(cMessage *msg);
        virtual void finish();
   /* public:
            virtual ~scheduler();*/
};


#endif /* SCHEDULER_H_ */


