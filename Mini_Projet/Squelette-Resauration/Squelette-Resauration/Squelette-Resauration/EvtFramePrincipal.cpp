#include "EvtFramePrincipal.h"

EvtFramePrincipal::EvtFramePrincipal( wxWindow* parent )
:
FramePrincipal( parent )
{
    m_ValeurTampon = 0;
    m_Thread_Acquisition_Fini = false;
    m_ThreadImpressionFini = false;
    m_Thread_Lecteur_Fini = false;
    Connect(ID_THREAD_ACQUISITION, wxEVT_COMMAND_BUTTON_CLICKED,
             wxCommandEventHandler( EvtFramePrincipal::OnThreadAcqusitionEvent()),
                                    NULL, this );
    Connect(ID_THREAD_IPRESSION, wxEVT_COMMAND_BUTTON_CLICKED,
             wxCommandEventHandler( EvtFramePrincipal::OnThreaImpressionEvent()),
                                    NULL, this );
    Connect(ID_THREAD_LECTEUR, wxEVT_COMMAND_BUTTON_CLICKED,
             wxCommandEventHandler( EvtFramePrincipal::OnthreadLetectureEvent()),
                                    NULL, this );
    m_thread_acquisition = new Thread_acquisition_CB;
    if ( m_thread_acquisition->Create() != wxTHREAD_NO_ERROR)
    {
        wxLogError(wxT("Création Thread acqusition impossible");
    }
    else
    {
        m_thread_acquisition->Run();
    }
    
    m_thread_impression = new ThreadImpression;
    if ( m_thread_impression->Create() != wxTHREAD_NO_ERROR)
    {
        wxLogError(wxT("Création thread impression impossible");
    }
    else
    {
        m_thread_impression->Run();
    }
    
    m_thread_lecteur = new ThreadLectureCb;
    if ( m_thread_lecteur->Create() != wxTHREAD_NO_ERROR)
    {
        wxLogError(wxT("Création thred lecteur cb impossible");
    }
    else
    {
        m_thread_lecteur->Run();
    }
}

void EvtFramePrincipal::OnCloseFrame( wxCloseEvent& event )
{
    if (m_thread_acquisition && m_thread_impression && m_thread_lecteur)
    {
        Destroy();
    }
}

void EvtFramePrincipal::OnBoutonNonScolaireClick( wxCommandEvent& event )
{
    m_textCtrlLog->AppendText("Code non scolaire \n"); //provisoire
}

void EvtFramePrincipal::OnBoutonScolaireClick( wxCommandEvent& event )
{
    m_textCtrlLog->AppendText("Code scolaire \n"); //provisoire
}

void EvtFramePrincipal::OnBoutonInconnuClick( wxCommandEvent& event )
{
    m_textCtrlLog->AppendText("Code valide mais inconnu \n"); //provisoire
}

void EvtFramePrincipal::OnBoutonInvalideClick( wxCommandEvent& event )
{
    m_textCtrlLog->AppendText("Code Invalide \n"); //provisoire
}

void EvtFramePrincipal::OnBoutonFinClick( wxCommandEvent& event )
{
    m_thread_acquisition->Delete();
    m_thread_impression->Delete();
    m_thread_lecteur>Delete();
    m_buttonFin->Hide();
}

void OnThreadAcqusitionEvent(wxCommandEvent &event)
{
    if (event.GetString().IsSameAs("FIN"))
    {
        m_Thread_Acquisition_Fini = true;
        Disconnect(wxEVT_COMMAND_BUTTON_CLICKED,
             wxCommandEventHandler( EvtFramePrincipal::OnThreadAcqusitionEvent());
    }
    else
    {
        //m_textCtrlLog->AppendText(event.GetString());
        m_ValeurTampon ++;
    }
}

void OnThreaImpressionEvent(wxCommandEvent &event)
{
    if (event.GetString().IsSameAs("FIN"))
    {
        m_Thread_Acquisition_Fini = true;
        Disconnect(wxEVT_COMMAND_BUTTON_CLICKED,
             wxCommandEventHandler( EvtFramePrincipal::OnThreaImpressionEvent());
    }
    else
    {
        m_textCtrlLog->AppendText(event.GetString());
        m_ValeurTampon--;
    }
}

void OnthreadLetectureEvent(wxCommandEvent &event)
{
    if (event.GetString().IsSameAs("FIN"))
    {
        m_Thread_Acquisition_Fini = true;
        Disconnect(wxEVT_COMMAND_BUTTON_CLICKED,
        wxCommandEventHandler( EvtFramePrincipal::OnThreadLectureEvent());
    }
    else
    {
        m_textCtrlLog->AppendText(event.GetString());
        m_ValeurTampon--;
    }
}