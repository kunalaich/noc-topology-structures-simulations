/*
 * Source.h
 *

 */

#ifndef SOURCE_H_
#define SOURCE_H_

#include <omnetpp.h>
#include<Flit_m.h>
/**
 * Packet generator; see NED file for more info.
 */

class source : public cSimpleModule
{
    //parameters
        bool flag;
        int pcktId;
        int flitSize;
        int data;
        int  i;
        int srcId;
        int destId;
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
        cMessage *newmsg;
        double tClk_s;     // clk extracted from output channel
        cQueue Q;
        int pktLen;                     // packet length in FLITs
        int    curMsgLen;

        double numQueuedPkts;
        int maxQueuedPkts;
        int no;

    //vectors
        cStdDev totalsentpacket; // scalar to record number of packets sent from the source

    //statistics
        cLongHistogram dstIdHist;
        cStdDev numSentPkt; // number of sent packets, assume that there is only single destination





    //methods
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

#endif /* SOURCE_H_ */
