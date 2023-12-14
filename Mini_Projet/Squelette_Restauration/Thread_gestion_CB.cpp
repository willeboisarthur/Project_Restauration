#include "Thread_gestion_CB.h"
#include <iostream>
#include <thread>
#include <cstdlib>
#include <ctime>

ThreadLectureCb::ThreadLectureCb(EvtFramePrincipal *frame,
                                 CommunicationThread *com)
    :wxThread()
{
    m_frame = frame;
    m_communication=com;
    m_fin_demandee=false;
}

void ThreadLectureCb::OnExit()
{
    // on envoie le message de fin
    wxCommandEvent MyEvent( wxEVT_COMMAND_BUTTON_CLICKED,ID_THREAD_CONSOMMATEUR);
    MyEvent.SetString("FIN");
    wxPostEvent(m_frame, MyEvent);
}

void *ThreadLectureCb::Entry()
{
    wxString chaine("");
        wxCommandEvent MyEvent( wxEVT_COMMAND_BUTTON_CLICKED,ID_THREAD_CONSOMMATEUR);
        while (!m_fin_demandee || (!m_communication->FileVide()))
        {
            int valeur=0;
            if(m_communication->RecupereDansFile(valeur,2000))
            {
                chaine.Clear();
                chaine<<"consommateur: "<<valeur<<'\n';
                MyEvent.SetString(chaine);
                wxPostEvent(m_frame, MyEvent);
                Sleep(1000);
            }
    }
    return NULL;
}
