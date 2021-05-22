//
// Generated file, do not edit! Created by nedtool 4.6 from src/Flit.msg.
//

#ifndef _FLIT_M_H_
#define _FLIT_M_H_

#include <omnetpp.h>

// nedtool version check
#define MSGC_VERSION 0x0406
#if (MSGC_VERSION!=OMNETPP_VERSION)
#    error Version mismatch! Probably this file was generated by an earlier version of nedtool: 'make clean' should help.
#endif



/**
 * Enum generated from <tt>src/Flit.msg:9</tt> by nedtool.
 * <pre>
 * enum NOC_MSGS
 * {
 * 
 *     NOC_FLIT_MSG = 1;
 *     NOC_CREDIT_MSG = 2;
 *     NOC_REQ_MSG = 3;
 *     NOC_GNT_MSG = 4;
 *     NOC_ACK_MSG = 5;
 *     NOC_POP_MSG = 7;
 *     NOC_GEN_MSG = 8;
 *     NOC_APP_MSG = 9;
 *     NOC_CLK_MSG = 10;
 * 
 * }
 * </pre>
 */
enum NOC_MSGS {
    NOC_FLIT_MSG = 1,
    NOC_CREDIT_MSG = 2,
    NOC_REQ_MSG = 3,
    NOC_GNT_MSG = 4,
    NOC_ACK_MSG = 5,
    NOC_POP_MSG = 7,
    NOC_GEN_MSG = 8,
    NOC_APP_MSG = 9,
    NOC_CLK_MSG = 10
};

/**
 * Enum generated from <tt>src/Flit.msg:24</tt> by nedtool.
 * <pre>
 * enum NOC_FLIT_TYPES
 * {
 * 
 *     NOC_START_FLIT = 1;
 *     NOC_MID_FLIT = 2;
 *     NOC_END_FLIT = 3;
 * }
 * </pre>
 */
enum NOC_FLIT_TYPES {
    NOC_START_FLIT = 1,
    NOC_MID_FLIT = 2,
    NOC_END_FLIT = 3
};

/**
 * Class generated from <tt>src/Flit.msg:31</tt> by nedtool.
 * <pre>
 * packet Flit
 * {
 *     int cId;
 * 
 *     int data;
 *     int msgLength;
 * 
 *     int flitSize;
 *     int type;    // first middle end of packet
 *     int Vc;      // the VC of the FLIT as on the wire
 *     int pcktId;   // packet id globally unique
 *     int flits;   // number of flits in this message 
 *     int flitIdx; // index within the packet
 *     int srcId;
 *     int destId;
 *     int op;
 *     int pre_r;
 *     bool firstNet;
 *     simtime_t InjectTime; // the time the flit is injected to the NoC , i.e: when it leaves the source`s queue. 
 *     simtime_t FirstNetTime; // the time the flit is transimitted by a sched,  in order to mask source-router latency effects 
 * 
 * }
 * </pre>
 */
class Flit : public ::cPacket
{
  protected:
    int cId_var;
    int data_var;
    int msgLength_var;
    int flitSize_var;
    int type_var;
    int Vc_var;
    int pcktId_var;
    int flits_var;
    int flitIdx_var;
    int srcId_var;
    int destId_var;
    int op_var;
    int pre_r_var;
    bool firstNet_var;
    simtime_t InjectTime_var;
    simtime_t FirstNetTime_var;

  private:
    void copy(const Flit& other);

  protected:
    // protected and unimplemented operator==(), to prevent accidental usage
    bool operator==(const Flit&);

  public:
    Flit(const char *name=NULL, int kind=0);
    Flit(const Flit& other);
    virtual ~Flit();
    Flit& operator=(const Flit& other);
    virtual Flit *dup() const {return new Flit(*this);}
    virtual void parsimPack(cCommBuffer *b);
    virtual void parsimUnpack(cCommBuffer *b);

    // field getter/setter methods
    virtual int getCId() const;
    virtual void setCId(int cId);
    virtual int getData() const;
    virtual void setData(int data);
    virtual int getMsgLength() const;
    virtual void setMsgLength(int msgLength);
    virtual int getFlitSize() const;
    virtual void setFlitSize(int flitSize);
    virtual int getType() const;
    virtual void setType(int type);
    virtual int getVc() const;
    virtual void setVc(int Vc);
    virtual int getPcktId() const;
    virtual void setPcktId(int pcktId);
    virtual int getFlits() const;
    virtual void setFlits(int flits);
    virtual int getFlitIdx() const;
    virtual void setFlitIdx(int flitIdx);
    virtual int getSrcId() const;
    virtual void setSrcId(int srcId);
    virtual int getDestId() const;
    virtual void setDestId(int destId);
    virtual int getOp() const;
    virtual void setOp(int op);
    virtual int getPre_r() const;
    virtual void setPre_r(int pre_r);
    virtual bool getFirstNet() const;
    virtual void setFirstNet(bool firstNet);
    virtual simtime_t getInjectTime() const;
    virtual void setInjectTime(simtime_t InjectTime);
    virtual simtime_t getFirstNetTime() const;
    virtual void setFirstNetTime(simtime_t FirstNetTime);
};

inline void doPacking(cCommBuffer *b, Flit& obj) {obj.parsimPack(b);}
inline void doUnpacking(cCommBuffer *b, Flit& obj) {obj.parsimUnpack(b);}

/**
 * Class generated from <tt>src/Flit.msg:55</tt> by nedtool.
 * <pre>
 * message NoCAckMsg extends cMessage
 * {
 *     int AckPktId; //paket id 
 * 
 * }
 * </pre>
 */
class NoCAckMsg : public ::cMessage
{
  protected:
    int AckPktId_var;

  private:
    void copy(const NoCAckMsg& other);

  protected:
    // protected and unimplemented operator==(), to prevent accidental usage
    bool operator==(const NoCAckMsg&);

  public:
    NoCAckMsg(const char *name=NULL, int kind=0);
    NoCAckMsg(const NoCAckMsg& other);
    virtual ~NoCAckMsg();
    NoCAckMsg& operator=(const NoCAckMsg& other);
    virtual NoCAckMsg *dup() const {return new NoCAckMsg(*this);}
    virtual void parsimPack(cCommBuffer *b);
    virtual void parsimUnpack(cCommBuffer *b);

    // field getter/setter methods
    virtual int getAckPktId() const;
    virtual void setAckPktId(int AckPktId);
};

inline void doPacking(cCommBuffer *b, NoCAckMsg& obj) {obj.parsimPack(b);}
inline void doUnpacking(cCommBuffer *b, NoCAckMsg& obj) {obj.parsimUnpack(b);}

/**
 * Class generated from <tt>src/Flit.msg:60</tt> by nedtool.
 * <pre>
 * message NoCReqMsg extends cMessage
 * {
 *     int ReqPktId;  //packet id 
 *     int noFlits; //no of flits send
 *     int srcRouter;
 * 
 * }
 * </pre>
 */
class NoCReqMsg : public ::cMessage
{
  protected:
    int ReqPktId_var;
    int noFlits_var;
    int srcRouter_var;

  private:
    void copy(const NoCReqMsg& other);

  protected:
    // protected and unimplemented operator==(), to prevent accidental usage
    bool operator==(const NoCReqMsg&);

  public:
    NoCReqMsg(const char *name=NULL, int kind=0);
    NoCReqMsg(const NoCReqMsg& other);
    virtual ~NoCReqMsg();
    NoCReqMsg& operator=(const NoCReqMsg& other);
    virtual NoCReqMsg *dup() const {return new NoCReqMsg(*this);}
    virtual void parsimPack(cCommBuffer *b);
    virtual void parsimUnpack(cCommBuffer *b);

    // field getter/setter methods
    virtual int getReqPktId() const;
    virtual void setReqPktId(int ReqPktId);
    virtual int getNoFlits() const;
    virtual void setNoFlits(int noFlits);
    virtual int getSrcRouter() const;
    virtual void setSrcRouter(int srcRouter);
};

inline void doPacking(cCommBuffer *b, NoCReqMsg& obj) {obj.parsimPack(b);}
inline void doUnpacking(cCommBuffer *b, NoCReqMsg& obj) {obj.parsimUnpack(b);}

/**
 * Class generated from <tt>src/Flit.msg:68</tt> by nedtool.
 * <pre>
 * message NoCGntMsg extends cMessage
 * {
 *     int GntPktId; //pkt id
 *     int cur_vc;  //currently available vc
 * 
 * }
 * </pre>
 */
class NoCGntMsg : public ::cMessage
{
  protected:
    int GntPktId_var;
    int cur_vc_var;

  private:
    void copy(const NoCGntMsg& other);

  protected:
    // protected and unimplemented operator==(), to prevent accidental usage
    bool operator==(const NoCGntMsg&);

  public:
    NoCGntMsg(const char *name=NULL, int kind=0);
    NoCGntMsg(const NoCGntMsg& other);
    virtual ~NoCGntMsg();
    NoCGntMsg& operator=(const NoCGntMsg& other);
    virtual NoCGntMsg *dup() const {return new NoCGntMsg(*this);}
    virtual void parsimPack(cCommBuffer *b);
    virtual void parsimUnpack(cCommBuffer *b);

    // field getter/setter methods
    virtual int getGntPktId() const;
    virtual void setGntPktId(int GntPktId);
    virtual int getCur_vc() const;
    virtual void setCur_vc(int cur_vc);
};

inline void doPacking(cCommBuffer *b, NoCGntMsg& obj) {obj.parsimPack(b);}
inline void doUnpacking(cCommBuffer *b, NoCGntMsg& obj) {obj.parsimUnpack(b);}


#endif // ifndef _FLIT_M_H_

