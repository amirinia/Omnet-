//
// Generated file, do not edit! Created by nedtool 5.0 from myMessage.msg.
//

#ifndef __MYMESSAGE_M_H
#define __MYMESSAGE_M_H

#include <omnetpp.h>

// nedtool version check
#define MSGC_VERSION 0x0500




/**
 * Class generated from <tt>myMessage.msg:1</tt> by nedtool.
 * <pre>
 * message myMessage
 * {
 *     int source;
 *     int destination;
 *     int hopCount = 0;
 * }
 * </pre>
 */
class myMessage : public ::omnetpp::cMessage
{
  protected:
    int source;
    int destination;
    int hopCount;

  private:
    void copy(const myMessage& other);

  protected:
    // protected and unimplemented operator==(), to prevent accidental usage
    bool operator==(const myMessage&);

  public:
    myMessage(const char *name=nullptr, int kind=0);
    myMessage(const myMessage& other);
    virtual ~myMessage();
    myMessage& operator=(const myMessage& other);
    virtual myMessage *dup() const {return new myMessage(*this);}
    virtual void parsimPack(omnetpp::cCommBuffer *b) const;
    virtual void parsimUnpack(omnetpp::cCommBuffer *b);

    // field getter/setter methods
    virtual int getSource() const;
    virtual void setSource(int source);
    virtual int getDestination() const;
    virtual void setDestination(int destination);
    virtual int getHopCount() const;
    virtual void setHopCount(int hopCount);
};

inline void doParsimPacking(omnetpp::cCommBuffer *b, const myMessage& obj) {obj.parsimPack(b);}
inline void doParsimUnpacking(omnetpp::cCommBuffer *b, myMessage& obj) {obj.parsimUnpack(b);}


#endif // ifndef __MYMESSAGE_M_H

