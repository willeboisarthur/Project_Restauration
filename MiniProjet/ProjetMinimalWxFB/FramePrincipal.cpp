///////////////////////////////////////////////////////////////////////////
// C++ code generated with wxFormBuilder (version Sep  6 2021)
// http://www.wxformbuilder.org/
//
// PLEASE DO *NOT* EDIT THIS FILE!
///////////////////////////////////////////////////////////////////////////

#include "FramePrincipal.h"

///////////////////////////////////////////////////////////////////////////

FramePrincipal::FramePrincipal( wxWindow* parent, wxWindowID id, const wxString& title, const wxPoint& pos, const wxSize& size, long style ) : wxFrame( parent, id, title, pos, size, style )
{
	this->SetSizeHints( wxSize( 400,200 ), wxSize( 600,400 ) );

	wxBoxSizer* bSizerPrincipal;
	bSizerPrincipal = new wxBoxSizer( wxVERTICAL );


	this->SetSizer( bSizerPrincipal );
	this->Layout();

	this->Centre( wxBOTH );
}

FramePrincipal::~FramePrincipal()
{
}
