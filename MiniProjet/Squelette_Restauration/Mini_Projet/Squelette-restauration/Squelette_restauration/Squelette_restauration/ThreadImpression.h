//
// File: ThreadImpression.h
// Created by: Eric Laly <elaly@free.fr>
// Created on: Tue Oct  4 14:20:05 2005
//

#ifndef _THREADIMPRESSION_H_
#define _THREADIMPRESSION_H_
#include <wx/wx.h>
#include "CommunicationThread.h"

#include <fstream>
using std::ofstream;
using std::endl;
using std::ios;
using std::cerr;
using std::ostringstream;

class ThreadImpression : public wxThread
{
public:
    ThreadImpression(CommunicationThread *ct);
    ~ThreadImpression();
    virtual void *Entry();
    virtual void OnExit();

private:
    CommunicationThread *m_ct_traitementPCB_impression_Ptr;
    ofstream  m_imprimante;
};


#endif	//_THREADIMPRESSION_H_
