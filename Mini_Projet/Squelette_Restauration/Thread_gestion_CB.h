#ifndef THREAD_GESTION_CB_H
#define THREAD_GESTION_CB_H
#include "EvtFramePrincipal.h"
#include <queue>
using std::queue;
#include <wx/wx.h>
#include "CommunicationThread.h"

class ThreadLectureCb
{
public:
    ThreadLectureCb(EvtFramePrincipal *frame, CommunicationThread *com);
    virtual void *Entry();
    virtual void OnExit();
private:
    EvtFramePrincipal *m_frame;
    CommunicationThread *m_communication;
    bool m_fin_demandee;
    PorteurCodeBarres pcb;
};

#endif // THREAD_GESTION_CB_H
