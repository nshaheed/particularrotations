\version "2.18.2"
\language "english"
\include "arrows.ily"
\include "imports.ily"
\include "parts.ily"

\paper {
  #(set-paper-size scorePaperSize)
  
  system-separator-markup = \slashSeparator
  ragged-bottom = ##f

  
  margin = .75\in 
  left-margin = \margin
  right-margin = \margin
  top-margin = .5\in
  bottom-margin = \margin
}

\header {
  title = \ttl
  composer = \cmp
  tagline = \tg
}

\score {
  
  \new StaffGroup <<
    \new Staff << \global \violinOne >>
    \new Staff << \global \violinTwo >>
    \new Staff << \global \viola >>
    \new Staff << \global \cello  >>
                    
                  
  >>
  \layout {
    ragged-right = ##f
    \context {
    \Score
    \remove "Timing_translator"
    % \remove "Default_bar_line_engraver"
    
  }
  \context {
    \Staff
    \consists "Timing_translator"
    \consists "Default_bar_line_engraver"
    \remove "Forbid_line_break_engraver"
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
