#include <stdio.h>
#include <string.h>
#include <omnetpp.h>

#include "myMessage_m.h"
#include "computer.h"
Define_Module(Computer);

    void Computer::initialize(){
        numSent =0;
        numReceived =0;
        WATCH(numSent);
        WATCH(numReceived);
        if(getIndex()==0){
            myMessage *msg = createMessage();
            numSent++;
            forwardMessage(msg);
        }
    }

    void Computer::handleMessage(cMessage *msg){
        myMessage *ttmsg = check_and_cast<myMessage *>(msg);
        if(ttmsg->getDestination()==getIndex()){
            EV << "message arrived after " << ttmsg->getHopCount() << " hops \n";
            numReceived++;
            delete ttmsg;
            myMessage *Newmsg = createMessage();
            numSent++;
            forwardMessage(Newmsg);
        }else{
            EV << "i am " << getIndex() << " in am not" << ttmsg->getDestination() << " \n";
            forwardMessage(ttmsg);
        }
    }

    myMessage *Computer::createMessage(){
        int src = getIndex();
        setDes:
        int des = intuniform(0,getVectorSize()-2);
        if(src==des)
            goto setDes;
        myMessage *msg = new myMessage("send message");
        msg->setSource(src);
        msg->setDestination(des);
        return msg;

    }
    void Computer::forwardMessage(myMessage *msg){
        msg->setHopCount(msg->getHopCount()+1);
        int K = intuniform(0,gateSize("gate")-1);
        send(msg,"gate$o",K);

    }
    void Computer::refreshDisplay()const{
        char buf[40];
        sprintf(buf, "R: %ld S: %ld", numReceived, numSent);
        getDisplayString().setTagArg("t", 0, buf);
   }
