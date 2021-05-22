/*
 * sink.h
 *
 *  Created on: Nov 21, 2015
 *      Author: lenovo
 */

#ifndef SINK_H_
#define SINK_H_

#include<omnetpp.h>
#include <Flit_m.h>

class sink : public cSimpleModule
{

private:
    int srcId;
    int numrecvpkt;
    int sourceid;
    int pcktid;
    int pckttype;
    simtime_t totalTimeTkn;

protected:
    void initialize();
    void handleMessage(cMessage *msg);
    void finish();

};



#endif /* SINK_H_ */
