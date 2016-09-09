\version "2.18.2"
\language "english"
\include "arrows.ily"
\include "imports.ily"
\include "parts.ily"

%% Length: shouldn't be more than 6 minutes

\paper {
  #(set-paper-size scorePaperSize)
  
  system-separator-markup = \slashSeparator
  ragged-bottom = ##f
  
  max-systems-per-page = #2


  
  margin = .75\in 
  left-margin = \margin
  right-margin = \margin
  top-margin = .25\in
  bottom-margin = .25\in
}

\header {
  title = \ttl
  composer = \cmp
  tagline = \tg
  subtitle = \sbttl
  copyright = "2016"
}

staffsize = -2

\score {
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
