\version "2.18.2"
\language "english"
\include "arrows.ily"
\include "imports.ily"
\include "parts.ily"

%% Length: shouldn't be more than 6 minutes

%% Things to change between versions -
% - keep with tag: violinPart, notViolinPart
% - page size: a4 for score, tabloid for others
% - change even/odd header markup for parts
% - change top/bottom margins to either marginScore or marginParts
% - in score: staffsize = -2, in parts: staffsize = -4

\paper {
  #(set-paper-size scorePaperSize)

  system-separator-markup = \slashSeparator
  ragged-bottom = ##f

%   max-systems-per-page = #2
%   min-systems-per-page = #4


  marginScore = .75\in
  marginParts = .5\in

  left-margin = \marginScore
  right-margin = \marginScore
%   top-margin = .25\in
%   bottom-margin = .25\in
  top-margin = .5\in
  bottom-margin = .5\in

    evenHeaderMarkup = \markup {
        \column {
          \fill-line {
            \line { }
            \line {
              \on-the-fly #print-page-number-check-first
              \fromproperty #'page:page-number-string
            }
          }
        }
      }

      oddHeaderMarkup = \markup {
        \column {
          \fill-line {
            \line {
              \on-the-fly #print-page-number-check-first
              \fromproperty #'page:page-number-string
            }
            \line { }
          }
        }
      }
  }

\header {
  title = \ttl
  composer = \cmp
  tagline = \tg
  subtitle = \sbttl
  copyright = "2016"
}

% staffsize = -2
staffsize = -4

\book {
  \bookOutputName "score"
  \bookOutputSuffix "viola_cello"
  \score {
    % \keepWithTag #'violinPart
    \keepWithTag #'notViolinPart
    \new StaffGroup <<
      \new Staff \with {
	fontSize = #staffsize
	\override StaffSymbol.staff-space = #(magstep staffsize)
      } << \global \violinOne >>
      \new Staff \with {
	fontSize = #staffsize
	\override StaffSymbol.staff-space = #(magstep staffsize)
      }<< \global \violinTwo >>
      \new Staff \with {
	fontSize = #staffsize
	\override StaffSymbol.staff-space = #(magstep staffsize)
      }<< \global \viola >>
      \new Staff \with {
	fontSize = #staffsize
	\override StaffSymbol.staff-space = #(magstep staffsize)
      }<< \global \cello  >>


    >>
    \layout {
      ragged-right = ##f
      \context {
	\Score
	\remove "Timing_translator"
				% #(layout-set-staff-size 14)
				% \remove "Default_bar_line_engraver"

      }
      \context {
	\Staff
	\consists "Timing_translator"
	\consists "Default_bar_line_engraver"
	\remove "Forbid_line_break_engraver"
	\override TextScript.font-size = \txtsize
	\override TextSpanner.font-size = \txtsize
	\override HorizontalBracket.font-size = \txtsize

				% \override DynamicTextSpanner.whiteout = ##t
				%\override DynamicTextSpanner.

				%     fontSize = #-3
				% \RemoveEmptyStaves

      }
      \context {
	\StaffGroup
	systemStartDelimiter = #'SystemStartBracket
	\override SystemStartBracket.collapse-height = #0.0
				%\override SystemStartSquare.X-offset = #-15
      }
      \context {
	\Voice
	\consists "Horizontal_bracket_engraver"
	\override HorizontalBracket.bracket-flare = #'(0 . 0)
	\override HorizontalBracket.direction = #UP
      }
    }
				% \midi { }
  }
}


\book {
  \bookOutputName "score"
  \bookOutputSuffix "violins"
  \score {
    \keepWithTag #'violinPart
				%   \keepWithTag #'notViolinPart
    \new StaffGroup <<
      \new Staff \with {
	fontSize = #staffsize
	\override StaffSymbol.staff-space = #(magstep staffsize)
      } << \global \violinOne >>
      \new Staff \with {
	fontSize = #staffsize
	\override StaffSymbol.staff-space = #(magstep staffsize)
      }<< \global \violinTwo >>
      \new Staff \with {
	fontSize = #staffsize
	\override StaffSymbol.staff-space = #(magstep staffsize)
      }<< \global \viola >>
      \new Staff \with {
	fontSize = #staffsize
	\override StaffSymbol.staff-space = #(magstep staffsize)
      }<< \global \cello  >>


    >>
    \layout {
      ragged-right = ##f
      \context {
	\Score
	\remove "Timing_translator"
				% #(layout-set-staff-size 14)
				% \remove "Default_bar_line_engraver"

      }
      \context {
	\Staff
	\consists "Timing_translator"
	\consists "Default_bar_line_engraver"
	\remove "Forbid_line_break_engraver"
	\override TextScript.font-size = \txtsize
	\override TextSpanner.font-size = \txtsize
	\override HorizontalBracket.font-size = \txtsize

				% \override DynamicTextSpanner.whiteout = ##t
				%\override DynamicTextSpanner.

				%     fontSize = #-3
				% \RemoveEmptyStaves

      }
      \context {
	\StaffGroup
	systemStartDelimiter = #'SystemStartBracket
	\override SystemStartBracket.collapse-height = #0.0
				%\override SystemStartSquare.X-offset = #-15
      }
      \context {
	\Voice
	\consists "Horizontal_bracket_engraver"
	\override HorizontalBracket.bracket-flare = #'(0 . 0)
	\override HorizontalBracket.direction = #UP
      }
    }
				% \midi { }
  }
}