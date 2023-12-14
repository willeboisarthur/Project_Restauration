#ifndef THREAD_CONSOMMATEUR_H
#define THREAD_CONSOMMATEUR_H
#include "EvtFramePrincipal.h"
#include <queue>
using std::queue;
#include <wx/wx.h>
#include "CommunicationThread.h"

class ThreadConsommateur
{
public:
    ThreadConsommateur();
    ~ThreadConsommateur();
    virtual void *Entry();
    virtual void OnExit();
private:
    EvtFramePrincipal *m_frame;
    CommunicationThread *m_communication;
    bool m_fin_demandee;
};

#endif // THREAD_VALIDATION_CODE_BARRES_H
