#include "EvtFramePrincipal.h"

EvtFramePrincipal::EvtFramePrincipal( wxWindow* parent )
:
FramePrincipal( parent )
{
    m_thread_CB = false;
    m_thread_conso = false;
    m_communication =new CommunicationThread(10,0);
    Connect( ID_THREAD_CODE_BARRES, wxEVT_COMMAND_BUTTON_CLICKED,
             wxCommandEventHandler( EvtFramePrincipal::OnThreadCodeBarresEvent),
                                    NULL, this );
    Connect( ID_THREAD_CONSOMMATEUR, wxEVT_COMMAND_BUTTON_CLICKED,
             wxCommandEventHandler( EvtFramePrincipal::OnThreadConsoEvent),
                                    NULL, this );
    m_thread_CB = new Thread_code_barres;
    if( m_thread_CB->Create != wxTHREAD_NO_ERROR)
    {
        wxLogError(wxT("Création thread code barres impossible");
    }
    else
    {
        m_thread_CB->Run();
    }
    m_thread_conso = new ThreadConsommateur(this,m_communication);
    if ( m_thread_conso->Create() != wxTHREAD_NO_ERROR )
    {
        wxLogError(wxT("Création thread consommateur impossible!"));
    }
    else
    {
        m_thread_conso->Run();
    }
}

void EvtFramePrincipal::OnCLoseFrame( wxCloseEvent& event )
{
if (m_thread_CB && m_thread_conso)
{
Destroy();
}
else
{
m_textCtrlLog->AppendText("Pour arrêter le programme, cliquez sur le bouton 'FIN'\
ou attendez que le consommateur ait fini\n");
}
}

void EvtFramePrincipal::OnboutonNonScolaireClick( wxCommandEvent& event )
{
// TODO: Implement OnboutonNonScolaireClick
}

void EvtFramePrincipal::OnboutonScolaireClick( wxCommandEvent& event )
{
// TODO: Implement OnboutonScolaireClick
}

void EvtFramePrincipal::OnboutonInconnuClick( wxCommandEvent& event )
{
// TODO: Implement OnboutonInconnuClick
}

void EvtFramePrincipal::OnBoutonInvalideClick( wxCommandEvent& event )
{
// TODO: Implement OnBoutonInvalideClick
}

void EvtFramePrincipal::OnBoutonFinClick( wxCommandEvent& event )
{
m_thread_conso->Delete();
m_thread_CB->Delete();
m_buttonFin->Hide();
}


void EvtFramePrincipal::OnThreadConsoEvent(wxCommandEvent& event)
{
    if (event.GetString().IsSameAs("FIN"))
    {
        m_textCtrlLog->AppendText("Le thread Consommateur a signalé qu'il avait fini.\n");
        m_ThreadConsFini=true;
        // on déconnecte l'événement venant du thread
        Disconnect( wxEVT_COMMAND_BUTTON_CLICKED,
             wxCommandEventHandler( EvtFramePrincipal::OnThreadConsoEvent));
    }
    else
    {
        m_textCtrlLog->AppendText(event.GetString());
    }
}

void EvtFramePrincipal:: OnThreadCodeBarresEvent(wxCommandEvent& event)
{
    if (event.GetString().IsSameAs("FIN"))
    {
        m_textCtrlLog->AppendText(
                            "Le thread code barres a signalé qu'il avait fini.\n");
        m_thread_CB_Fini = true;
        Disconnect( wxEVT_COMMAND_BUTTON_CLICKED,
               wxCommandEventHandler( EvtFramePrincipal::OnThreadCodeBarresEvent));
    }
    else
    {
        m_textCtrlLog->AppendText(event.GetString());
    }
}