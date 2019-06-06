#ifndef __A7_COMPUTER_H_
#define __A7_COMPUTER_H_
#include <stdio.h>
#include <string.h>
#include <omnetpp.h>
#include "myMessage_m.h"



using namespace omnetpp;

class Computer : public cSimpleModule{
    private:
        long numSent;
        long numReceived;

    protected:
        virtual void initialize()override;
        virtual void handleMessage(cMessage *msg)override;
        virtual void refreshDisplay()const override;
        virtual myMessage *createMessage();
        virtual void forwardMessage(myMessage *msg);

};

#endif
