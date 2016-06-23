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
    
  \arrow #(- olen 3) "" ##t
  
  \time 8/4
  <<
    \new Voice { \voiceOne c'4\fermata~ c }
    \new Voice { \voiceTwo \once \hideNotes c4 b4}
  >>

  \appoggiatura {\slashI { c16\sulp ef c df c df } }
  c1*6/4\fermata
  
  <<
    \new Voice { \voiceOne cs4~ cs2.}
     { \voiceTwo \once \hideNotes cs4( bs2.) \voiceNeutralStyle}
  >>
  
  \voiceNeutralStyle
  \new Voice { \appoggiatura { \slashI { cs16\sulp e! cs ds cs ds } } cs1 }
  
  <<
    \new Voice { \voiceOne c!4\norm~ c2.}
     { \voiceTwo \once \hideNotes c4( b!2.) \voiceNeutralStyle}
  >>
  
  \voiceNeutralStyle
  \new Voice { \appoggiatura { \slashI { c16\sulp ef c d! c d } } c1 }
  
  \breathe
  
  \override Staff.TimeSignature.stencil = ##f
  \bar ".|:-small"
    \time 1/4
     <f, c'>8 <f c'>8
  \bar ":|.-small"
  
  \arrow #(- plen 2) "" ##t
  
  \new Voice {
    \afterGrace R2 { \slashI {c'16( ef c d c d } }
    
    c2)
    
    r4
    
    <<
      \new Voice { \voiceOne b4~ b2 }
      \new Voice { \voiceTwo \once \hideNotes b4( as2)}
      { s4 s4. 
        \afterGrace s8 { \slashI { cs16( e cs ds cs d e d cs d } } }
    >>
    
    cs2)\fermata 
    
    \bar ".|:-small"
      \time 1/4
      \ottava #1
      <g' df'>8 <g df'>8
    \bar ":|.-small"
    
    \arrow #(- qlen 6) "" ##t
   
     \time 2/4
    g2\fermata 
    
    \bar ".|:"
      \time 1/4
      \ottava #1
      <g df'>8 <g df'>8
    \bar ":|.-small"
    
    \arrow #(- rlen 10) "" ##t
   
     \time 4/4
    g1\fermata 
    
    \bar ".|:-small"
      \time 1/4
      <gs d'!>8 <gs d'>8
    \bar ":|.-small"
    
    \arrow #(- slen 2) "" ##t
      
    \bar ".|:-small"
      \time 1/4
       <a ef'>8 <a ef'>8
    \bar ":|.-small"
    
    \arrowPost #(- tlen 2) "" ##t 4 5 10
    
    \ottava #0
    
  }

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
    
  \arrow #(- olen 2) "" ##f
  
  \beginning 7 ""
  \notinvs
  
  \time 4/4
  \appoggiatura { \slashI { b''16\sulp df b c b c df c b c } }
  b1\fermata

  <<
    \new Voice { \voiceOne c4~ c2.}
     { \voiceTwo \once \hideNotes c4( b2.)}
  >>
  
  \bar ".|:-small"
  \grace {s16*6}
  \new Voice { 	
        \override NoteHead.font-size = #-4
	\override Accidental.font-size = #-4
        \slashI {c16*8/3\sulp^\markup{ \italic { repeat as many times as possible } }
                 ([ d c df c df]) } 
  }
  \bar ":|.|:"
  
  \grace {s16*6}
  \new Voice { 	
        \override NoteHead.font-size = #-4
	\override Accidental.font-size = #-4
        \slashI {c16*8/3^\markup{ \italic { sim. } }
                 ([ d c df c df]) } 
  }
  \bar ":|.|:"
  
  \time 3/4

  \grace {s16*6}
  \new Voice { 	
        \override NoteHead.font-size = #-4
	\override Accidental.font-size = #-4
        \slashI {c16*2^\markup{ \italic { sim. } }
                 ([ d c df c df]) } 
  }
  
  \override Staff.TimeSignature.stencil = ##f
  \bar ":|.|:-small"
    \notinvs
    \time 1/4
     <b fs'>8 <b fs'>8
  \bar ":|.-small"
  
  \arrow \plen "" ##t
  
  \new Voice {
    \once \override MultiMeasureRest.staff-position = #0

    \afterGrace R2 { \slashI { c,16( ef c df c df } }
    
    c2)
    
    r4
    
    <<
      \new Voice { \voiceOne b4~ b2 }
      \new Voice { \voiceTwo \once \hideNotes b4( as2)}
      { s4 s4. 
        \afterGrace s8 { \bar ".|:-small" \slashI { cs16*5/2( e d ds } \bar ":|." } }
    >>
    
    cs2)\fermata 
    
    \bar ".|:-small"
      \time 1/4
      <gs' e'>8 <gs e'>8
    \bar ":|.-small"
      
    \arrow #(- qlen 6) "" ##t
    
    \time 2/4
    gs2\fermata 
    
    \bar ".|:"
      \time 1/4
      <gs e'>8 <gs e'>8
    \bar ":|.-small"
      
    \arrow #(- rlen 10) "" ##t
   
     \time 4/4
    gs1\fermata

    \bar ".|:-small"
      \time 1/4
      <a f'>8 <a f'>8
    \bar ":|.-small"
    
    \arrow #(- slen 2) "" ##t
    
    \bar ".|:-small"
      \time 1/4
       <as fs'>8 <as fs'>8
    \bar ":|.-small"
    
    \arrowPost #(- tlen 2) "" ##t 4 5 10
  }

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
    
  \arrow #(- olen 1) "" ##f
  
  \beginning 4 "" 
  \notinvs
  
  \time 5/4
  
  \grace { \slashI { af'16(\sulp cf af bf af bf af cf a af cf bf cf a cf af a} }
  
  <<
    \new Voice { \voiceOne af4~ af1\fermata \voiceNeutralStyle }
     { \voiceTwo \once \hideNotes af4 g1)}
  >>
  
  <<
    \new Voice { \voiceOne a!4~ a2.}
     { \voiceTwo \once \hideNotes a4( gs2.)}
  >>
  
  <<
    \new Voice { \voiceTwo as4~ as2.}
     { \voiceOne \once \hideNotes as4( b2.)}
  >>
  
  
  <<
    \new Voice { \voiceOne af4~ af2.}
     { \voiceTwo \once \hideNotes af4( g!2.)}
  >>
  
  \grace {s16*6}
  <<
    \new Voice { \voiceTwo a!4~ a2.}
     { \voiceOne \once \hideNotes a4( bf2.)}
  >>
  
  \breathe
  
  \override Staff.TimeSignature.stencil = ##f
  \bar ".|:-small"
    \time 1/4
    <f c'>8 <f c'>8
  \bar ":|.-small"
  
  \arrow #(- plen 2) "" ##t
  
  <<
    \new Voice { \voiceOne c'4~ c4 }
    \new Voice { \voiceTwo \once \hideNotes c4( b) }
  >>
  
  \new Voice {
    \afterGrace R2 { \slashI { df16( ff df e df ef ff ef df ef } }
    df2)
    
    \override NoteHead.font-size = #-4
    \override Accidental.font-size = #-4
    
    \bar ".|:-small"
    << 
      {
        \stemUp
        \slashI {cs16*4/5[\sulp^\markup{ \italic { repeat as many times as possible } }
               (e cs ds cs d e d cs d)] } 
      }
      {
        s4.
        \afterGrace s8
        {\slashI {cs16
                 (e cs ds cs d e d cs d)] }        
        }
      }
    >>
    
    
    \bar ":|.|:"
    
    \slashI {cs16*4/10 (e cs ds cs d e d cs d)] }
    \slashI {cs16*4/10 (e cs ds cs d e d cs d)] }
  }
  
  \stemNeutral
  
  \bar ":|.|:"
    \time 1/4
    <af ef'>8 <af ef'>8
  \bar ":|.-small"
    
  \arrow #(- qlen 3) "" ##t
  
  \time 1/8
  \new Voice {
    \override NoteHead.font-size = #-4
    \override Accidental.font-size = #-4

    \stemUp
    \slashI { gs16*1/5[(b gs as gs a b a gs a]) }
  }
    
  \bar ".|:-small"
    \time 1/4
    <af ef'>8 <af ef'>8
  \bar ":|.-small"
  
  \arrow #(- rlen 8) "" ##t

  \time 3/4
  
  af2 \afterGrace g4 {\slashI { g16( bf g af g af) } }

  \bar ".|:-small"
    \time 1/4
    <a! e'!>8 <a e'>8
  \bar ":|.-small"
  
  \arrow #(- slen 2) "" ##t
  
  \bar ".|:-small"
    \time 1/4
     <bf f'>8 <bf f'>8
  \bar ":|.-small"
  
  \arrow #(- tlen 3) "" ##t
  
  \new Voice {
    \override NoteHead.font-size = #-4
    \override Accidental.font-size = #-4

    \stemUp
    \slashI { bf16*1/5([ df bf c bf cf df cf bf cf])}
  }
  
  \grace { \stemUp \slashI { b!16_([ d b c b c])} }
  r4
  \grace {\slashI {c,,16 ef c d c d} } 
  c8->~ c4.
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
    
  \arrow \olen "" ##f

  \beginning 5 ""
  \notinvs
  
  \time 4/4
  \clef treble
  \appoggiatura {d'''8*5}
  d2\fermata 
  \bar ".|:-small"
  \grace{ \slashI { d16(\sulp f d e d e) \breathe } }
  \bar ":|.-small"

  <<
    \new Voice { \voiceOne d4~ d4 }
    \new Voice { \voiceTwo \once \hideNotes d4( cs) }
  >>
  
  
  <<
    \new Voice { \voiceOne ef4~ ef2. }
    \new Voice { \voiceTwo \once \hideNotes ef4( d2.) }
  >>
  
  \clef bass
  \grace {s16*6}
  <<
    \new Voice { \voiceTwo ef,,,4~ ef2. }
    \new Voice { \voiceOne \once \hideNotes ef4( d'2.) }
  >>

  \clef treble
  
  <<
    \new Voice { \voiceOne d''4~ d2. }
    \new Voice { \voiceTwo \once \hideNotes d4( cs2.) }
  >>
  
  \clef bass
    
  \grace {s16*6}
  <<
    \new Voice { \voiceTwo ef,,,4~ ef2. }
    \new Voice { \voiceOne \once \hideNotes ef4( d'2.) }
  >>
  
  \breathe
  
  \override Staff.TimeSignature.stencil = ##f
  \bar ".|:-small"
    \time 1/4
    <d ef'>8 <d ef'>8
  \bar ":|.-small"
  
  \arrow #(- plen 2) "" ##t
  <<
    \new Voice { \voiceOne d'4~ d4 }
    \new Voice { \voiceTwo \once \hideNotes d4( cs) }
  >>
  
  \new Voice {
    \afterGrace R2 { \slashI { bf16( df bf c bf cf df cf bf cf  } }

    <<
      \new Voice { \voiceOne bf4~ bf4~ bf4. af8~ af8~ af4.\fermata }
      { \stemDown \once \hideNotes bf4 a_~ a4.) 
        \hideNotes af8_( s8  
        \unHideNotes g4.) 
        \stemNeutral
      }
    >>
    
  }
  
  \bar ".|:-small"
    \time 1/4
    <g d'>8 <g d'>8
  \bar ":|.-small"
  
  \arrow #(- qlen 3) "" ##t
  
  \time 1/8
  \new Voice {
    \override NoteHead.font-size = #-4
    \override Accidental.font-size = #-4

    \stemUp
    \slashI { g16*1/3[(bf g a g a]) }
  }
  
  \bar ".|:-small"
    \time 1/4
    <g d'>8 <g d'>8
  \bar ":|.-small"
  
  \arrow #(- rlen 8) "" ##t

  \time 3/4
  
  <<
    \new Voice { \voiceOne g8~ g4 \once \hideNotes g8( af4) }
    \new Voice { \voiceTwo \once \hideNotes g8( fs4) g8~ g4 }
  >>

  \bar ".|:-small"
    \time 1/4
    <gs ds'>8 <gs ds'>8
  \bar ":|.-small"
  
  \arrow #(- slen 2) "" ##t
 
  \bar ".|:-small"
    \time 1/4
     <a e'>8 <a e'>8
  \bar ":|.-small"
  
  \arrow #(- tlen 3) "" ##t
  
  \time 1/8
  
  \new Voice {
    \override NoteHead.font-size = #-4
    \override Accidental.font-size = #-4

    \stemUp
    \slashI { a16*1/5[(c a b a bf c bf a bf]) }
  }
  r8 \grace { \slashI { c,,16 ef c d c d } }
  c4->~ c4.
}