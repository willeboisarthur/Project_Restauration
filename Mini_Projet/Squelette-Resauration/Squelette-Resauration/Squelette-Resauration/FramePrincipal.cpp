///////////////////////////////////////////////////////////////////////////
// C++ code generated with wxFormBuilder (version 3.9.0 Sep 14 2021)
// http://www.wxformbuilder.org/
//
// PLEASE DO *NOT* EDIT THIS FILE!
///////////////////////////////////////////////////////////////////////////

#include "FramePrincipal.h"

///////////////////////////////////////////////////////////////////////////

FramePrincipal::FramePrincipal( wxWindow* parent, wxWindowID id, const wxString& title, const wxPoint& pos, const wxSize& size, long style ) : wxFrame( parent, id, title, pos, size, style )
{
	this->SetSizeHints( wxSize( 500,500 ), wxSize( 800,800 ) );

	wxBoxSizer* bSizerPrincipal;
	bSizerPrincipal = new wxBoxSizer( wxVERTICAL );

	wxStaticBoxSizer* sbSizer1;
	sbSizer1 = new wxStaticBoxSizer( new wxStaticBox( this, wxID_ANY, wxT("Saisie manuelle") ), wxHORIZONTAL );

	m_button_non_scolaire = new wxButton( sbSizer1->GetStaticBox(), wxID_ANY, wxT("Passage Non Scolaire"), wxDefaultPosition, wxSize( 150,-1 ), 0 );
	sbSizer1->Add( m_button_non_scolaire, 0, wxTOP|wxBOTTOM|wxLEFT, 5 );

	m_button_scolaire = new wxButton( sbSizer1->GetStaticBox(), wxID_ANY, wxT("Passage Scolaire"), wxDefaultPosition, wxSize( 130,-1 ), 0 );
	sbSizer1->Add( m_button_scolaire, 0, wxTOP|wxBOTTOM|wxLEFT, 5 );

	m_button_inconnu = new wxButton( sbSizer1->GetStaticBox(), wxID_ANY, wxT("Passage Inconnu"), wxDefaultPosition, wxSize( 120,-1 ), 0 );
	sbSizer1->Add( m_button_inconnu, 0, wxTOP|wxBOTTOM|wxLEFT, 5 );

	m_button_invalide = new wxButton( sbSizer1->GetStaticBox(), wxID_ANY, wxT("Passage Invalide"), wxDefaultPosition, wxSize( 120,-1 ), 0 );
	sbSizer1->Add( m_button_invalide, 0, wxALL, 5 );


	bSizerPrincipal->Add( sbSizer1, 0, wxEXPAND, 5 );

	wxBoxSizer* bSizer2;
	bSizer2 = new wxBoxSizer( wxVERTICAL );

	m_textCtrlLog = new wxTextCtrl( this, wxID_ANY, wxEmptyString, wxDefaultPosition, wxDefaultSize, wxTE_MULTILINE|wxTE_READONLY );
	bSizer2->Add( m_textCtrlLog, 1, wxALL|wxEXPAND, 5 );

	m_buttonFin = new wxButton( this, wxID_ANY, wxT("Demande FIN"), wxDefaultPosition, wxDefaultSize, 0 );
	bSizer2->Add( m_buttonFin, 0, wxALL|wxALIGN_CENTER_HORIZONTAL, 5 );


	bSizerPrincipal->Add( bSizer2, 1, wxEXPAND, 5 );


	this->SetSizer( bSizerPrincipal );
	this->Layout();

	this->Centre( wxBOTH );

	// Connect Events
	this->Connect( wxEVT_CLOSE_WINDOW, wxCloseEventHandler( FramePrincipal::OnCloseFrame ) );
	m_button_non_scolaire->Connect( wxEVT_COMMAND_BUTTON_CLICKED, wxCommandEventHandler( FramePrincipal::OnBoutonNonScolaireClick ), NULL, this );
	m_button_scolaire->Connect( wxEVT_COMMAND_BUTTON_CLICKED, wxCommandEventHandler( FramePrincipal::OnBoutonScolaireClick ), NULL, this );
	m_button_inconnu->Connect( wxEVT_COMMAND_BUTTON_CLICKED, wxCommandEventHandler( FramePrincipal::OnBoutonInconnuClick ), NULL, this );
	m_button_invalide->Connect( wxEVT_COMMAND_BUTTON_CLICKED, wxCommandEventHandler( FramePrincipal::OnBoutonInvalideClick ), NULL, this );
	m_buttonFin->Connect( wxEVT_COMMAND_BUTTON_CLICKED, wxCommandEventHandler( FramePrincipal::OnBoutonFinClick ), NULL, this );
}

FramePrincipal::~FramePrincipal()
{
	// Disconnect Events
	this->Disconnect( wxEVT_CLOSE_WINDOW, wxCloseEventHandler( FramePrincipal::OnCloseFrame ) );
	m_button_non_scolaire->Disconnect( wxEVT_COMMAND_BUTTON_CLICKED, wxCommandEventHandler( FramePrincipal::OnBoutonNonScolaireClick ), NULL, this );
	m_button_scolaire->Disconnect( wxEVT_COMMAND_BUTTON_CLICKED, wxCommandEventHandler( FramePrincipal::OnBoutonScolaireClick ), NULL, this );
	m_button_inconnu->Disconnect( wxEVT_COMMAND_BUTTON_CLICKED, wxCommandEventHandler( FramePrincipal::OnBoutonInconnuClick ), NULL, this );
	m_button_invalide->Disconnect( wxEVT_COMMAND_BUTTON_CLICKED, wxCommandEventHandler( FramePrincipal::OnBoutonInvalideClick ), NULL, this );
	m_buttonFin->Disconnect( wxEVT_COMMAND_BUTTON_CLICKED, wxCommandEventHandler( FramePrincipal::OnBoutonFinClick ), NULL, this );

}
