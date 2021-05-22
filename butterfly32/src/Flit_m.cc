//
// Generated file, do not edit! Created by nedtool 4.6 from src/Flit.msg.
//

// Disable warnings about unused variables, empty switch stmts, etc:
#ifdef _MSC_VER
#  pragma warning(disable:4101)
#  pragma warning(disable:4065)
#endif

#include <iostream>
#include <sstream>
#include "Flit_m.h"

USING_NAMESPACE


// Another default rule (prevents compiler from choosing base class' doPacking())
template<typename T>
void doPacking(cCommBuffer *, T& t) {
    throw cRuntimeError("Parsim error: no doPacking() function for type %s or its base class (check .msg and _m.cc/h files!)",opp_typename(typeid(t)));
}

template<typename T>
void doUnpacking(cCommBuffer *, T& t) {
    throw cRuntimeError("Parsim error: no doUnpacking() function for type %s or its base class (check .msg and _m.cc/h files!)",opp_typename(typeid(t)));
}




// Template rule for outputting std::vector<T> types
template<typename T, typename A>
inline std::ostream& operator<<(std::ostream& out, const std::vector<T,A>& vec)
{
    out.put('{');
    for(typename std::vector<T,A>::const_iterator it = vec.begin(); it != vec.end(); ++it)
    {
        if (it != vec.begin()) {
            out.put(','); out.put(' ');
        }
        out << *it;
    }
    out.put('}');
    
    char buf[32];
    sprintf(buf, " (size=%u)", (unsigned int)vec.size());
    out.write(buf, strlen(buf));
    return out;
}

// Template rule which fires if a struct or class doesn't have operator<<
template<typename T>
inline std::ostream& operator<<(std::ostream& out,const T&) {return out;}

EXECUTE_ON_STARTUP(
    cEnum *e = cEnum::find("NOC_MSGS");
    if (!e) enums.getInstance()->add(e = new cEnum("NOC_MSGS"));
    e->insert(NOC_FLIT_MSG, "NOC_FLIT_MSG");
    e->insert(NOC_CREDIT_MSG, "NOC_CREDIT_MSG");
    e->insert(NOC_REQ_MSG, "NOC_REQ_MSG");
    e->insert(NOC_GNT_MSG, "NOC_GNT_MSG");
    e->insert(NOC_ACK_MSG, "NOC_ACK_MSG");
    e->insert(NOC_POP_MSG, "NOC_POP_MSG");
    e->insert(NOC_GEN_MSG, "NOC_GEN_MSG");
    e->insert(NOC_APP_MSG, "NOC_APP_MSG");
    e->insert(NOC_CLK_MSG, "NOC_CLK_MSG");
);

EXECUTE_ON_STARTUP(
    cEnum *e = cEnum::find("NOC_FLIT_TYPES");
    if (!e) enums.getInstance()->add(e = new cEnum("NOC_FLIT_TYPES"));
    e->insert(NOC_START_FLIT, "NOC_START_FLIT");
    e->insert(NOC_MID_FLIT, "NOC_MID_FLIT");
    e->insert(NOC_END_FLIT, "NOC_END_FLIT");
);

Register_Class(Flit);

Flit::Flit(const char *name, int kind) : ::cPacket(name,kind)
{
    this->cId_var = 0;
    this->data_var = 0;
    this->msgLength_var = 0;
    this->flitSize_var = 0;
    this->type_var = 0;
    this->Vc_var = 0;
    this->pcktId_var = 0;
    this->flits_var = 0;
    this->flitIdx_var = 0;
    this->srcId_var = 0;
    this->destId_var = 0;
    this->op_var = 0;
    this->pre_r_var = 0;
    this->firstNet_var = 0;
    this->InjectTime_var = 0;
    this->FirstNetTime_var = 0;
}

Flit::Flit(const Flit& other) : ::cPacket(other)
{
    copy(other);
}

Flit::~Flit()
{
}

Flit& Flit::operator=(const Flit& other)
{
    if (this==&other) return *this;
    ::cPacket::operator=(other);
    copy(other);
    return *this;
}

void Flit::copy(const Flit& other)
{
    this->cId_var = other.cId_var;
    this->data_var = other.data_var;
    this->msgLength_var = other.msgLength_var;
    this->flitSize_var = other.flitSize_var;
    this->type_var = other.type_var;
    this->Vc_var = other.Vc_var;
    this->pcktId_var = other.pcktId_var;
    this->flits_var = other.flits_var;
    this->flitIdx_var = other.flitIdx_var;
    this->srcId_var = other.srcId_var;
    this->destId_var = other.destId_var;
    this->op_var = other.op_var;
    this->pre_r_var = other.pre_r_var;
    this->firstNet_var = other.firstNet_var;
    this->InjectTime_var = other.InjectTime_var;
    this->FirstNetTime_var = other.FirstNetTime_var;
}

void Flit::parsimPack(cCommBuffer *b)
{
    ::cPacket::parsimPack(b);
    doPacking(b,this->cId_var);
    doPacking(b,this->data_var);
    doPacking(b,this->msgLength_var);
    doPacking(b,this->flitSize_var);
    doPacking(b,this->type_var);
    doPacking(b,this->Vc_var);
    doPacking(b,this->pcktId_var);
    doPacking(b,this->flits_var);
    doPacking(b,this->flitIdx_var);
    doPacking(b,this->srcId_var);
    doPacking(b,this->destId_var);
    doPacking(b,this->op_var);
    doPacking(b,this->pre_r_var);
    doPacking(b,this->firstNet_var);
    doPacking(b,this->InjectTime_var);
    doPacking(b,this->FirstNetTime_var);
}

void Flit::parsimUnpack(cCommBuffer *b)
{
    ::cPacket::parsimUnpack(b);
    doUnpacking(b,this->cId_var);
    doUnpacking(b,this->data_var);
    doUnpacking(b,this->msgLength_var);
    doUnpacking(b,this->flitSize_var);
    doUnpacking(b,this->type_var);
    doUnpacking(b,this->Vc_var);
    doUnpacking(b,this->pcktId_var);
    doUnpacking(b,this->flits_var);
    doUnpacking(b,this->flitIdx_var);
    doUnpacking(b,this->srcId_var);
    doUnpacking(b,this->destId_var);
    doUnpacking(b,this->op_var);
    doUnpacking(b,this->pre_r_var);
    doUnpacking(b,this->firstNet_var);
    doUnpacking(b,this->InjectTime_var);
    doUnpacking(b,this->FirstNetTime_var);
}

int Flit::getCId() const
{
    return cId_var;
}

void Flit::setCId(int cId)
{
    this->cId_var = cId;
}

int Flit::getData() const
{
    return data_var;
}

void Flit::setData(int data)
{
    this->data_var = data;
}

int Flit::getMsgLength() const
{
    return msgLength_var;
}

void Flit::setMsgLength(int msgLength)
{
    this->msgLength_var = msgLength;
}

int Flit::getFlitSize() const
{
    return flitSize_var;
}

void Flit::setFlitSize(int flitSize)
{
    this->flitSize_var = flitSize;
}

int Flit::getType() const
{
    return type_var;
}

void Flit::setType(int type)
{
    this->type_var = type;
}

int Flit::getVc() const
{
    return Vc_var;
}

void Flit::setVc(int Vc)
{
    this->Vc_var = Vc;
}

int Flit::getPcktId() const
{
    return pcktId_var;
}

void Flit::setPcktId(int pcktId)
{
    this->pcktId_var = pcktId;
}

int Flit::getFlits() const
{
    return flits_var;
}

void Flit::setFlits(int flits)
{
    this->flits_var = flits;
}

int Flit::getFlitIdx() const
{
    return flitIdx_var;
}

void Flit::setFlitIdx(int flitIdx)
{
    this->flitIdx_var = flitIdx;
}

int Flit::getSrcId() const
{
    return srcId_var;
}

void Flit::setSrcId(int srcId)
{
    this->srcId_var = srcId;
}

int Flit::getDestId() const
{
    return destId_var;
}

void Flit::setDestId(int destId)
{
    this->destId_var = destId;
}

int Flit::getOp() const
{
    return op_var;
}

void Flit::setOp(int op)
{
    this->op_var = op;
}

int Flit::getPre_r() const
{
    return pre_r_var;
}

void Flit::setPre_r(int pre_r)
{
    this->pre_r_var = pre_r;
}

bool Flit::getFirstNet() const
{
    return firstNet_var;
}

void Flit::setFirstNet(bool firstNet)
{
    this->firstNet_var = firstNet;
}

simtime_t Flit::getInjectTime() const
{
    return InjectTime_var;
}

void Flit::setInjectTime(simtime_t InjectTime)
{
    this->InjectTime_var = InjectTime;
}

simtime_t Flit::getFirstNetTime() const
{
    return FirstNetTime_var;
}

void Flit::setFirstNetTime(simtime_t FirstNetTime)
{
    this->FirstNetTime_var = FirstNetTime;
}

class FlitDescriptor : public cClassDescriptor
{
  public:
    FlitDescriptor();
    virtual ~FlitDescriptor();

    virtual bool doesSupport(cObject *obj) const;
    virtual const char *getProperty(const char *propertyname) const;
    virtual int getFieldCount(void *object) const;
    virtual const char *getFieldName(void *object, int field) const;
    virtual int findField(void *object, const char *fieldName) const;
    virtual unsigned int getFieldTypeFlags(void *object, int field) const;
    virtual const char *getFieldTypeString(void *object, int field) const;
    virtual const char *getFieldProperty(void *object, int field, const char *propertyname) const;
    virtual int getArraySize(void *object, int field) const;

    virtual std::string getFieldAsString(void *object, int field, int i) const;
    virtual bool setFieldAsString(void *object, int field, int i, const char *value) const;

    virtual const char *getFieldStructName(void *object, int field) const;
    virtual void *getFieldStructPointer(void *object, int field, int i) const;
};

Register_ClassDescriptor(FlitDescriptor);

FlitDescriptor::FlitDescriptor() : cClassDescriptor("Flit", "cPacket")
{
}

FlitDescriptor::~FlitDescriptor()
{
}

bool FlitDescriptor::doesSupport(cObject *obj) const
{
    return dynamic_cast<Flit *>(obj)!=NULL;
}

const char *FlitDescriptor::getProperty(const char *propertyname) const
{
    cClassDescriptor *basedesc = getBaseClassDescriptor();
    return basedesc ? basedesc->getProperty(propertyname) : NULL;
}

int FlitDescriptor::getFieldCount(void *object) const
{
    cClassDescriptor *basedesc = getBaseClassDescriptor();
    return basedesc ? 16+basedesc->getFieldCount(object) : 16;
}

unsigned int FlitDescriptor::getFieldTypeFlags(void *object, int field) const
{
    cClassDescriptor *basedesc = getBaseClassDescriptor();
    if (basedesc) {
        if (field < basedesc->getFieldCount(object))
            return basedesc->getFieldTypeFlags(object, field);
        field -= basedesc->getFieldCount(object);
    }
    static unsigned int fieldTypeFlags[] = {
        FD_ISEDITABLE,
        FD_ISEDITABLE,
        FD_ISEDITABLE,
        FD_ISEDITABLE,
        FD_ISEDITABLE,
        FD_ISEDITABLE,
        FD_ISEDITABLE,
        FD_ISEDITABLE,
        FD_ISEDITABLE,
        FD_ISEDITABLE,
        FD_ISEDITABLE,
        FD_ISEDITABLE,
        FD_ISEDITABLE,
        FD_ISEDITABLE,
        FD_ISEDITABLE,
        FD_ISEDITABLE,
    };
    return (field>=0 && field<16) ? fieldTypeFlags[field] : 0;
}

const char *FlitDescriptor::getFieldName(void *object, int field) const
{
    cClassDescriptor *basedesc = getBaseClassDescriptor();
    if (basedesc) {
        if (field < basedesc->getFieldCount(object))
            return basedesc->getFieldName(object, field);
        field -= basedesc->getFieldCount(object);
    }
    static const char *fieldNames[] = {
        "cId",
        "data",
        "msgLength",
        "flitSize",
        "type",
        "Vc",
        "pcktId",
        "flits",
        "flitIdx",
        "srcId",
        "destId",
        "op",
        "pre_r",
        "firstNet",
        "InjectTime",
        "FirstNetTime",
    };
    return (field>=0 && field<16) ? fieldNames[field] : NULL;
}

int FlitDescriptor::findField(void *object, const char *fieldName) const
{
    cClassDescriptor *basedesc = getBaseClassDescriptor();
    int base = basedesc ? basedesc->getFieldCount(object) : 0;
    if (fieldName[0]=='c' && strcmp(fieldName, "cId")==0) return base+0;
    if (fieldName[0]=='d' && strcmp(fieldName, "data")==0) return base+1;
    if (fieldName[0]=='m' && strcmp(fieldName, "msgLength")==0) return base+2;
    if (fieldName[0]=='f' && strcmp(fieldName, "flitSize")==0) return base+3;
    if (fieldName[0]=='t' && strcmp(fieldName, "type")==0) return base+4;
    if (fieldName[0]=='V' && strcmp(fieldName, "Vc")==0) return base+5;
    if (fieldName[0]=='p' && strcmp(fieldName, "pcktId")==0) return base+6;
    if (fieldName[0]=='f' && strcmp(fieldName, "flits")==0) return base+7;
    if (fieldName[0]=='f' && strcmp(fieldName, "flitIdx")==0) return base+8;
    if (fieldName[0]=='s' && strcmp(fieldName, "srcId")==0) return base+9;
    if (fieldName[0]=='d' && strcmp(fieldName, "destId")==0) return base+10;
    if (fieldName[0]=='o' && strcmp(fieldName, "op")==0) return base+11;
    if (fieldName[0]=='p' && strcmp(fieldName, "pre_r")==0) return base+12;
    if (fieldName[0]=='f' && strcmp(fieldName, "firstNet")==0) return base+13;
    if (fieldName[0]=='I' && strcmp(fieldName, "InjectTime")==0) return base+14;
    if (fieldName[0]=='F' && strcmp(fieldName, "FirstNetTime")==0) return base+15;
    return basedesc ? basedesc->findField(object, fieldName) : -1;
}

const char *FlitDescriptor::getFieldTypeString(void *object, int field) const
{
    cClassDescriptor *basedesc = getBaseClassDescriptor();
    if (basedesc) {
        if (field < basedesc->getFieldCount(object))
            return basedesc->getFieldTypeString(object, field);
        field -= basedesc->getFieldCount(object);
    }
    static const char *fieldTypeStrings[] = {
        "int",
        "int",
        "int",
        "int",
        "int",
        "int",
        "int",
        "int",
        "int",
        "int",
        "int",
        "int",
        "int",
        "bool",
        "simtime_t",
        "simtime_t",
    };
    return (field>=0 && field<16) ? fieldTypeStrings[field] : NULL;
}

const char *FlitDescriptor::getFieldProperty(void *object, int field, const char *propertyname) const
{
    cClassDescriptor *basedesc = getBaseClassDescriptor();
    if (basedesc) {
        if (field < basedesc->getFieldCount(object))
            return basedesc->getFieldProperty(object, field, propertyname);
        field -= basedesc->getFieldCount(object);
    }
    switch (field) {
        default: return NULL;
    }
}

int FlitDescriptor::getArraySize(void *object, int field) const
{
    cClassDescriptor *basedesc = getBaseClassDescriptor();
    if (basedesc) {
        if (field < basedesc->getFieldCount(object))
            return basedesc->getArraySize(object, field);
        field -= basedesc->getFieldCount(object);
    }
    Flit *pp = (Flit *)object; (void)pp;
    switch (field) {
        default: return 0;
    }
}

std::string FlitDescriptor::getFieldAsString(void *object, int field, int i) const
{
    cClassDescriptor *basedesc = getBaseClassDescriptor();
    if (basedesc) {
        if (field < basedesc->getFieldCount(object))
            return basedesc->getFieldAsString(object,field,i);
        field -= basedesc->getFieldCount(object);
    }
    Flit *pp = (Flit *)object; (void)pp;
    switch (field) {
        case 0: return long2string(pp->getCId());
        case 1: return long2string(pp->getData());
        case 2: return long2string(pp->getMsgLength());
        case 3: return long2string(pp->getFlitSize());
        case 4: return long2string(pp->getType());
        case 5: return long2string(pp->getVc());
        case 6: return long2string(pp->getPcktId());
        case 7: return long2string(pp->getFlits());
        case 8: return long2string(pp->getFlitIdx());
        case 9: return long2string(pp->getSrcId());
        case 10: return long2string(pp->getDestId());
        case 11: return long2string(pp->getOp());
        case 12: return long2string(pp->getPre_r());
        case 13: return bool2string(pp->getFirstNet());
        case 14: return double2string(pp->getInjectTime());
        case 15: return double2string(pp->getFirstNetTime());
        default: return "";
    }
}

bool FlitDescriptor::setFieldAsString(void *object, int field, int i, const char *value) const
{
    cClassDescriptor *basedesc = getBaseClassDescriptor();
    if (basedesc) {
        if (field < basedesc->getFieldCount(object))
            return basedesc->setFieldAsString(object,field,i,value);
        field -= basedesc->getFieldCount(object);
    }
    Flit *pp = (Flit *)object; (void)pp;
    switch (field) {
        case 0: pp->setCId(string2long(value)); return true;
        case 1: pp->setData(string2long(value)); return true;
        case 2: pp->setMsgLength(string2long(value)); return true;
        case 3: pp->setFlitSize(string2long(value)); return true;
        case 4: pp->setType(string2long(value)); return true;
        case 5: pp->setVc(string2long(value)); return true;
        case 6: pp->setPcktId(string2long(value)); return true;
        case 7: pp->setFlits(string2long(value)); return true;
        case 8: pp->setFlitIdx(string2long(value)); return true;
        case 9: pp->setSrcId(string2long(value)); return true;
        case 10: pp->setDestId(string2long(value)); return true;
        case 11: pp->setOp(string2long(value)); return true;
        case 12: pp->setPre_r(string2long(value)); return true;
        case 13: pp->setFirstNet(string2bool(value)); return true;
        case 14: pp->setInjectTime(string2double(value)); return true;
        case 15: pp->setFirstNetTime(string2double(value)); return true;
        default: return false;
    }
}

const char *FlitDescriptor::getFieldStructName(void *object, int field) const
{
    cClassDescriptor *basedesc = getBaseClassDescriptor();
    if (basedesc) {
        if (field < basedesc->getFieldCount(object))
            return basedesc->getFieldStructName(object, field);
        field -= basedesc->getFieldCount(object);
    }
    switch (field) {
        default: return NULL;
    };
}

void *FlitDescriptor::getFieldStructPointer(void *object, int field, int i) const
{
    cClassDescriptor *basedesc = getBaseClassDescriptor();
    if (basedesc) {
        if (field < basedesc->getFieldCount(object))
            return basedesc->getFieldStructPointer(object, field, i);
        field -= basedesc->getFieldCount(object);
    }
    Flit *pp = (Flit *)object; (void)pp;
    switch (field) {
        default: return NULL;
    }
}

Register_Class(NoCAckMsg);

NoCAckMsg::NoCAckMsg(const char *name, int kind) : ::cMessage(name,kind)
{
    this->AckPktId_var = 0;
}

NoCAckMsg::NoCAckMsg(const NoCAckMsg& other) : ::cMessage(other)
{
    copy(other);
}

NoCAckMsg::~NoCAckMsg()
{
}

NoCAckMsg& NoCAckMsg::operator=(const NoCAckMsg& other)
{
    if (this==&other) return *this;
    ::cMessage::operator=(other);
    copy(other);
    return *this;
}

void NoCAckMsg::copy(const NoCAckMsg& other)
{
    this->AckPktId_var = other.AckPktId_var;
}

void NoCAckMsg::parsimPack(cCommBuffer *b)
{
    ::cMessage::parsimPack(b);
    doPacking(b,this->AckPktId_var);
}

void NoCAckMsg::parsimUnpack(cCommBuffer *b)
{
    ::cMessage::parsimUnpack(b);
    doUnpacking(b,this->AckPktId_var);
}

int NoCAckMsg::getAckPktId() const
{
    return AckPktId_var;
}

void NoCAckMsg::setAckPktId(int AckPktId)
{
    this->AckPktId_var = AckPktId;
}

class NoCAckMsgDescriptor : public cClassDescriptor
{
  public:
    NoCAckMsgDescriptor();
    virtual ~NoCAckMsgDescriptor();

    virtual bool doesSupport(cObject *obj) const;
    virtual const char *getProperty(const char *propertyname) const;
    virtual int getFieldCount(void *object) const;
    virtual const char *getFieldName(void *object, int field) const;
    virtual int findField(void *object, const char *fieldName) const;
    virtual unsigned int getFieldTypeFlags(void *object, int field) const;
    virtual const char *getFieldTypeString(void *object, int field) const;
    virtual const char *getFieldProperty(void *object, int field, const char *propertyname) const;
    virtual int getArraySize(void *object, int field) const;

    virtual std::string getFieldAsString(void *object, int field, int i) const;
    virtual bool setFieldAsString(void *object, int field, int i, const char *value) const;

    virtual const char *getFieldStructName(void *object, int field) const;
    virtual void *getFieldStructPointer(void *object, int field, int i) const;
};

Register_ClassDescriptor(NoCAckMsgDescriptor);

NoCAckMsgDescriptor::NoCAckMsgDescriptor() : cClassDescriptor("NoCAckMsg", "cMessage")
{
}

NoCAckMsgDescriptor::~NoCAckMsgDescriptor()
{
}

bool NoCAckMsgDescriptor::doesSupport(cObject *obj) const
{
    return dynamic_cast<NoCAckMsg *>(obj)!=NULL;
}

const char *NoCAckMsgDescriptor::getProperty(const char *propertyname) const
{
    cClassDescriptor *basedesc = getBaseClassDescriptor();
    return basedesc ? basedesc->getProperty(propertyname) : NULL;
}

int NoCAckMsgDescriptor::getFieldCount(void *object) const
{
    cClassDescriptor *basedesc = getBaseClassDescriptor();
    return basedesc ? 1+basedesc->getFieldCount(object) : 1;
}

unsigned int NoCAckMsgDescriptor::getFieldTypeFlags(void *object, int field) const
{
    cClassDescriptor *basedesc = getBaseClassDescriptor();
    if (basedesc) {
        if (field < basedesc->getFieldCount(object))
            return basedesc->getFieldTypeFlags(object, field);
        field -= basedesc->getFieldCount(object);
    }
    static unsigned int fieldTypeFlags[] = {
        FD_ISEDITABLE,
    };
    return (field>=0 && field<1) ? fieldTypeFlags[field] : 0;
}

const char *NoCAckMsgDescriptor::getFieldName(void *object, int field) const
{
    cClassDescriptor *basedesc = getBaseClassDescriptor();
    if (basedesc) {
        if (field < basedesc->getFieldCount(object))
            return basedesc->getFieldName(object, field);
        field -= basedesc->getFieldCount(object);
    }
    static const char *fieldNames[] = {
        "AckPktId",
    };
    return (field>=0 && field<1) ? fieldNames[field] : NULL;
}

int NoCAckMsgDescriptor::findField(void *object, const char *fieldName) const
{
    cClassDescriptor *basedesc = getBaseClassDescriptor();
    int base = basedesc ? basedesc->getFieldCount(object) : 0;
    if (fieldName[0]=='A' && strcmp(fieldName, "AckPktId")==0) return base+0;
    return basedesc ? basedesc->findField(object, fieldName) : -1;
}

const char *NoCAckMsgDescriptor::getFieldTypeString(void *object, int field) const
{
    cClassDescriptor *basedesc = getBaseClassDescriptor();
    if (basedesc) {
        if (field < basedesc->getFieldCount(object))
            return basedesc->getFieldTypeString(object, field);
        field -= basedesc->getFieldCount(object);
    }
    static const char *fieldTypeStrings[] = {
        "int",
    };
    return (field>=0 && field<1) ? fieldTypeStrings[field] : NULL;
}

const char *NoCAckMsgDescriptor::getFieldProperty(void *object, int field, const char *propertyname) const
{
    cClassDescriptor *basedesc = getBaseClassDescriptor();
    if (basedesc) {
        if (field < basedesc->getFieldCount(object))
            return basedesc->getFieldProperty(object, field, propertyname);
        field -= basedesc->getFieldCount(object);
    }
    switch (field) {
        default: return NULL;
    }
}

int NoCAckMsgDescriptor::getArraySize(void *object, int field) const
{
    cClassDescriptor *basedesc = getBaseClassDescriptor();
    if (basedesc) {
        if (field < basedesc->getFieldCount(object))
            return basedesc->getArraySize(object, field);
        field -= basedesc->getFieldCount(object);
    }
    NoCAckMsg *pp = (NoCAckMsg *)object; (void)pp;
    switch (field) {
        default: return 0;
    }
}

std::string NoCAckMsgDescriptor::getFieldAsString(void *object, int field, int i) const
{
    cClassDescriptor *basedesc = getBaseClassDescriptor();
    if (basedesc) {
        if (field < basedesc->getFieldCount(object))
            return basedesc->getFieldAsString(object,field,i);
        field -= basedesc->getFieldCount(object);
    }
    NoCAckMsg *pp = (NoCAckMsg *)object; (void)pp;
    switch (field) {
        case 0: return long2string(pp->getAckPktId());
        default: return "";
    }
}

bool NoCAckMsgDescriptor::setFieldAsString(void *object, int field, int i, const char *value) const
{
    cClassDescriptor *basedesc = getBaseClassDescriptor();
    if (basedesc) {
        if (field < basedesc->getFieldCount(object))
            return basedesc->setFieldAsString(object,field,i,value);
        field -= basedesc->getFieldCount(object);
    }
    NoCAckMsg *pp = (NoCAckMsg *)object; (void)pp;
    switch (field) {
        case 0: pp->setAckPktId(string2long(value)); return true;
        default: return false;
    }
}

const char *NoCAckMsgDescriptor::getFieldStructName(void *object, int field) const
{
    cClassDescriptor *basedesc = getBaseClassDescriptor();
    if (basedesc) {
        if (field < basedesc->getFieldCount(object))
            return basedesc->getFieldStructName(object, field);
        field -= basedesc->getFieldCount(object);
    }
    switch (field) {
        default: return NULL;
    };
}

void *NoCAckMsgDescriptor::getFieldStructPointer(void *object, int field, int i) const
{
    cClassDescriptor *basedesc = getBaseClassDescriptor();
    if (basedesc) {
        if (field < basedesc->getFieldCount(object))
            return basedesc->getFieldStructPointer(object, field, i);
        field -= basedesc->getFieldCount(object);
    }
    NoCAckMsg *pp = (NoCAckMsg *)object; (void)pp;
    switch (field) {
        default: return NULL;
    }
}

Register_Class(NoCReqMsg);

NoCReqMsg::NoCReqMsg(const char *name, int kind) : ::cMessage(name,kind)
{
    this->ReqPktId_var = 0;
    this->noFlits_var = 0;
    this->srcRouter_var = 0;
}

NoCReqMsg::NoCReqMsg(const NoCReqMsg& other) : ::cMessage(other)
{
    copy(other);
}

NoCReqMsg::~NoCReqMsg()
{
}

NoCReqMsg& NoCReqMsg::operator=(const NoCReqMsg& other)
{
    if (this==&other) return *this;
    ::cMessage::operator=(other);
    copy(other);
    return *this;
}

void NoCReqMsg::copy(const NoCReqMsg& other)
{
    this->ReqPktId_var = other.ReqPktId_var;
    this->noFlits_var = other.noFlits_var;
    this->srcRouter_var = other.srcRouter_var;
}

void NoCReqMsg::parsimPack(cCommBuffer *b)
{
    ::cMessage::parsimPack(b);
    doPacking(b,this->ReqPktId_var);
    doPacking(b,this->noFlits_var);
    doPacking(b,this->srcRouter_var);
}

void NoCReqMsg::parsimUnpack(cCommBuffer *b)
{
    ::cMessage::parsimUnpack(b);
    doUnpacking(b,this->ReqPktId_var);
    doUnpacking(b,this->noFlits_var);
    doUnpacking(b,this->srcRouter_var);
}

int NoCReqMsg::getReqPktId() const
{
    return ReqPktId_var;
}

void NoCReqMsg::setReqPktId(int ReqPktId)
{
    this->ReqPktId_var = ReqPktId;
}

int NoCReqMsg::getNoFlits() const
{
    return noFlits_var;
}

void NoCReqMsg::setNoFlits(int noFlits)
{
    this->noFlits_var = noFlits;
}

int NoCReqMsg::getSrcRouter() const
{
    return srcRouter_var;
}

void NoCReqMsg::setSrcRouter(int srcRouter)
{
    this->srcRouter_var = srcRouter;
}

class NoCReqMsgDescriptor : public cClassDescriptor
{
  public:
    NoCReqMsgDescriptor();
    virtual ~NoCReqMsgDescriptor();

    virtual bool doesSupport(cObject *obj) const;
    virtual const char *getProperty(const char *propertyname) const;
    virtual int getFieldCount(void *object) const;
    virtual const char *getFieldName(void *object, int field) const;
    virtual int findField(void *object, const char *fieldName) const;
    virtual unsigned int getFieldTypeFlags(void *object, int field) const;
    virtual const char *getFieldTypeString(void *object, int field) const;
    virtual const char *getFieldProperty(void *object, int field, const char *propertyname) const;
    virtual int getArraySize(void *object, int field) const;

    virtual std::string getFieldAsString(void *object, int field, int i) const;
    virtual bool setFieldAsString(void *object, int field, int i, const char *value) const;

    virtual const char *getFieldStructName(void *object, int field) const;
    virtual void *getFieldStructPointer(void *object, int field, int i) const;
};

Register_ClassDescriptor(NoCReqMsgDescriptor);

NoCReqMsgDescriptor::NoCReqMsgDescriptor() : cClassDescriptor("NoCReqMsg", "cMessage")
{
}

NoCReqMsgDescriptor::~NoCReqMsgDescriptor()
{
}

bool NoCReqMsgDescriptor::doesSupport(cObject *obj) const
{
    return dynamic_cast<NoCReqMsg *>(obj)!=NULL;
}

const char *NoCReqMsgDescriptor::getProperty(const char *propertyname) const
{
    cClassDescriptor *basedesc = getBaseClassDescriptor();
    return basedesc ? basedesc->getProperty(propertyname) : NULL;
}

int NoCReqMsgDescriptor::getFieldCount(void *object) const
{
    cClassDescriptor *basedesc = getBaseClassDescriptor();
    return basedesc ? 3+basedesc->getFieldCount(object) : 3;
}

unsigned int NoCReqMsgDescriptor::getFieldTypeFlags(void *object, int field) const
{
    cClassDescriptor *basedesc = getBaseClassDescriptor();
    if (basedesc) {
        if (field < basedesc->getFieldCount(object))
            return basedesc->getFieldTypeFlags(object, field);
        field -= basedesc->getFieldCount(object);
    }
    static unsigned int fieldTypeFlags[] = {
        FD_ISEDITABLE,
        FD_ISEDITABLE,
        FD_ISEDITABLE,
    };
    return (field>=0 && field<3) ? fieldTypeFlags[field] : 0;
}

const char *NoCReqMsgDescriptor::getFieldName(void *object, int field) const
{
    cClassDescriptor *basedesc = getBaseClassDescriptor();
    if (basedesc) {
        if (field < basedesc->getFieldCount(object))
            return basedesc->getFieldName(object, field);
        field -= basedesc->getFieldCount(object);
    }
    static const char *fieldNames[] = {
        "ReqPktId",
        "noFlits",
        "srcRouter",
    };
    return (field>=0 && field<3) ? fieldNames[field] : NULL;
}

int NoCReqMsgDescriptor::findField(void *object, const char *fieldName) const
{
    cClassDescriptor *basedesc = getBaseClassDescriptor();
    int base = basedesc ? basedesc->getFieldCount(object) : 0;
    if (fieldName[0]=='R' && strcmp(fieldName, "ReqPktId")==0) return base+0;
    if (fieldName[0]=='n' && strcmp(fieldName, "noFlits")==0) return base+1;
    if (fieldName[0]=='s' && strcmp(fieldName, "srcRouter")==0) return base+2;
    return basedesc ? basedesc->findField(object, fieldName) : -1;
}

const char *NoCReqMsgDescriptor::getFieldTypeString(void *object, int field) const
{
    cClassDescriptor *basedesc = getBaseClassDescriptor();
    if (basedesc) {
        if (field < basedesc->getFieldCount(object))
            return basedesc->getFieldTypeString(object, field);
        field -= basedesc->getFieldCount(object);
    }
    static const char *fieldTypeStrings[] = {
        "int",
        "int",
        "int",
    };
    return (field>=0 && field<3) ? fieldTypeStrings[field] : NULL;
}

const char *NoCReqMsgDescriptor::getFieldProperty(void *object, int field, const char *propertyname) const
{
    cClassDescriptor *basedesc = getBaseClassDescriptor();
    if (basedesc) {
        if (field < basedesc->getFieldCount(object))
            return basedesc->getFieldProperty(object, field, propertyname);
        field -= basedesc->getFieldCount(object);
    }
    switch (field) {
        default: return NULL;
    }
}

int NoCReqMsgDescriptor::getArraySize(void *object, int field) const
{
    cClassDescriptor *basedesc = getBaseClassDescriptor();
    if (basedesc) {
        if (field < basedesc->getFieldCount(object))
            return basedesc->getArraySize(object, field);
        field -= basedesc->getFieldCount(object);
    }
    NoCReqMsg *pp = (NoCReqMsg *)object; (void)pp;
    switch (field) {
        default: return 0;
    }
}

std::string NoCReqMsgDescriptor::getFieldAsString(void *object, int field, int i) const
{
    cClassDescriptor *basedesc = getBaseClassDescriptor();
    if (basedesc) {
        if (field < basedesc->getFieldCount(object))
            return basedesc->getFieldAsString(object,field,i);
        field -= basedesc->getFieldCount(object);
    }
    NoCReqMsg *pp = (NoCReqMsg *)object; (void)pp;
    switch (field) {
        case 0: return long2string(pp->getReqPktId());
        case 1: return long2string(pp->getNoFlits());
        case 2: return long2string(pp->getSrcRouter());
        default: return "";
    }
}

bool NoCReqMsgDescriptor::setFieldAsString(void *object, int field, int i, const char *value) const
{
    cClassDescriptor *basedesc = getBaseClassDescriptor();
    if (basedesc) {
        if (field < basedesc->getFieldCount(object))
            return basedesc->setFieldAsString(object,field,i,value);
        field -= basedesc->getFieldCount(object);
    }
    NoCReqMsg *pp = (NoCReqMsg *)object; (void)pp;
    switch (field) {
        case 0: pp->setReqPktId(string2long(value)); return true;
        case 1: pp->setNoFlits(string2long(value)); return true;
        case 2: pp->setSrcRouter(string2long(value)); return true;
        default: return false;
    }
}

const char *NoCReqMsgDescriptor::getFieldStructName(void *object, int field) const
{
    cClassDescriptor *basedesc = getBaseClassDescriptor();
    if (basedesc) {
        if (field < basedesc->getFieldCount(object))
            return basedesc->getFieldStructName(object, field);
        field -= basedesc->getFieldCount(object);
    }
    switch (field) {
        default: return NULL;
    };
}

void *NoCReqMsgDescriptor::getFieldStructPointer(void *object, int field, int i) const
{
    cClassDescriptor *basedesc = getBaseClassDescriptor();
    if (basedesc) {
        if (field < basedesc->getFieldCount(object))
            return basedesc->getFieldStructPointer(object, field, i);
        field -= basedesc->getFieldCount(object);
    }
    NoCReqMsg *pp = (NoCReqMsg *)object; (void)pp;
    switch (field) {
        default: return NULL;
    }
}

Register_Class(NoCGntMsg);

NoCGntMsg::NoCGntMsg(const char *name, int kind) : ::cMessage(name,kind)
{
    this->GntPktId_var = 0;
    this->cur_vc_var = 0;
}

NoCGntMsg::NoCGntMsg(const NoCGntMsg& other) : ::cMessage(other)
{
    copy(other);
}

NoCGntMsg::~NoCGntMsg()
{
}

NoCGntMsg& NoCGntMsg::operator=(const NoCGntMsg& other)
{
    if (this==&other) return *this;
    ::cMessage::operator=(other);
    copy(other);
    return *this;
}

void NoCGntMsg::copy(const NoCGntMsg& other)
{
    this->GntPktId_var = other.GntPktId_var;
    this->cur_vc_var = other.cur_vc_var;
}

void NoCGntMsg::parsimPack(cCommBuffer *b)
{
    ::cMessage::parsimPack(b);
    doPacking(b,this->GntPktId_var);
    doPacking(b,this->cur_vc_var);
}

void NoCGntMsg::parsimUnpack(cCommBuffer *b)
{
    ::cMessage::parsimUnpack(b);
    doUnpacking(b,this->GntPktId_var);
    doUnpacking(b,this->cur_vc_var);
}

int NoCGntMsg::getGntPktId() const
{
    return GntPktId_var;
}

void NoCGntMsg::setGntPktId(int GntPktId)
{
    this->GntPktId_var = GntPktId;
}

int NoCGntMsg::getCur_vc() const
{
    return cur_vc_var;
}

void NoCGntMsg::setCur_vc(int cur_vc)
{
    this->cur_vc_var = cur_vc;
}

class NoCGntMsgDescriptor : public cClassDescriptor
{
  public:
    NoCGntMsgDescriptor();
    virtual ~NoCGntMsgDescriptor();

    virtual bool doesSupport(cObject *obj) const;
    virtual const char *getProperty(const char *propertyname) const;
    virtual int getFieldCount(void *object) const;
    virtual const char *getFieldName(void *object, int field) const;
    virtual int findField(void *object, const char *fieldName) const;
    virtual unsigned int getFieldTypeFlags(void *object, int field) const;
    virtual const char *getFieldTypeString(void *object, int field) const;
    virtual const char *getFieldProperty(void *object, int field, const char *propertyname) const;
    virtual int getArraySize(void *object, int field) const;

    virtual std::string getFieldAsString(void *object, int field, int i) const;
    virtual bool setFieldAsString(void *object, int field, int i, const char *value) const;

    virtual const char *getFieldStructName(void *object, int field) const;
    virtual void *getFieldStructPointer(void *object, int field, int i) const;
};

Register_ClassDescriptor(NoCGntMsgDescriptor);

NoCGntMsgDescriptor::NoCGntMsgDescriptor() : cClassDescriptor("NoCGntMsg", "cMessage")
{
}

NoCGntMsgDescriptor::~NoCGntMsgDescriptor()
{
}

bool NoCGntMsgDescriptor::doesSupport(cObject *obj) const
{
    return dynamic_cast<NoCGntMsg *>(obj)!=NULL;
}

const char *NoCGntMsgDescriptor::getProperty(const char *propertyname) const
{
    cClassDescriptor *basedesc = getBaseClassDescriptor();
    return basedesc ? basedesc->getProperty(propertyname) : NULL;
}

int NoCGntMsgDescriptor::getFieldCount(void *object) const
{
    cClassDescriptor *basedesc = getBaseClassDescriptor();
    return basedesc ? 2+basedesc->getFieldCount(object) : 2;
}

unsigned int NoCGntMsgDescriptor::getFieldTypeFlags(void *object, int field) const
{
    cClassDescriptor *basedesc = getBaseClassDescriptor();
    if (basedesc) {
        if (field < basedesc->getFieldCount(object))
            return basedesc->getFieldTypeFlags(object, field);
        field -= basedesc->getFieldCount(object);
    }
    static unsigned int fieldTypeFlags[] = {
        FD_ISEDITABLE,
        FD_ISEDITABLE,
    };
    return (field>=0 && field<2) ? fieldTypeFlags[field] : 0;
}

const char *NoCGntMsgDescriptor::getFieldName(void *object, int field) const
{
    cClassDescriptor *basedesc = getBaseClassDescriptor();
    if (basedesc) {
        if (field < basedesc->getFieldCount(object))
            return basedesc->getFieldName(object, field);
        field -= basedesc->getFieldCount(object);
    }
    static const char *fieldNames[] = {
        "GntPktId",
        "cur_vc",
    };
    return (field>=0 && field<2) ? fieldNames[field] : NULL;
}

int NoCGntMsgDescriptor::findField(void *object, const char *fieldName) const
{
    cClassDescriptor *basedesc = getBaseClassDescriptor();
    int base = basedesc ? basedesc->getFieldCount(object) : 0;
    if (fieldName[0]=='G' && strcmp(fieldName, "GntPktId")==0) return base+0;
    if (fieldName[0]=='c' && strcmp(fieldName, "cur_vc")==0) return base+1;
    return basedesc ? basedesc->findField(object, fieldName) : -1;
}

const char *NoCGntMsgDescriptor::getFieldTypeString(void *object, int field) const
{
    cClassDescriptor *basedesc = getBaseClassDescriptor();
    if (basedesc) {
        if (field < basedesc->getFieldCount(object))
            return basedesc->getFieldTypeString(object, field);
        field -= basedesc->getFieldCount(object);
    }
    static const char *fieldTypeStrings[] = {
        "int",
        "int",
    };
    return (field>=0 && field<2) ? fieldTypeStrings[field] : NULL;
}

const char *NoCGntMsgDescriptor::getFieldProperty(void *object, int field, const char *propertyname) const
{
    cClassDescriptor *basedesc = getBaseClassDescriptor();
    if (basedesc) {
        if (field < basedesc->getFieldCount(object))
            return basedesc->getFieldProperty(object, field, propertyname);
        field -= basedesc->getFieldCount(object);
    }
    switch (field) {
        default: return NULL;
    }
}

int NoCGntMsgDescriptor::getArraySize(void *object, int field) const
{
    cClassDescriptor *basedesc = getBaseClassDescriptor();
    if (basedesc) {
        if (field < basedesc->getFieldCount(object))
            return basedesc->getArraySize(object, field);
        field -= basedesc->getFieldCount(object);
    }
    NoCGntMsg *pp = (NoCGntMsg *)object; (void)pp;
    switch (field) {
        default: return 0;
    }
}

std::string NoCGntMsgDescriptor::getFieldAsString(void *object, int field, int i) const
{
    cClassDescriptor *basedesc = getBaseClassDescriptor();
    if (basedesc) {
        if (field < basedesc->getFieldCount(object))
            return basedesc->getFieldAsString(object,field,i);
        field -= basedesc->getFieldCount(object);
    }
    NoCGntMsg *pp = (NoCGntMsg *)object; (void)pp;
    switch (field) {
        case 0: return long2string(pp->getGntPktId());
        case 1: return long2string(pp->getCur_vc());
        default: return "";
    }
}

bool NoCGntMsgDescriptor::setFieldAsString(void *object, int field, int i, const char *value) const
{
    cClassDescriptor *basedesc = getBaseClassDescriptor();
    if (basedesc) {
        if (field < basedesc->getFieldCount(object))
            return basedesc->setFieldAsString(object,field,i,value);
        field -= basedesc->getFieldCount(object);
    }
    NoCGntMsg *pp = (NoCGntMsg *)object; (void)pp;
    switch (field) {
        case 0: pp->setGntPktId(string2long(value)); return true;
        case 1: pp->setCur_vc(string2long(value)); return true;
        default: return false;
    }
}

const char *NoCGntMsgDescriptor::getFieldStructName(void *object, int field) const
{
    cClassDescriptor *basedesc = getBaseClassDescriptor();
    if (basedesc) {
        if (field < basedesc->getFieldCount(object))
            return basedesc->getFieldStructName(object, field);
        field -= basedesc->getFieldCount(object);
    }
    switch (field) {
        default: return NULL;
    };
}

void *NoCGntMsgDescriptor::getFieldStructPointer(void *object, int field, int i) const
{
    cClassDescriptor *basedesc = getBaseClassDescriptor();
    if (basedesc) {
        if (field < basedesc->getFieldCount(object))
            return basedesc->getFieldStructPointer(object, field, i);
        field -= basedesc->getFieldCount(object);
    }
    NoCGntMsg *pp = (NoCGntMsg *)object; (void)pp;
    switch (field) {
        default: return NULL;
    }
}


