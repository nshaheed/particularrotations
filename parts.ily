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
    \arrowGrace \alen  6 "" ##f
  >>

  \bar ":|.|:"
  
  %% B section
  \arrowGrace 4  6 "" ##t
      
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
  
  % \grace { g16 g g g g g}
  
  \arrow 3 "0\" - 2\"" ##t
  
  \time 1/8
  \grace {\slashI {g16 bf g a g a } }
  g8-> \breathe
  
  \arrow 3 "" ##t
  
  \time 1/4
  \bar ".|:"
    \appoggiatura g8 
    <g d'>8 <g d'>8
  \bar ":|."
  
  \arrow #(- clen 5) "" ##t
  
  \time 1/4
  \bar ".|:"
    \appoggiatura g8 
    <g d'>8 <g d'>8
  \bar ":|."
  
  \arrow \dlen "" ##t
  
  \time 1/8
  \grace {\slashI {g16 bf g a g a } }
  g8-> \breathe
  
  \arrow 3 "" ##t
  
  \time 1/4
  \bar ".|:-small"
    \appoggiatura g8 
    <g d'>8 <g d'>8
  \bar ":|.-small"
  
  \arrow #(- elen 5) "" ##t
  
  \time 1/4
  \appoggiatura g8 
  <g d'>8 <g d'>8
  
  \arrow \flen "" ##t
  
  \time 5/8
  \grace {\varRest 6}
  r4
  \grace {\slashI {g16 bf g a g a } }
  g4.->
  
  \bar ".|:"
    \time 1/4
    \appoggiatura d'8 
    <d a'>8 <d a'>8
  \bar ":|."
  
  \arrow \glen "" ##f
  
  \time 1/8
  s8
  
  \beginning \hlen ""
  
  \notinvs
  
  \bar "[|:-small"
  
  \time 5/8
  <<
    \new Voice { \voiceOne c'4~ c }
    \new Voice { \voiceTwo \once \hideNotes c4( b4)}
  >>

  df8->
  
  \breathe
  
  \time 1/8
  \bar ".|:-small"
  df8-. \breathe 
  \bar ":|.-small"
  
  \arrow 3 "" ##f
  %s8
  \notinvs
  \bar ":|]-small"
  
  %\invs
  \stopStaff
  \override Staff.StaffSymbol.transparent = ##t
  \stopStaff
  
  \arrow #(- ilen 9) "someX" ##t
  % \time 1/8
%   s8
%   
%   \notinvs
  %\bar ":|].:"
  
  \bar ".|:"
    \time 1/4
    <d, a'>8 <d a'>8
  \bar ":|."
  
  \arrow #(- (+ ilen ialen) 2) "" ##f
  
  \arrow \klen "" ##f
  \arrow \llen "" ##f
  
  \timeSig \mlen
  \beginning \mlen ""
  
  \notinvs
  \time 5/8
  R8*5
  
  \time 1/8
  
  \stopStaff
  \override Staff.StaffSymbol.transparent = ##t      
  \startStaff
  
  s8
  \notinvs
  
 \time 5/8
  <<
    \new Voice { \voiceOne c'4~ c }
    \new Voice { \voiceTwo \once \hideNotes c4( b4)}
  >>

  df8
  \breathe
  
  \bar ":|.-small"
  
  \arrow #(- olen 3) "" ##f
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
    { \arrowGrace \alen  6 "" ##f 
    }
  >>  
  
  \bar ":|.|:"

  %% B Section
  { \arrowGrace \blen  6 "" ##f }
  
  \bar ":|."
  
  %% C Section
  \arrow 3 "0\" - 2\"" ##t
  \time 1/8
  \clef treble
  \grace {\slashI { af16 cf af bf af bf } }
  af8-> \breathe
  
  \arrow \clen "" ##t
  
  \time 1/4
  \bar ".|:"
    \grace s8 <af ef'>8 <af ef'>8
  \bar ":|."

  \arrow \dlen "" ##t
  
  \time 1/8
  \grace {\slashI {af16 cf af bf af bf } }
  g8-> \breathe
  
  \arrow 3 "" ##t
  
  \time 1/4
  \bar ".|:-small"
    \grace s8 <af ef'>8 <af ef'>8
  \bar ":|.-small"
  
  \arrow #(- clen 5) "" ##t

  \time 1/4
  \grace s8 <af ef'>8 <af ef'>8

  \arrow \flen "" ##t

  \time 5/8
  \grace {\varRest 6}
  r4 r8
  \grace {\slashI {af16 cf af bf af bf } }
  af4->
  
  \time 1/4
  \bar ".|:"
    \grace s8 <ef' bf'>8 <ef bf'>8
  \bar ":|."
  
  \arrow \glen "" ##f
  
  \time 1/8
  s8
  
  \bar ".|:-small"
    \notinvs
    \time 1/4
     <ef bf'>8 <ef bf'>8
  \bar ":|.-small"
  
  \arrow #(- hlen 2) "" ##f
  
  \arrow \ilen "" ##f
  \arrow \ialen "" ##t
%   \arrow #(- (+ hlen ilen) -1) "" ##t
  
  \bar "[|:-small"
  
  \time 5/8
  <<
    \new Voice { \voiceOne df'4~ df }
    \new Voice { \voiceTwo \once \hideNotes df4( c4)}
  >>

  d!8->
  
  \breathe
  
  \time 1/8
  \bar ".|:-small"
  d8-. \breathe 
  \bar ":|.-small"
  
  \arrow 3 "" ##f
  
  \bar ":|]-small"
  
  \arrow #(- ilen 9) "" ##t
  
  \bar ".|:-small"
    \notinvs
    \time 1/4
     <ef, bf'>8 <ef bf'>8
  \bar ":|.-small"
  
  \arrow #(- klen 2) "" ##f
  
  \arrow \llen "" ##f
  
  \timeSig \mlen
  \beginning \mlen ""
  
  \notinvs
  \time 5/8
  R8*5
  
  \time 1/8
  
  \stopStaff
  \override Staff.StaffSymbol.transparent = ##t      
  \startStaff
  
  s8
  \notinvs
  
 \time 5/8
  <<
    \new Voice { \voiceOne df4~ df }
    \new Voice { \voiceTwo \once \hideNotes df4( c4)}
  >>

d8
  \breathe
  
  \bar ":|.-small"
  
  \arrow #(- olen 2) "" ##f


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
      \arrowGrace 4  6 "" ##t
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

  \arrowGrace 8  6 "" ##t
      
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

  \bar ".|:"
    \time 1/4
    \grace s8 <c g'>8[  <c g'>8]
  \bar ":|."

  \arrow \dlen "" ##t

  \time 1/8
  \grace {\slashI {c16 ef c d c d} } 
  c8->  \breathe

  \arrow \elen "" ##t
  
  \time 1/4
  \grace s8 <c g'>8[  <c g'>8]
  
  \arrow \flen "" ##t
  
  \time 5/8
  
  \grace {\varRest 6}
  r8
  \grace {\slashI {c16 ef c d c d} } 
  c2->
  
  \bar ".|:"
    \time 1/4
    \grace s8 <g' d'>8[  <g d'>8]
  \bar ":|."
  
  \arrow \glen "" ##f
  
  \time 1/8
  s8
  
  \beginning #(+ hlen ilen ialen ilen) ""
  
  \notinvs
  
  \bar "[|:-small"
  
  \time 5/8
  <<
    \new Voice { \voiceTwo d4~ d4 }
    \new Voice { \voiceOne \once \hideNotes d4( cs') }
  >>

  ds8->
  
  \breathe
  
  \time 1/8
  \bar ".|:-small"
  ds-. \breathe 
  \bar ":|.-small"
  
  \arrow 3 "" ##f
  
  \bar ":|]-small"

  \arrow #(- klen 9) "" ##f
  
  \invs
  \time 1/8
  s8
  
  \timeSig #(- llen 1)
  \beginning #(- llen 1) ""
  
  \timeSig \mlen
  \beginning \mlen ""
  
  \notinvs

  \time 5/8
  <<
    \new Voice { \voiceTwo d,4~ d4 }
    \new Voice { \voiceOne \once \hideNotes d4( cs') }
  >>

  ds8
  
  \time 1/8
  
  \stopStaff
  \override Staff.StaffSymbol.transparent = ##t      
  \startStaff
  
  s8
  \notinvs
  
 \time 5/8
  <<
    \new Voice { \voiceTwo d,4~ d4 }
    \new Voice { \voiceOne \once \hideNotes d4( cs') }
  >>

  ds8
  \breathe
  
  \bar ":|.-small"
  
  \arrow #(- olen 1) "" ##f
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
  
  \bar ".|:"
    \time 1/4
    \grace s8 <g' d'>8 <g d'>8
  \bar ":|."
  
  \arrow \dlen "" ##t

  \time 1/8
  \grace {\slashI {c,16 ef c d c d} } 
  c8-> \breathe 
  
  \arrow \elen "" ##t
  
  \time 1/4
  \grace s8 <g' d'>8 <g d'>8
  
  \arrow \flen "" ##t
  
    %\override Staff.TimeSignature #'stencil = ##t

  \time 5/8
  \grace {\slashI {c,16 ef c d c d} } 
  c4.->~ c4
  
  \bar ".|:"
    \time 1/4
    \grace s8 <d' a'>8 <d a'>8
  \bar ":|."
  
  \arrow \glen "" ##f
 
  \time 1/8
  s8
  \beginning #(+ hlen ilen ialen ilen klen llen) ""
  
  \notinvs
  
  \bar "[|:-small"
  
  \time 5/8
  <<
    \new Voice { \voiceTwo d,4~ d4 }
    \new Voice { \voiceOne \once \hideNotes d4( cs') }
  >>

  ds,8->
  
  \breathe
  
  \time 1/8
  \bar ".|:-small"
  ds-. \breathe 
  \bar ":|.-small"
  
  \arrow 3 "" ##f
  
  \bar ":|]-small"

  \arrow #(- mlen 9) "" ##t
  
  \time 5/8 
  <<
    \new Voice { \voiceTwo d4~ d4 }
    \new Voice { \voiceOne \once \hideNotes d4( cs') }
  >>
  ds,8
  
  \time 1/8
  
  \stopStaff
  \override Staff.StaffSymbol.transparent = ##t      
  \startStaff
  
  s8
  \notinvs
  
 \time 5/8
  <<
    \new Voice { \voiceTwo d4~ d4 }
    \new Voice { \voiceOne \once \hideNotes d4( cs') }
  >>

  ds,8
  \breathe
  
  \bar ":|.-small"
  
  \arrow \olen "" ##f


}