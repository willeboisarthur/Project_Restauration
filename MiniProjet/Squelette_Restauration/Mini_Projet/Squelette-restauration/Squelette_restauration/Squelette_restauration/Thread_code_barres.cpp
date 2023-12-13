#include "Thread_code_barres.h"
#include <iostream>
#include <cstdlib>
#include <ctime>
#include <chrono>

Thread_code_barres::Thread_code_barres(EvtFramePrincipal *frame,
                                       CommunicationThread *com)
    :wxThread()
{
    m_frame = frame;
    m_communication=com;
    m_fin_demandee=false;
}



void Thread_code_barres::OnExit()
{
    wxCommandEvent MyEvent( wxEVT_COMMAND_BUTTON_CLICKED,ID_THREAD_CODE_BARRES);
    MyEvent.SetString("FIN");
    wxPostEvent(m_frame, MyEvent);
}

void *Thread_code_barres::Entry()
{
    wxString chaine("");
    int i=0;
    wxCommandEvent MyEvent( wxEVT_COMMAND_BUTTON_CLICKED,ID_THREAD_CODE_BARRES);
    while (!TestDestroy())
    {
        chaine.Clear();
        int code_aleatoire = std::rand() % 10000000;
        
        if (PorteurCodeBarres.AnalyseCode(code_aleatoire) != PorteurCodeBarres.EstConnu())
        {
            chaine<<"Code invalide '\n'";
        }
        else if (PorteurCodeBarres.AnalyseCode(code_aleatoire) == PorteurCodeBarres.EstValide())
        {
            if (PorteurCodeBarres.EstConnu())
            {
                if (PorteurCodeBarres.EstScolaire())
                {
                    chaine<<"Code scolaire '\n'";
                    m_communication->MetDansFile(code_aleatoire);
                    MyEvent.SetString(chaine);
                    wxPostEvent(m_frame, MyEvent);
                }
            }
            else
            {
                chaine<<"Code valide mais inconnu'\n'";
                m_communication->MetDansFile(code_aleatoire);
                MyEvent.SetString(chaine);
                wxPostEvent(m_frame, MyEvent);
            }
            else
            {
                chaine<<"Code non scolaire '\n'";
                m_communication->MetDansFile(nombre_aleatoire);
                MyEvent.SetString(chaine);
                wxPostEvent(m_frame, MyEvent);
            }
        }
        nombre_aleatoire = (nombre_aleatoire + 1) % 10000000;
        Sleep(1000);
    }
    return NULL;
}