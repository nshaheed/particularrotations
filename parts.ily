violinOne = \new Voice \relative c'' {
  \set Staff.instrumentName = #"Violin 1 "
  
  \once \override Staff.TimeSignature #'stencil = ##f 
  \time 1/4
  
  
  \bar ".|:"
    \appoggiatura g,8 <g d'>8 <g d'>8
  \bar ":|."
  
  \arrow 8*40 4 ##f
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
  
  \arrow 8*30 8 ##f
  
  
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
  
  \arrow 8*40 8 ##f

}


  

cello = \new Voice
\relative c' {
  \set Staff.instrumentName = #"Cello "
  
  \override BreathingSign.text = \markup {
    \musicglyph #"scripts.caesura.straight"
  }
  
  \override Staff.TimeSignature #'stencil = ##f 
  \time 2/8
  
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
  
  \arrow 8*4 8 ##t
  
  \bar ".|:"
    \time 1/8
    \grace {\slashI {c,16 ef c d c d} } c8->\breathe
  \bar ":|."
  
  \time 1/4
  s4
  \bar ":|]"
  
  \arrow 8*8 8 ##f

}