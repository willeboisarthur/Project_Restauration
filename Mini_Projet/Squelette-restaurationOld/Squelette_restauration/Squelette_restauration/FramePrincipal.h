///////////////////////////////////////////////////////////////////////////
// C++ code generated with wxFormBuilder (version 3.9.0 Sep 14 2021)
// http://www.wxformbuilder.org/
//
// PLEASE DO *NOT* EDIT THIS FILE!
///////////////////////////////////////////////////////////////////////////

#pragma once

#include <wx/artprov.h>
#include <wx/xrc/xmlres.h>
#include <wx/button.h>
#include <wx/string.h>
#include <wx/bitmap.h>
#include <wx/image.h>
#include <wx/icon.h>
#include <wx/gdicmn.h>
#include <wx/font.h>
#include <wx/colour.h>
#include <wx/settings.h>
#include <wx/sizer.h>
#include <wx/statbox.h>
#include <wx/textctrl.h>
#include <wx/frame.h>

///////////////////////////////////////////////////////////////////////////


///////////////////////////////////////////////////////////////////////////////
/// Class FramePrincipal
///////////////////////////////////////////////////////////////////////////////
class FramePrincipal : public wxFrame
{
	private:

	protected:
		wxButton* m_button_Non_Scolaire;
		wxButton* m_buttonScolaire;
		wxButton* m_buttonInconnu;
		wxButton* m_buttonInvalide;
		wxTextCtrl* m_textCtrlLog;
		wxButton* m_buttonFin;

		// Virtual event handlers, override them in your derived class
		virtual void OnCLoseFrame( wxCloseEvent& event ) { event.Skip(); }
		virtual void OnboutonNonScolaireClick( wxCommandEvent& event ) { event.Skip(); }
		virtual void OnboutonScolaireClick( wxCommandEvent& event ) { event.Skip(); }
		virtual void OnboutonInconnuClick( wxCommandEvent& event ) { event.Skip(); }
		virtual void OnBoutonInvalideClick( wxCommandEvent& event ) { event.Skip(); }
		virtual void OnBoutonFinClick( wxCommandEvent& event ) { event.Skip(); }


	public:

		FramePrincipal( wxWindow* parent, wxWindowID id = wxID_ANY, const wxString& title = wxT("CodeLite 14 wxFB 3.9 wxW 3.0"), const wxPoint& pos = wxDefaultPosition, const wxSize& size = wxSize( 460,300 ), long style = wxDEFAULT_FRAME_STYLE|wxTAB_TRAVERSAL );

		~FramePrincipal();

};

