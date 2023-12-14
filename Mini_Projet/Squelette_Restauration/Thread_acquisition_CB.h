#ifndef THREAD_ACQUISITION_CB_H
#define THREAD_ACQUISITION_CB_H
#include "EvtFramePrincipal.h"
#include <wx/wx.h>
#include <CommunicationThread.h>
#include <PorteurCodeBarres.h>
class Thread_acquisition_CB : public wxThread
{
    
public:
    Thread_acquisition_CB(EvtFramePrincipal *frame, CommunicationThread *com);
    virtual void *Entry();
    virtual void OnExit();

private:
    EvtFramePrincipal *m_frame;
    CommunicationThread *m_communication;
    bool m_fin_demandee;
    PorteurCodeBarres pcb;
};
#endif // THREAD_CODE_BARRES_H