#ifndef THREAD_CODE_BARRES_H
#define THREAD_CODE_BARRES_H
#include "EvtFramePrincipal.h"
#include <wx/wx.h>
#include <CommunicationThread.h>
#include <PorteurCodeBarres.h>
class Thread_code_barres : public wxThread
{
    
public:
    Thread_code_barres(EvtFramePrincipal *frame, CommunicationThread *com);
    virtual void *Entry();
    virtual void OnExit();

private:
    EvtFramePrincipal *m_frame;
    CommunicationThread *m_communication;
    bool m_fin_demandee;
};

#endif // THREAD_CODE_BARRES_H
