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
	this->SetSizeHints( wxSize( 460,500 ), wxSize( 600,400 ) );

	wxBoxSizer* bSizerPrincipal;
	bSizerPrincipal = new wxBoxSizer( wxVERTICAL );

	wxStaticBoxSizer* sbSizerSaisie_manuelle;
	sbSizerSaisie_manuelle = new wxStaticBoxSizer( new wxStaticBox( this, wxID_ANY, wxT("Saisie Manuelle") ), wxHORIZONTAL );

	m_button_Non_Scolaire = new wxButton( sbSizerSaisie_manuelle->GetStaticBox(), wxID_ANY, wxT("Passage Non Scolaire"), wxDefaultPosition, wxSize( 150,-1 ), 0 );
	sbSizerSaisie_manuelle->Add( m_button_Non_Scolaire, 0, wxTOP|wxBOTTOM|wxLEFT, 5 );

	m_buttonScolaire = new wxButton( sbSizerSaisie_manuelle->GetStaticBox(), wxID_ANY, wxT("Passage Scolaire"), wxDefaultPosition, wxSize( 120,-1 ), 0 );
	sbSizerSaisie_manuelle->Add( m_buttonScolaire, 0, wxTOP|wxBOTTOM|wxLEFT, 5 );

	m_buttonInconnu = new wxButton( sbSizerSaisie_manuelle->GetStaticBox(), wxID_ANY, wxT("Passage Inconnu"), wxDefaultPosition, wxSize( 120,-1 ), 0 );
	sbSizerSaisie_manuelle->Add( m_buttonInconnu, 0, wxTOP|wxBOTTOM|wxLEFT, 5 );

	m_buttonInvalide = new wxButton( sbSizerSaisie_manuelle->GetStaticBox(), wxID_ANY, wxT("Passage Invalide"), wxDefaultPosition, wxDefaultSize, 0 );
	sbSizerSaisie_manuelle->Add( m_buttonInvalide, 0, wxALL, 5 );


	bSizerPrincipal->Add( sbSizerSaisie_manuelle, 0, 0, 5 );

	wxBoxSizer* bSizer3;
	bSizer3 = new wxBoxSizer( wxVERTICAL );

	m_textCtrlLog = new wxTextCtrl( this, wxID_ANY, wxEmptyString, wxDefaultPosition, wxDefaultSize, wxTE_MULTILINE|wxTE_READONLY );
	bSizer3->Add( m_textCtrlLog, 1, wxALL|wxEXPAND, 5 );


	bSizerPrincipal->Add( bSizer3, 1, wxEXPAND, 5 );

	m_buttonFin = new wxButton( this, wxID_ANY, wxT("Demande FIN"), wxDefaultPosition, wxDefaultSize, 0 );
	bSizerPrincipal->Add( m_buttonFin, 0, wxALIGN_CENTER_HORIZONTAL|wxALL, 5 );


	this->SetSizer( bSizerPrincipal );
	this->Layout();

	this->Centre( wxBOTH );

	// Connect Events
	this->Connect( wxEVT_CLOSE_WINDOW, wxCloseEventHandler( FramePrincipal::OnCLoseFrame ) );
	m_button_Non_Scolaire->Connect( wxEVT_COMMAND_BUTTON_CLICKED, wxCommandEventHandler( FramePrincipal::OnboutonNonScolaireClick ), NULL, this );
	m_buttonScolaire->Connect( wxEVT_COMMAND_BUTTON_CLICKED, wxCommandEventHandler( FramePrincipal::OnboutonScolaireClick ), NULL, this );
	m_buttonInconnu->Connect( wxEVT_COMMAND_BUTTON_CLICKED, wxCommandEventHandler( FramePrincipal::OnboutonInconnuClick ), NULL, this );
	m_buttonInvalide->Connect( wxEVT_COMMAND_BUTTON_CLICKED, wxCommandEventHandler( FramePrincipal::OnBoutonInvalideClick ), NULL, this );
	m_buttonFin->Connect( wxEVT_COMMAND_BUTTON_CLICKED, wxCommandEventHandler( FramePrincipal::OnBoutonFinClick ), NULL, this );
}

FramePrincipal::~FramePrincipal()
{
	// Disconnect Events
	this->Disconnect( wxEVT_CLOSE_WINDOW, wxCloseEventHandler( FramePrincipal::OnCLoseFrame ) );
	m_button_Non_Scolaire->Disconnect( wxEVT_COMMAND_BUTTON_CLICKED, wxCommandEventHandler( FramePrincipal::OnboutonNonScolaireClick ), NULL, this );
	m_buttonScolaire->Disconnect( wxEVT_COMMAND_BUTTON_CLICKED, wxCommandEventHandler( FramePrincipal::OnboutonScolaireClick ), NULL, this );
	m_buttonInconnu->Disconnect( wxEVT_COMMAND_BUTTON_CLICKED, wxCommandEventHandler( FramePrincipal::OnboutonInconnuClick ), NULL, this );
	m_buttonInvalide->Disconnect( wxEVT_COMMAND_BUTTON_CLICKED, wxCommandEventHandler( FramePrincipal::OnBoutonInvalideClick ), NULL, this );
	m_buttonFin->Disconnect( wxEVT_COMMAND_BUTTON_CLICKED, wxCommandEventHandler( FramePrincipal::OnBoutonFinClick ), NULL, this );

}
