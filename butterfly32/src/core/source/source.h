/*
 * source.h
 *
 *  Created on: Nov 21, 2015
 *      Author: lenovo
 */

#ifndef SOURCE_H_
#define SOURCE_H_


#include <omnetpp.h>
#include <Flit_m.h>
#define MAXTRACESIZE 500000



class source: public cSimpleModule
{
private:
    //parameters
    int data;
    int srcId;
    int destId;
    int pcktId;
    int msg;
    int msgLength;// how many packets will be sent to same dst
    int vc;
    int flitSize;
    int pktVC;    // the VC to be used for packets
    //simtime_t statStartTime; // in sec
    int nopktssent; // number of packets sent from the particular cid
    int noflitssent;// number of flits sent from the particular packet
    cMessage *newmsg;
    bool flag;
    int  i;
    int pktLen;

            int pktIdx;
            int curPktId;
            int curPktIdx;
            int flitIdx;
            double ctime;
            int packetSize_B;
            int curPktLen ;
            simtime_t txFinishTime; //transmission finish time of one flit in sec
            int numPktSent;
            int numberpacketssent; // number of packets sent from the particular cid

            double tClk_s;     // clk extracted from output channel
            cQueue Q;
                              // packet length in FLITs
            int    curMsgLen;

            double numQueuedPkts;
            int maxQueuedPkts;
//            int no;



        //statistics
            cLongHistogram dstIdHist;
            cStdDev numSentPkt; // number of sent packets, assume that there is only single destination



// statistics to record

    cOutVector dstIDVec;   // vector to record the destinations where packets were sent
    cOutVector recordSendTime; // vector to record the sending time
    cStdDev totalpacketsent; // scalar to record number of packets sent from the source
    cStdDev totalflitssent; // scalar to record number of flits sent from the particular packet

// states
   int curpktid;  // current packet id
    int curpktvc;  // current packet vc
    int curtime; // current sending time of packet....inject time

    int numofflits;
    int curMsgDst;          // the destination of the current msg


    void sendFlitFromQ();
        //   int getData();
           void handleGenMsg(cMessage *msg);

protected:

    virtual void initialize();
    virtual void handleMessage(cMessage *msg);
    virtual void finish();

public:
    virtual ~source();

};
//parameters
/*int srcId;
    int destId;
   // simtime_t statStartTime; // in sec
   // bool isTrace;
    int packetid;
    int numberpacketssent; // number of packets sent from the particular cid
    cMessage *newmsg;
    // statistics to record

//    cOutVector dstIDVec;   // vector to record the destinations where packets were sent
    //cOutVector recordSendTime; // vector to record the sending time
    //cStdDev totalsentpacket; // scalar to record number of packets sent from the source
// states
    int curpktid;  // current packet id
    int curpktvc;  // current packet vc
    int curtime; */// current sending time of packet....inject time


#endif /* Source_H_ */














