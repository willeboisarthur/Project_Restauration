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

long Thread_acquisition_CB::GenererNombreAleatoire()
{
	return rand() % 10000000;
}
void *Thread_acquisition_CB::Entry()
{
	while (!m_fin_demandee)
    {
        // Générer un nombre aléatoire
        long nombreAleatoire = GenererNombreAleatoire();
        pcb.SetCode(nombreAleatoire);

        // Mettre le PorteurCodeBarres dans la file de communication
        m_communication->MetDansFile(pcb);

        // Attendre un certain temps avant de générer le prochain nombre
        wxMilliSleep(500); // par exemple, 500 ms
    }

}