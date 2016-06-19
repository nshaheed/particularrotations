violinOne = \new Voice \relative c'' {
  \set Staff.instrumentName = #"Violin 1 "
  
  \override Staff.TimeSignature #'stencil = ##f 
  \time 1/4
  
  
  %% Beginning Section
  \bar ".|:"
    \appoggiatura g,8 <g d'>8 <g d'>8
  \bar ":|."
  
  \arrow \beginningLen "50\" – 1'" ##f
  
  %% A section
  <<
    \asect
    \arrowGrace \alen "" ##f
  >>

  \bar ":|.|:"
  
  %% B section
  \arrowGrace 4 "" ##t
      
  \clef treble
  \time 1/8
  \grace {\slashI {g16 bf g a g a } } 
  g8->
      
  \bar ".|:-small"
  \time 1/4
  <g d'>8[  <g d'>8]
  \bar ":|.-small"
  
  \arrow #(- blen 7) "" ##f
     
   % C Section
  \bar ":|."
  
  \time 1/8
  % \grace { g16 g g g g g}
  
  \arrow 3 "0\" - 2\"" ##t
  \grace {\slashI {g16 bf g a g a } }
  g8-> \breathe
  
  \arrow 3 "" ##t
  
  \time 1/4
  \bar ".|:"
    \appoggiatura g8 <g d'>8 <g d'>8
  \bar ":|."
  
  \arrow #(- clen 5) "" ##t
}

violinTwo = \new Voice \relative c'' {
  
  %% Beginning
  \set Staff.instrumentName = #"Violin 2 " 
  
  \override Staff.TimeSignature #'stencil = ##f 
  \time 1/8  
  
  \once \omit Staff.Clef
  
  \invs

  \grace s8
  
  \beginning #(* beginningMult 3) "15\""

  \notinvs
  
  \clef treble

  
  \time 1/4
  \bar ".|:"
    \grace s8 <af, ef'>8 <af ef'>8
  \bar ":|."  
  
  \arrow #(beginningArrow 3) "35\" – 45\"" ##f
  
  %% A section
  <<
    \asect
    { \arrowGrace \alen "" ##f 
    }
  >>  
  
  \bar ":|.|:"

  %% B Section
  { \arrowGrace \blen "" ##f }
  
  \bar ":|."
  
  %% C Section
  \arrow 3 "0\" - 2\"" ##t
  \clef treble
  \grace {\slashI { af16 cf af bf af bf } }
  af8-> \breathe
  
  \arrow \clen "" ##t
  
  


}


viola = \new Voice \relative c' {
  \set Staff.instrumentName = #"Viola "
  
  %% Beginning
  \override Staff.TimeSignature #'stencil = ##f 
  \time 4/4
  
  \once \omit Staff.Clef
  
  \invs
  
  \grace s8 


  \beginning #(* beginningMult 2) "10\""

  \notinvs
  
  \clef alto
  
  \time 1/4
  \bar ".|:"
    \appoggiatura c,8 <c g'>8 <c g'>8
  \bar ":|."
  
  \arrow #(beginningArrow 2) "40\" – 50\"" ##f

  %% A Section
  <<
    \asect
    { 
      \arrowGrace 4 "" ##t
    }   
  >>
  
  %% B Section
  
  \bar "|"
  \override Staff.Clef.full-size-change = ##t
  \set Staff.forceClef = ##t 
  
  \time 1/8
  \grace {\slashI {c16 ef c d c d} } 
  c8->  
  
  \bar ".|:-small"
    \time 1/4
    <c g'>8[  <c g'>8]
  \bar ":|.-small"
  
  \arrow #(- alen 7) "" ##f
  
  \bar ":|.|:"
 
  %% B Section

  \arrowGrace 8 "" ##t
      
  \time 1/8
      
  \once \set Staff.forceClef = ##t 

  \clef alto
  \grace {\slashI {c16 ef c d c d} } 
  c8->  
      
  \bar ".|:-small"
    \time 1/4
    <c g'>8[  <c g'>8]
  \bar ":|.-small"
      
  \arrow #(- blen 11) "" ##f

  \bar ":|."
  
  %% C Section
  \arrow 3 "0\" - 2\"" ##t

  \time 1/8
  \grace {\slashI {c16 ef c d c d} } 
  c8->  \breathe

  \arrow \clen "" ##t


}


  

cello = \new Voice
\relative c' {
  \set Staff.instrumentName = #"Cello "
  
  \override Staff.TimeSignature #'stencil = ##f   
  \once \omit Staff.Clef
  
  %% Beginning
  \invs
  
  \grace s8
  
  \beginning #(* beginningMult 4) "20\""
  
  \notinvs
  
  \bar "[|:"
  \time 1/8
  s8
  \time 1/4
  
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
  \once \override Score.BarLine.stencil = ##f 
  \bar ":|."
  
  \time 1/4
  s4
  \bar ":|]"
  
  \arrow #(- (beginningArrow 4) 12) "30\" – 40\"" ##f
  
  %% A Section
  \undo \omit Staff.Clef
  \notinvs

  \break
  \bar ".|:-end"

  \time 1/8
  \clef bass
  \grace {\slashI {c16 ef c d c d} } 
  c8->  
    
  \bar ".|:-mixed"
    \time 1/4
    <g' d'>8 <g d'>8
  \bar ":|.-small"
    
  <<
    \arrow #(- alen 3) "" ##f
    {s8 s8^\markup {"5\" after Viola grace notes, decrease time each repetition"} 
    }
  >>
  \bar ":|."
  
  %% B Section

  \undo \omit Staff.Clef

  \bar ":|.|:"
  \time 1/8
  \grace {\slashI {c,16 \notinvs 
                   ef c d c d} } 
  c8->  
   
  \bar ".|:-mixed"
    \time 1/4

    <g' d'>8 <g d'>8
    \stopStaff
    \once \override Staff.StaffSymbol.width = #0.1
    \startStaff
  \bar ":|.-small"
    
    
  \arrow #(- blen 3) "" ##f

  \bar ":|."
    
  %% C Section
  \arrow 3 "0\" - 2\"" ##t
  
  \time 1/8
  \grace {\slashI {c,16 ef c d c d} } 
  c8-> \breathe 
  
  \arrow \clen "" ##t
}