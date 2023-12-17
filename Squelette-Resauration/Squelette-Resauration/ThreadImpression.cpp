//
// File: ThreadImpression.cc
// Created by: Eric Laly <elaly@free.fr>
// Created on: Tue Oct  4 14:20:05 2005
//
#include "ThreadImpression.h"
//#include "constantes.h"

ThreadImpression::ThreadImpression(CommunicationThread *ct): wxThread(wxTHREAD_JOINABLE)
{
    m_ct_traitementPCB_impression_Ptr=ct;
    m_imprimante.open ("./sortie imprimante",ios::out); //on utilise un fichier sinon cf.ligne suivante
//	m_imprimante.open ("/dev/lp0",ios::out);
    if (!m_imprimante) 	cerr <<"Erreur ouverture port imprimante"<< endl;
    m_imprimante<< "imprimante initialisée"<<endl;
}

ThreadImpression::~ThreadImpression()
{
}

void ThreadImpression::OnExit()
{
    m_imprimante.close();
    std::cout << "fin du thread d'impression"<<std::endl;
}

void *ThreadImpression::Entry()
{
    bool fin=false;

    while (!fin || !m_ct_traitementPCB_impression_Ptr->FileVide())
    {
        PorteurCodeBarres pcb=m_ct_traitementPCB_impression_Ptr->RecupereDansFile();
        if  (pcb.FinDemandee())
            fin=true;
        else if (!pcb.EstScolaire())
            m_imprimante<<"passage d'un non scolaire"<<endl;
		else if (!pcb.EstConnu())
		{
			m_imprimante<<"Inconnu"<<endl;
		}
		else if (pcb.EstConnu())
		{
			m_imprimante<<"Valide mais inconnu"<<endl;
		}
		else
		{
			m_imprimante<<"passage d'un scolaire"<<endl;
		}
    }
    return NULL;
}
