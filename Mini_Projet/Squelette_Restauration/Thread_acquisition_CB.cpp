#include "Thread_acquisition_CB.h"

#include <iostream>
#include <cstdlib>
#include <ctime>
#include <chrono>

Thread_acquisition_CB::Thread_acquisition_CB(EvtFramePrincipal *frame,
                                       CommunicationThread *com)
    :wxThread()
{
    m_frame = frame;
    m_communication=com;
    m_fin_demandee=false;
}



void Thread_acquisition_CB::OnExit()
{
    wxCommandEvent MyEvent( wxEVT_COMMAND_BUTTON_CLICKED,ID_THREAD_CODE_BARRES);
    MyEvent.SetString("FIN");
    wxPostEvent(m_frame, MyEvent);
}

void *Thread_acquisition_CB::Entry()
{
    wxString chaine("");
    int i=0;
    wxCommandEvent MyEvent( wxEVT_COMMAND_BUTTON_CLICKED, ID_THREAD_CODE_BARRES);
    while (!TestDestroy()) 
    {
        chaine.Clear();
        int code_aleatoire = std::rand() % ;
        chaine<<code_aleatoire;
        MyEvent.SetString(chaine);
        wxPostEvent(m_frame, MyEvent);
    }
    return NULL;
}