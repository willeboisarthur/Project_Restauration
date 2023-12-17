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
	while (!m_fin_demandee)
    {
		if(m_communication->RecupereDansFile(valeur,2000))
            {
				// Récupérer un PorteurCodeBarres de la file de communication
				PorteurCodeBarres pcb = m_communication->RecupereDansFile();

				// Vérifier si le code est valide ou invalide
				if (pcb.GetCode() >= 0 && pcb.GetCode() <= 999999)
				{
					// Code valide
					pcb.SetValide(true);
					chaine.Clear();
					chaine<<"Valide mais inconnu"<<valeur<<'\n';
					MyEvent.SetString(chaine);
					wxPostEvent(m_frame, MyEvent);
				}	
				else
				{
					// Code invalide
					pcb.SetValide(false);
					chaine.Clear();
					chaine<<"Invalide"<<valeur<<'\n';
					MyEvent.SetString(chaine);
					wxPostEvent(m_frame, MyEvent);
				}
			}
		Sleep(1000);
    return NULL;
}
