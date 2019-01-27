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
  %% #(set-paper-size scorePaperSize) % maybe just don't have a top-level paper defn?
  #(set-paper-size scoreTabloid) % maybe just don't have a top-level paper defn?
  two-sided = ##t

  %% system-separator-markup = \slashSeparator
  %% ragged-bottom = ##f

  %% max-systems-per-page = #2
  %% min-systems-per-page = #2


  marginScore = .75\in
  marginParts = .5\in

  outer-margin = \marginScore
  inner-margin = \marginScore
  binding-offset = 7.144\mm
				%   top-margin = .25\in
				%   bottom-margin = .25\in
  %% top-margin = .5\in
  %% bottom-margin = .5\in

  %% https://github.com/noteflakes/lilypond-cookbook/wiki/Consistent-staff-levels
  %% distance of top of header from page's top edge
  top-margin = 10\mm
  %% distance of top line of top staff from page's top edge
  top-staff-margin = 24.5\mm

  bottom-margin = 10\mm
  bottom-staff-margin = 18.5\mm

  %% set the basic distance of the top staff from the top margin
  %% this formula takes into account the above settings, the current staff size, and adds
  %% 2 staff spaces, since the reference position of the staff is its center line
  top-system-spacing.basic-distance = #(+ (/ (- top-staff-margin top-margin) staff-space) 2)
  last-bottom-spacing.basic-distance = #(+ (/ (- bottom-staff-margin bottom-margin) staff-space) 2)

  top-system-spacing.minimum-distance = 0
  last-bottom-spacing.minimum-distance = 0
  %% set large negative padding in order to ignore the skyline
  top-system-spacing.padding = -50
  las-bottom-spacing.padding = -50
  %% do not stretch the distance
  top-system-spacing.stretchability = 0
  last-bottom-spacing.stretchability = 0

  evenHeaderMarkup = \markup {
    \column {
      \fill-line {
	%% \line { }
	%% \line {
	  \on-the-fly #print-page-number-check-first
	  \fromproperty #'page:page-number-string
	  \override #'(font-name . "Century Schoolbook Regular")
	  { "Particular Rotations"}
	  ""
	%% }
      }
    }
  }

  oddHeaderMarkup = \markup
  \fill-line {
    \on-the-fly #not-first-page {
      ""
      { "Particular Rotations"}
      \override #'(font-name . "Century Schoolbook Regular")
      \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string
    }
  }

}

\header {
  title = \ttl
  composer = \cmp
  tagline = \tg
  subtitle = \sbttl
  copyright = "2016 | Creative Commons BY-NC 4.0"
}

%% staffsize = -2
staffsize = -4
%% staffsize = 0

\book {
  \bookOutputName "score"
  \bookOutputSuffix "score"

  \paper {
    #(set-paper-size scoreLandscape) % maybe just don't have a top-level paper defn?
    two-sided = ##t

    %% system-separator-markup = \slashSeparator
    %% ragged-bottom = ##f

    max-systems-per-page = #2
    %% min-systems-per-page = #2


    marginScore = .75\in
    marginParts = .5\in

    outer-margin = \marginScore
    inner-margin = \marginScore
    binding-offset = 7.144\mm
				%   top-margin = .25\in
				%   bottom-margin = .25\in
    %% top-margin = .5\in
    %% bottom-margin = .5\in

    %% https://github.com/noteflakes/lilypond-cookbook/wiki/Consistent-staff-levels
    %% distance of top of header from page's top edge
    top-margin = 10\mm
    %% distance of top line of top staff from page's top edge
    top-staff-margin = 24.5\mm

    bottom-margin = 10\mm
    bottom-staff-margin = 18.5\mm

    %% set the basic distance of the top staff from the top margin
    %% this formula takes into account the above settings, the current staff size, and adds
    %% 2 staff spaces, since the reference position of the staff is its center line
    top-system-spacing.basic-distance = #(+ (/ (- top-staff-margin top-margin) staff-space) 2)
    last-bottom-spacing.basic-distance = #(+ (/ (- bottom-staff-margin bottom-margin) staff-space) 2)

    top-system-spacing.minimum-distance = 0
    last-bottom-spacing.minimum-distance = 0
    %% set large negative padding in order to ignore the skyline
    top-system-spacing.padding = -50
    las-bottom-spacing.padding = -50
    %% do not stretch the distance
    top-system-spacing.stretchability = 0
    last-bottom-spacing.stretchability = 0

    evenHeaderMarkup = \markup {
      \column {
	\fill-line {
	  %% \line { }
	  %% \line {
	  \on-the-fly #print-page-number-check-first
	  \fromproperty #'page:page-number-string
	  \override #'(font-name . "Century Schoolbook Regular")
	  { "Particular Rotations"}
	  ""
	  %% }
	}
      }
    }

    oddHeaderMarkup = \markup
    \fill-line {
      \on-the-fly #not-first-page {
	""
	{ "Particular Rotations"}
	\override #'(font-name . "Century Schoolbook Regular")
	\on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string
      }
    }

  }

  \score {
    % \keepWithTag #'violinPart
    \keepWithTag #'(notViolinPart score)
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
  \bookOutputSuffix "viola_cello"
  \paper {
    #(set-paper-size scoreTabloid)
  }
  \score {
    % \keepWithTag #'violinPart
    \keepWithTag #'(notViolinPart celloViola)
    %% \keepWithTag #'celloViola
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