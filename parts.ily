violinOne = \new Voice \relative c'' {
  \set Staff.instrumentName = #"Violin 1 "
  
  \override Staff.TimeSignature #'stencil = ##f 
  \time 1/4
  
  
  \bar ".|:"
    \appoggiatura g,8 <g d'>8 <g d'>8
  \bar ":|."
  
  \arrow \beginningLen "50\" – 1'" ##f
  
  <<
    \asect
    \arrowGrace 7 "" ##f
  >>
  
  \notinvs
  s8
  \notinvs
  s8
}

violinTwo = \new Voice \relative c'' {
  \set Staff.instrumentName = #"Violin 2 " 
  
  \override Staff.TimeSignature #'stencil = ##f 
  \time 1/8  
  
  \once \omit Staff.Clef
  
  \invs

  \grace s8
  
  \beginning #(* beginningMult 3) "15\""

  \notinvs
  
  \once \override Staff.Clef #'font-size = 2
  \clef treble

  
  \time 1/4
  \bar ".|:"
    \grace s8 <af, ef'>8 <af ef'>8
  \bar ":|."  
  
  \arrow #(beginningArrow 3) "35\" – 45\"" ##f
  
  <<
    \asect
    \arrowGrace 7 "" ##f
  >>  
  s8
  \notinvs
  s8
  
  
}


viola = \new Voice \relative c' {
  \set Staff.instrumentName = #"Viola "
  
  \override Staff.TimeSignature #'stencil = ##f 
  \time 4/4
  
  \once \omit Staff.Clef
  
  \invs
  
  \grace s8 


  \beginning #(* beginningMult 2) "10\""

  \notinvs
  
  \once \override Staff.Clef #'font-size = 2
  \clef alto
  
  \time 1/4
  \bar ".|:"
    \appoggiatura c,8 <c g'>8 <c g'>8
  \bar ":|."
  
  \arrow #(beginningArrow 2) "40\" – 50\"" ##f

  <<
    \asect
    \arrowGrace 3 "" ##f
    {s8 s8 s8}
  >>
  
  s8
  \notinvs
  s8
  
  % a4 b c

}


  

cello = \new Voice
\relative c' {
  \set Staff.instrumentName = #"Cello "
  
  \override BreathingSign.text = \markup {
    \musicglyph #"scripts.caesura.straight"
  }
  
  \override Staff.TimeSignature #'stencil = ##f 
  %\time 2/8
  
  \once \omit Staff.Clef
  
  \invs
  
  \grace s8
  
  \beginning #(* beginningMult 4) "20\""
  
  \notinvs
  
  \bar "[|:"
  \time 1/8
  s8
  \time 1/4
  
  \once \override Staff.Clef #'font-size = 2
  \clef bass
  
  \bar ".|:"
    \time 1/4
    <g, d'>8 <g d'>8
  \bar ":|."
  
  \time 1/8
  
  \arrow 8 "1\" – 5\"" ##t
  
  \bar ".|:"
    \time 1/8
    \grace {\slashI {c,16 ef c d c d} } 
    c8->\breathe
  \bar ":|."
  
  \time 1/4
  s4
  \bar ":|]"
  
  \arrow #(- (beginningArrow 4) 12) "30\" – 40\"" ##f
  
  %\notinvs
  
  %\time 1/8
  \undo \omit Staff.Clef
  \notinvs
%   s8 \notinvs
  %\notinvs
%   \bar "[|:"
%     \override Staff.Clef.full-size-change = ##t
%     \set Staff.forceClef = ##t 
    % \break
    \break
    \bar ".|:-end"

    \time 1/8
    \clef bass
    \grace {\slashI {c16 ef c d c d} } 
    %\grace { \slashI {c16} }
    c8->  
    
    \bar ".|:-mixed"
      \time 1/4
      <g' d'>8 <g d'>8
    \bar ":|.-small"
    
    \arrow #(- alen 3) "" ##f
    \bar ":|."
  
  
}