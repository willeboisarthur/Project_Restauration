#include "Thread_code_barres.h"

Thred_code_barres::Thred_code_barres(EvtFramePrincipal *frame
                                     CommunicationThread *com)
    :wxThread()
{
    m_frame = frame;
    m_communication=com;
    m_fin_demandee=false;
}

Thred_code_barres::~Thred_code_barres()
{
}

void ThreadProducteur::OnExit()
{
    wxCommandEvent MyEvent( wxEVT_COMMAND_BUTTON_CLICKED,ID_THREAD_CODE_BARRES);
    MyEvent.SetString("FIN");
    wxPostEvent(m_frame, MyEvent);
}

void *ThreadProducteur::Entry()
{
    wxString chaine("");
    int i=0;
    wxCommandEvent MyEvent( wxEVT_COMMAND_BUTTON_CLICKED,ID_THREAD_CODE_BARRES);
    while (!TestDestroy())
    {
        chaine.Clear();
        chaine<<"producteur: "<<i<<'\n';
        m_communication->MetDansFile(i);
        MyEvent.SetString(chaine);
        wxPostEvent(m_frame, MyEvent);
        i=(i+1)%1000;
        Sleep(1000);
    }
    return NULL;
}