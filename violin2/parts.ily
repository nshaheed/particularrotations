violinOne = \new Voice \relative c'' {
  \set Staff.instrumentName = #"Violin 1 "
  
  \override Staff.TimeSignature #'stencil = ##f 
  \time 1/4
  
  
  %% Beginning Section
  \bar ".|:"
  \override Staff.DynamicLineSpanner.staff-padding = #5
  \appoggiatura g,8 <g d'>8\p\separate <g d'>8
  \bar ":|."
  
  \revert Staff.DynamicLineSpanner.staff-padding
  
  \arrow #(- beginningLen 2) "50\" – 1'" ##f

  
  %% A section
  <<
    \asect
    \arrowGrace \alen  6 "" ##f
    { \grace {s16\crpoco \varRest 5} s8 s8 s8 s8 s8\! }
  >>

  \bar ":|.|:"
  
  %% B section
  \arrowGrace 5 6 \markup{ 
      \override #'(baseline-skip . 1.75	 )

      \vcenter \column { 
      \concat {1x: " 3\""}
      { \concat {2x: " 2\""}}
      { etc.} }
               \vcenter
               ": "
               \vcenter
      \override #'(baseline-skip . 1.75 )
      \override #'(line-width . 18)
      {\justify {wait this long after cello plays grace notes to repeat (follow viola and cello wait times) } } } ##t
  
  \clef treble
  \time 1/8
  \grace {\slashI {g16\sf bf g a g a } } 
  g8->
  
  \bar ".|:-small"
  \time 1/4
  <g d'>8\mf[  <g d'>8]
  \bar ":|."
  
  <<
    { \arrow #(- blen 8) ""  ##f }
    { s8
      \crpoco
    }
  >>
  
  % C Section
  %\bar ":|."
  
  % \grace { g16 g g g g g}
  
  <<
    \arrow 3 "0\" - 2\"" ##t
    { s8\< }
  >>
  
  \time 1/8
  \grace {\slashI {g16\f bf g a g a } }
  g8-> 
  
  
  \arrow 3 "3\"" ##t
  
  \time 1/4
  \bar ".|:"
  \appoggiatura g8 
  <g d'>8 <g d'>8
  \bar ":|."
  
  \arrow #(- clen 5) "3\"" ##t
  
  \time 1/4
  \bar ".|:"
  \appoggiatura g8 
  <g d'>8 <g d'>8
  \bar ":|."
  
  \arrow \dlen "5\"" ##t
  
  \time 1/8
  \grace {\slashI {g16 bf g a g a } }
  g8-> \breathe
  
  \arrow 3 "3\"" ##t
  
  \time 1/4
  \bar ".|:-small"
  \appoggiatura g8 
  <g d'>8 <g d'>8
  \bar ":|.-small"
  
  \arrow #(- elen 5) "3\"" ##t
  
  \time 1/4
  \appoggiatura g8 
  <g d'>8 <g d'>8
  
  \arrow \flen "7\"" ##t
  
  \time 5/8
  \grace {\varRest 6}
  r4
  
  \override Staff.DynamicLineSpanner.staff-padding = #5.5

  \grace {\slashI {g16 bf g a g a } }
  <<
    { g4.\<-> }
    {s4 s16 s16\!}
  >>
  
  \revert Staff.DynamicLineSpanner.staff-padding
  \override Staff.DynamicLineSpanner.staff-padding = #3

  \bar ".|:"
  \time 1/4
  \appoggiatura d'8\!
  <d a'>8\together\ff <d a'>8
  \bar ":|."
  \revert Staff.DynamicLineSpanner.staff-padding

  \arrow \glen "10\"" ##f
  
%   \time 1/8
%   s8
  
  \beginning \hlen "5\" - 10\""
  
  \notinvs
  
  \bar "[|:-small"
  
  \forceClef
  \clef treble
  \time 5/8
  <<
    \new Voice { \voiceOne c'4\pp~ c }
    \new Voice { \voiceTwo \once \hideNotes c4( b4)}
  >>

  df8->
  
  \breathe
  
  \time 1/8
  \bar ".|:-small"
  df8-. \breathe 
  \bar ":|.-small"
  
  \arrow 3 "0\" - 5\"" ##f
  %s8
  \notinvs
  \bar ":|]-small"
  
  %\invs
  \stopStaff
  \override Staff.StaffSymbol.transparent = ##t
  \stopStaff
  
  \arrow #(- ilen 9) "5\" - 15\"" ##t
  % \time 1/8
  %   s8
  %   
  %   \notinvs
  %\bar ":|].:"
  
  \undo \omit Staff.Clef
  \bar ".|:-right"
  \time 1/4
  <d, a'>8 <d a'>8
  \bar ":|."
  
  \arrow #(- (+ ilen ialen) 2) "10\" - 20\"" ##f \bar ""
  
  \arrow \klen "5\" - 10\"" ##f \bar ""
  % \arrow \llen "" ##f
  
  \timeSig \mlen
  \beginning \mlen "5\" - 10\""
  
  \notinvs
  \time 5/8
  \forceClef
  \clef treble
  R8*5
  
%   \time 1/8
%   
%   \stopStaff
%   \override Staff.StaffSymbol.transparent = ##t      
%   \startStaff
%   
%   s8
%   \notinvs
  
  \time 5/8
  <<
    \new Voice { \voiceOne c'4\mp~ c }
    \new Voice { \voiceTwo \once \hideNotes c4( b4)}
  >>

  df8
  \shortPause
  
  <<
    \arrow #(- olen 3) "5\"" ##t
    s8\>
  >>
  
  \time 8/4
  <<
    \new Voice { \voiceOne c'4\fermata~ c }
    \new Voice { \voiceTwo \once \hideNotes c4 b4}
    { s8\pp }
  >>

  \appoggiatura {\slashI { c16\sulp ef c df c df } }
  c1*6/4\fermata
  
  <<
    \new Voice { \voiceOne cs4~ cs2.}
    { \voiceTwo \once \hideNotes cs4( bs2.) \voiceNeutralStyle}
    {s4\mp\<}
  >>
  
  \voiceNeutralStyle
  <<
    \new Voice { \appoggiatura { \slashI { cs16\sulp e! cs ds cs ds } } cs1 }
    s4\mf\>
  >>
  
  <<
    \new Voice { \voiceOne c!4\norm~ c2.}
    { \voiceTwo \once \hideNotes c4( b!2.) \voiceNeutralStyle}
    {s4\mp}
  >>
  
  \voiceNeutralStyle
  <<
    \new Voice { \appoggiatura { \slashI { c16\sulp ef c d! c d } } c1 }
    {s4\< s4 s4 s4\mf }
  >>
  
  \breathe
  
  \override Staff.TimeSignature.stencil = ##f
  \bar ".|:-small"
  \time 1/4
  <f, c'>8\pp\separate\norm <f c'>8
  \bar ":|.-small"
  
  \arrow #(- plen 2) "5\" - 10\"" ##t
  
  \new Voice {
    \afterGrace R2 { \slashI {c'16\<( ef c d c d } }
    
    c2\p\>)
    
    r4\!
    
    <<
      \new Voice { \voiceOne b4~ b2 }
      \new Voice { \voiceTwo \once \hideNotes b4( as2)}
      { s4\< s4\p s8
        \afterGrace s8 { \slashI { cs16\sulp\<( e cs ds cs d e d cs d } } }
    >>
    
    cs2\mp\>)\fermata 
    
    \bar ".|:-small"
    \time 1/4
    \ottava #1
    <g' df'>8\p\separateNone\norm <g df'>8
    \bar ":|.-small"
    
    \arrow #(- qlen 6) "5\"" ##t
   
    \time 2/4
    g2\pp\fermata 
    
    \bar ".|:"
    \time 1/4
    \ottava #1
    \bar ".|:-right2"
    <g df'>8 <g df'>8
    \bar ":|."
    
    \arrow #(- rlen 10) "5\"" ##t
   
    \time 4/4
    g1\p\fermata 
    
    \bar ".|:-small"
    \time 1/4
    <gs d'!>8 <gs d'>8
    \bar ":|.-small"
    
    \arrow #(- slen 2) "3\"" ##t
    
    \bar ".|:-right"
    \time 1/4
    <a ef'>8 <a ef'>8
    \bar ":|."
    
    \arrowPost #(- tlen 2) "7\"" ##t 4 5 10
    
    \ottava #0
    
    \grace {s16*6}
    r4. 
    

    \grace { \slashI {g,,,16\ff bf g a g a } }
    

    <<
      g4.->
      { s8 s4\< }
    >>

    \time 1/4
    \bar ".|:"

    \appoggiatura g8\!
    \override Staff.DynamicLineSpanner.staff-padding = #7

    <g d'>8\ff-> <g d'>8
    
    \bar ":|."
    \revert Staff.DynamicLineSpanner.staff-padding
    
    \arrow #(- ulen 2) "5\"" ##f \bar ""
    
    \time 2/4
    \hideNotes
    <g d'>4.^"10\"" \glissando <g' d'>8
    \unHideNotes
    \notinvs
    
    \transpose g d { \relative c'' {
      \grace {s16*6}
      r4
      \grace { \slashI {g16 bf g a g a } }
      g4.->


                     }
    }
    
    \time 1/4
    \bar ".|:"
    \appoggiatura d8 
    <d a'>8-> <d a'>8
    \bar ":|."
    
    \arrow #(- ulen 2) "5\"" ##f \bar ""
    
    \time 2/4
    \hideNotes
    <d a'>4.^"10\"" \glissando <d' a'>8
    \unHideNotes
    \notinvs
    
    \transpose g a { \relative c'' {
      \grace {s16*6}
      r4
      \grace { \slashI {g16 bf g a g a } }
      g4.->


                     }
    }
    
    \time 1/4
    \bar ".|:"
    \appoggiatura a8 
    <a e'>8->_\markup{\hspace #-3 \lower #4 \italic {cresc. poco a poco}}\together <a e'>8\!
    \bar ":|."
    
    \arrow #(- ulen 2) "3\"" ##f \bar ""
    
    \time 2/4
    \hideNotes
    <a e'>4.^"10\"" \glissando <a' e'>8
    \unHideNotes
     \bar ""
    \time 4/4
    \hideNotes
    <a e'>4^"10\"" \glissando s2 <a e'>4
    \unHideNotes
    \notinvs
    
    \time 1/8
    \grace {s16 * 6}
    <g,, d'>8\fff-^
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
  \grace s8 <af, ef'>8\p\separate <af ef'>8
  \bar ":|."  
  
  \arrow #(beginningArrow 3) "35\" – 45\"" ##f
  
  %% A section
  <<
    \asect
    { \arrowGrace \alen  6 "" ##f 
    }
    { \grace {s16\crpoco \varRest 5} s8 s8 s8 s8 s8\! }
    { \grace {s16^"(cello -> viola)" } }
  >>  
  
  \bar ":|.|:"

  %% B Section
  <<
    { \arrowGrace \blen  6 "" ##f }
    { \grace {s16 s16\mf s16 s16*3\crpoco } s8 s8 s8 s8 s8 s8 s8\!}
    { \grace s16^"(cello -> violin 1 -> viola)" }
  >>
  
  %\bar ":|."
  
  %% C Section
  <<
    \arrow 3 "0\" - 2\"" ##t
    s8\<
  >>
  \time 1/8
  \clef treble
  \grace {\slashI { af16\f cf af bf af bf } }
  af8-> \breathe
  
  \arrow \clen "6\"" ##t
  
  \time 1/4
  \bar ".|:"
  \grace s8 <af ef'>8 <af ef'>8
  \bar ":|."

  \arrow \dlen "5\"" ##t
  
  \time 1/8
  \grace {\slashI {af16 cf af bf af bf } }
  g8-> \breathe
  
  \arrow 3 "3\"" ##t
  
  \break
  \time 1/4
  \bar ".|:-right"
  \grace s8 <af ef'>8 <af ef'>8
  \bar ":|.-small"
  
  \arrow #(- clen 5) "3\"" ##t

  \time 1/4
  \grace s8 <af ef'>8 <af ef'>8

  \arrow \flen "7\"" ##t

  \time 5/8
  r4 r8
  \grace {\slashI {af16 cf af bf af bf } }
  
  \override Staff.DynamicLineSpanner.staff-padding = #5

  
  <<
    {af4->\<}
    {s8 s16 s16\!}
  >>
  
  \revert Staff.DynamicLineSpanner.staff-padding

  \break
  
  \time 1/4
  \bar ".|:"
  \grace s8 <ef' bf'>8\together\ff <ef bf'>8
  \bar ":|."
  
  
  \arrow \glen "10\"" ##f
  
%   \time 1/8
%   s8
  
  \undo \omit Staff.Clef

  \bar ".|:-right"
  \notinvs
  \time 1/4
  <ef bf'>8\pp <ef bf'>8
  \bar ":|.-small"
  
  \arrow #(- hlen 2) "5\" - 10\"" ##f
  
  \bar ""
  
  \arrow \ilen "5\" - 15\"" ##f
  \bar ""
  <<
    \arrow \ialen "5\"" ##t
    s8^"(vln. 1 change)"
  >>
  %   \arrow #(- (+ hlen ilen) -1) "" ##t
  
  \bar "[|:-small"
  
  \time 5/8
  \forceClef
  \clef treble
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
  
  \arrow 3 "0\" - 5\"" ##f
  
  \bar ":|]-small"
  
  \arrow #(- ilen 9) "5\" - 15\"" ##t
  
  \bar ".|:-right"
  \notinvs
  \time 1/4
  <ef, bf'>8 <ef bf'>8
  \bar ":|.-small"
  
  \arrow #(- klen 2) "5\" - 10\"" ##f \bar ""
  
  % \arrow \llen "" ##f
  
  \timeSig \mlen
  \beginning \mlen "5\" - 10\""
  
  \notinvs
  \time 5/8
  R8*5
  
%   \time 1/8
%   
%   \stopStaff
%   \override Staff.StaffSymbol.transparent = ##t      
%   \startStaff
%   
%   s8
%   \notinvs
  
  \time 5/8
  <<
    \new Voice { \voiceOne df4\mp~ df }
    \new Voice { \voiceTwo \once \hideNotes df4( c4)}
  >>

  d8
  \shortPause
  
  <<
    {\arrow #(- olen 1) "5\" - 10\"" ##f \bar ""}
    {s8\>}
  >>
    
  %\time 1/8
  %s8\! \bar ""
  
  \break
  \once \omit Staff.Clef
  \beginning 6 "wait until vla. holds"
  \notinvs
  \time 4/4
  \tempo "Delicate" 8 = 50
  \appoggiatura { \slashI { b''16\pp\sulp df b c b c df c b c } }
  b1\fermata

  <<
    \new Voice { \voiceOne c4~ c2.}
    { \voiceTwo \once \hideNotes c4( b2.)}
    {s4\mp\< s4 s4 s4\!}
  >>
  
  \break
  \bar ".|:-small"
  \grace {s16*6}
  \new Voice { 	
    \override NoteHead.font-size = #-4
    \override Accidental.font-size = #-4
    \slashI {c16*8/3\sp\sulp^\markup{ \whiteout \pad-markup #0.5 {\italic { repeat as many times as possible } } }
             ([ d c df c df]) } 
  }
  \bar ":|.|:"
  
  \grace {s16*6}
  \new Voice { 	
    \override NoteHead.font-size = #-4
    \override Accidental.font-size = #-4
    \slashI {c16*8/3
             ([ d c df c df]) } 
  }
  \bar ":|.|:"
  
  \time 3/4

  \grace {s16*6}
  \new Voice { 	
    \override NoteHead.font-size = #-4
    \override Accidental.font-size = #-4
    \slashI {c16*2
             ([ d c df c df]) } 
  }
  
  \override Staff.TimeSignature.stencil = ##f
  \bar ":|.|:-small"
  \notinvs
  \time 1/4
  <b fs'>8\norm\separate <b fs'>8
  \bar ":|.-small"
  
  \arrow \plen "7\" - 12\"" ##t
  
  \new Voice {
    \once \override MultiMeasureRest.staff-position = #0

    \afterGrace R2 { \slashI { c,16\<( ef c df c df } }
    
    c2\p\>)
    
    r4\!
    
    <<
      \new Voice { \voiceOne b4\<~ b2\p }
      \new Voice { \voiceTwo \once \hideNotes b4( as2)}
      { s4 s4. 
        \afterGrace s8 { \bar ".|:-small" \slashI { cs16*5/2\sulp\<( e d ds } \bar ":|." } }
    >>
    
    cs2\mp\>)\fermata 
    
    \break
    
    \bar ".|:-right"
    \time 1/4
    <gs' e'>8\p\separateNone\norm^\markup{
        \transparent {
          \filled-box #'(0 . 0) #'(0 . 2) #0
        }
        } 
    <gs e'>8
    \bar ":|.-small"
    
    \arrow #(- qlen 6) "5\"" ##t
    
    \time 2/4
    gs2\pp\fermata 
    
    \bar ".|:"
    \time 1/4
    \bar ".|:-right2"
    <gs e'>8 <gs e'>8
    \bar ":|."
    
    \arrow #(- rlen 10) "5\"" ##t
   
    \time 4/4
    gs1\p\fermata

    \bar ".|:-small"
    \time 1/4
    <a f'>8 <a f'>8
    \bar ":|.-small"
    
    \arrow #(- slen 2) "3\"" ##t
    
    \bar ".|:-right"
    \time 1/4
    <as fs'>8 <as fs'>8
    \bar ":|."
    
    \arrowPost #(- tlen 2) "7\"" ##t 4 5 10
    
    \grace {s16 * 6}
    r4. r8
    \grace {af,,16\ff cf af bf af bf}
    af4->\<
    
    \time 1/4
    \bar ".|:"
    \grace s8\!

    \override Staff.DynamicLineSpanner.staff-padding = #5.5

    <af ef'>8->\ff^\markup{
        \transparent {
          \filled-box #'(0 . 0) #'(0 . 3) #0
        }
        }  <af ef'>8
    \bar ":|."
    
    \arrow #(- ulen 2) "5\"" ##f \bar ""
    
    \time 2/4
    \hideNotes
    <a e'>4.^"III"_"IV"^"10\"" \glissando <a' e'>8
    \unHideNotes
    \notinvs
    
    \transpose af ef { \relative c'' {
      \grace {s16*6}
      r4 r8
      \grace {af16 cf af bf af bf}
      af4->

                       }
    }
    
    \stemNeutral
    \time 1/4
    \bar ".|:"
    \grace s8 <ef bf'>8-> <ef bf'>8
    \bar ":|."
    
    \arrow #(- ulen 2) "5\"" ##f \bar ""
    
    \time 2/4
    \hideNotes
    <e b'>4._"III"^"II"^"10\"" \glissando <e' b'>8
    \unHideNotes
    \notinvs
    
    \transpose af bf { \relative c'' {
      \grace {s16*6}
      r4 r8
      \grace {af16 cf af bf af bf}
      af4->

                       }
    }
    
    \time 1/4
    \bar ".|:"
    \grace s8 <bf f'>8
      _\markup{\hspace #-3 \lower #4 \italic {cresc. poco a poco}}
      \together->
      ^\markup{
        \transparent {
          \filled-box #'(0 . 0) #'(0 . 8) #0
        }
        
        } 
      \!
      
     <bf f'>8
    \bar ":|."
    
    \arrow #(- ulen 2) "3\"" ##f \bar ""
    
    \time 2/4
    \hideNotes
    <b f'>4._"II"^"I"^"10\"" \glissando <b' f'>8
     \bar ""
    \time 4/4
    <b f'>4^"10\"" \glissando s2 <b f'>4
    \unHideNotes
    \notinvs
     
    \time 1/8
     \new CueVoice {
    \grace {\slashI {c,,16^"cello" ef c d c d } }
    }
    <af ef'!>8\fff-^
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
  
  \override Staff.DynamicLineSpanner.staff-padding = #4
  \time 1/4
  \bar ".|:"
  \appoggiatura c,8 <c g'>8\p\separate <c g'>8
  \bar ":|."
  
  \revert Staff.DynamicLineSpanner.staff-padding
  
  \arrow #(beginningArrow 2) "40\" – 50\"" ##f

  %% A Section
  <<
    \asect
    { 
      \arrowGrace 5 6
      %\arrow 6 "" ##t
      
      %r8 r8 r8 r8 r8
      \markup{ 
      \override #'(baseline-skip . 1.75	 )

      \vcenter \column { 
      \concat {1x: " 5\""}
      { \concat {2x: " 4\""}}
      { etc.} }
               \vcenter
               ": "
               \vcenter
      \override #'(baseline-skip . 1.75 )
      \override #'(line-width . 19)
      {\justify {wait this long after cello plays grace notes to repeat } } }
      
      ##t
    }   
    
    { \grace {s16\crpoco \varRest 5} s8 s8 s8 s8 s8\! }

  >>
  
  
  %% B Section
  
  \bar "|"
  \override Staff.Clef.full-size-change = ##t
  \set Staff.forceClef = ##t 
  
  \time 1/8
  \grace {\slashI {c16\sf ef c d c d}}
  %\grace {\slashI {c16\sf ef c d c d} } 
  c8->  
  
  \bar ".|:-small"
  \time 1/4
  \appoggiatura c8
  <c g'>8\mp[  <c g'>8]
  \bar ":|.-small"
  
  \arrow #(- alen 8) "" ##f
  
  \bar ":|.|:"
 
  %% B Section

  <<
    \arrowGrace 10  6 "" ##t
    {\grace {s16 s16\crpoco s16*4} s8 s8 s8 s8 s8 s8 s8\! }
  >>
  
  \time 1/8
  
  \once \set Staff.forceClef = ##t 

  \clef alto
  \grace {\slashI {c16\sf ef c d c d} } 
  c8->  
  
  \bar ".|:-small"
  \time 1/4
  <c g'>8\mf[  <c g'>8]
  \bar ":|.-small"
  
  \textLengthOn
  \arrow #(- blen 13) 
  \markup{       \override #'(baseline-skip . 1.75	 )
                  \override #'(line-width . 18)
            \justify { wait for violin 1, continue decreasing wait time } }
  ##f
  \textLengthOff
  %\bar ":|."
  
  %% C Section
  <<
    \arrow 3 "0\" - 2\"" ##t
    s8\<
  >>

  \time 1/8
  \grace {\slashI {c16\f ef c d c d} } 
  c8->  \breathe

  \arrow \clen "6\"" ##t

  \bar ".|:"
  \time 1/4
  \grace s8 <c g'>8[  <c g'>8]
  \bar ":|."

  \arrow \dlen "5\"" ##t

  \time 1/8
  \grace {\slashI {c16 ef c d c d} } 
  c8->  \breathe

  \arrow \elen "6\"" ##t
  
  \time 1/4
  \grace s8 <c g'>8[  <c g'>8]
  
  \arrow \flen "7\"" ##t
  
  \time 5/8
  
  \grace {\varRest 6}
  r8
  \grace {\slashI {c16 ef c d c d} } 
  <<
  { c2->\< }
  { s4. s16 s16\!}
  >>
  
  \bar ".|:"
  \time 1/4
  \grace s8 <g' d'>8\togetherNone\ff[  <g d'>8]
  \bar ":|."
  
  \arrow \glen "10\"" ##f
  
%   \time 1/8
%   s8
  
  \beginning #(+ hlen ilen) "10\" - 25\"" \bar ""
  \beginning #(+ ilen ialen) "10\" - 20\"" \bar ""
 
  \notinvs
  
  \bar "[|:-right"
  
  \time 5/8
  <<
    \new Voice { \voiceTwo d4\pp~ d4 }
    \new Voice { \voiceOne \once \hideNotes d4( cs') }
  >>

  ds8->
  
  \breathe
  
  \time 1/8
  \bar ".|:-small"
  ds-. \breathe 
  \bar ":|.-small"
  
  \arrow 3 "0\" - 3\"" ##f
  
  \bar ":|]-small"

  \arrow #(- klen 9) "5\" - 10\"" ##f
  
  \invs
%   \time 1/8
%   s8y
  
%   \timeSig #(- llen 1)
%   \beginning #(- llen 1) ""
  
  \timeSig \mlen
  \beginning \mlen "5\" - 10\""
  
  \notinvs

  \time 5/8
  <<
    \new Voice { \voiceTwo d,4\mp~ d4 }
    \new Voice { \voiceOne \once \hideNotes d4( cs') }
  >>

  ds8
  
%   \time 1/8
%   
%   \stopStaff
%   \override Staff.StaffSymbol.transparent = ##t      
%   \startStaff
%   
%   s8
%   \notinvs
  
  \time 5/8
  <<
    \new Voice { \voiceTwo d,4\mp~ d4 }
    \new Voice { \voiceOne \once \hideNotes d4( cs') }
  >>

  ds8
  \shortPause
  
  <<
    { \arrow #(- olen 1) "10\" - 15\"" ##f \bar "" }
    { s8\> }
  >>
  
  <<
    \beginning 4 "wait until vln. 1 holds" 
    s8\!
  >>
  \notinvs
  \bar ""
  
  \time 5/4
  
  \grace { \slashI { af'16\pp(\sulp cf af bf af bf af cf a af cf bf cf a cf af a} }
  
  <<
    \new Voice { \voiceOne af4~ \bar "" af1\fermata \voiceNeutralStyle }
    { \voiceTwo \once \hideNotes af4 g1)}
  >>
  
  <<
    \new Voice { \voiceOne a!4~ a2.}
    { \voiceTwo \once \hideNotes a4\mp\<( gs2.)}
  >>
  
  <<
    \new Voice { \voiceTwo as4~ as2.}
    { \voiceOne \once \hideNotes as4\mf\>( b2.)}
  >>
  
  
  <<
    \new Voice { \voiceOne af4~ af2.}
    { \voiceTwo \once \hideNotes af4\mp( g!2.)}
  >>
  
  \grace {s16*6}
  <<
    \new Voice { \voiceTwo a!4~ a2.}
    { \voiceOne \once \hideNotes a4( bf2.)}
        {s4\< s4 s4 s4\mf }
  >>
  
  \breathe
  
  \override Staff.TimeSignature.stencil = ##f
  \bar ".|:-small"
  \time 1/4
  \stemNeutral
  <f c'>8\separate\pp <f c'>8
  \bar ":|.-small"
  
  \arrow #(- plen 2) "5\" - 10\"" ##t
  
  <<
    \new Voice { \voiceOne c'4\pp~ c4 }
    \new Voice { \voiceTwo \once \hideNotes c4( b) }
  >>
  
  \new Voice {
    \afterGrace R2 { \slashI { df16\sulp\<( ff df e df ef ff ef df ef } }
    df2\norm\p\>)
    
    \override NoteHead.font-size = #-4
    \override Accidental.font-size = #-4
    
    \bar ".|:-small"
    << 
      {
        \stemUp
        \slashI {cs16*4/5[\sulp\pp^\markup{ \italic { repeat as many times as possible } }
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
  <af ef'>8\p\separateNone\norm^\markup{
        \transparent {
          \filled-box #'(0 . 0) #'(0 . 2) #0
        }
        } <af ef'>8
  \bar ":|.-small"
  
  \arrow #(- qlen 3) "7\"" ##t
  
  \time 1/8
  <<
    \new Voice {
      \override NoteHead.font-size = #-4
      \override Accidental.font-size = #-4
  
      \stemUp
      \slashI { gs16*1/5\sulp[(b gs as gs a b a gs a]) }
    }
    {
      s16*1/5\<
    }
  >>
  \bar ".|:-right2"
  \time 1/4
  <af ef'>8\norm <af ef'>8
  \bar ":|."
  
  \arrow #(- rlen 8) "7\"" ##t

  \time 3/4
  
  af2\p\< \afterGrace g4 {\slashI { g16( bf g af g af) } }

  \bar ".|:-small"
  \time 1/4
  <a! e'!>8 <a e'>8
  \bar ":|.-small"
  
  \arrow #(- slen 2) "3\"" ##t
  
  \bar ".|:-right"
  \time 1/4
  <bf f'>8 <bf f'>8
  \bar ":|."
  
  \arrow #(- tlen 3) "5\"" ##t
  

  <<
  \new Voice {
    \new Voice {
      \override NoteHead.font-size = #-4
      \override Accidental.font-size = #-4
      
      \time 1/8
      \stemUp
      \slashI { bf16*1/5([ df bf c bf cf df cf bf cf])}
      
      \override NoteHead.font-size = #0
      \override Accidental.font-size = #0
      \stemNeutral
    }

    %     \time 6/8
    \grace { \stemUp \slashI { b!16_([ d b c b c\!])} }
    r4
    \grace {\slashI {c,,16\ff ef c d c d} } 
    c8->~ 
    <<
      c4.
      {s8 s4\<}
    >>
    
    \bar ".|:"
    \time 1/4
    \grace s8\! <c g'>8->\ff
    ^\markup{
        \transparent {
          \filled-box #'(0 . 0) #'(0 . 0) #0
        }
        } 
        [  <c g'>8] 
    \bar ":|."
    
    \arrow #(- ulen 2) "5\"" ##f \bar ""
    
    \time 2/4
    \hideNotes
    <c g'>4.^"10\"" \glissando <c' g'>8
    \unHideNotes
   
    \notinvs
   
    \transpose c g { \relative c'' {
      \grace {s16*6}
      r8
      \grace {\slashI {c,,16 ef c d c d} } 
      c8->~ c4.
                     }
    }

   
    \bar ".|:"
    \time 1/4
    \grace s8 <g d'>8->[  <g d'>8]
    \bar ":|."
     
    \arrow #(- ulen 2) "5\"" ##f \bar ""
   
    \time 2/4
    \hideNotes
    <g d'>4.^"10\"" \glissando <g' d'>8
    \unHideNotes
    \notinvs
   
    \transpose c d' { \relative c'' {
      \grace {s16*6}
      r8
      \grace {\slashI {c,,16 ef c d c d} } 
      c8->~ c4.
                      }
    }
   
    \bar ".|:"
    \time 1/4
    \grace s8 <d a'>8_\markup{\hspace #-3 \lower #4 \italic {cresc. poco a poco}}\together->[  <d a'>8]
    \bar ":|."
    
    <<
      {\arrow #(- ulen 2) "3\"" ##f \bar ""}
      s8\!
    >>
   
    \time 2/4
    \hideNotes
    <d a'>4.^"10\"" \glissando <d' a'>8
    \bar ""
    \time 4/4
    <d a'>4^"10\"" \glissando s2 <d a'>4
    \unHideNotes
    \notinvs
   
    \time 1/8
    \grace {s16 * 6}
    <c,, g'>8\fff-^

  }
  {
   s16*1/5\< s16*1/5*9 
   \grace {s16*5 s16\!}
  }
  >>
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
  <g, d'>8\p\separate <g d'>8
  \bar ":|."
  
  \time 1/8
  
  \arrow 6 "1\" – 5\"" ##t
  
  \bar ".|:"
  \time 1/8
  \grace {\slashI {c,16\sf ef c d c d} } 
  c8->\breathe
  \once \override Score.BarLine.stencil = ##f 
  \bar ":|."
  
  \time 1/4
  s4
  \bar ":|]"
  %% 16
  \arrow #(- (beginningArrow 4) 10) "30\" – 40\"" ##f
  
  %% A Section
  \undo \omit Staff.Clef
  \notinvs

  \break
  \bar ".|:-end"

  \time 1/8
  \clef bass
  \grace {\slashI {c16\sf ef c d c d} } 
  c8->  
  
  \bar ".|:-mixed"
  \time 1/4
  <g' d'>8\mp <g d'>8
  \bar ":|.-small"
  
  <<    
    \arrowSpecial #(- alen 3) "" ##f
    {s8^\markup{ 
      \override #'(baseline-skip . 1.75	 )

      \vcenter \column { 
      \concat {1x: " 5\""}
      { \concat {2x: " 4\""}}
      { etc.} }
               \vcenter
               ": "
               \vcenter
      \override #'(baseline-skip . 1.75 )
      \override #'(line-width . 19)
      {\justify {wait this long after viola plays grace notes to repeat } } } } 
    { { s8\crpoco s8 s8 s8 s8\! } }
  >>
  \bar ":|."
  
  %% B Section

  \undo \omit Staff.Clef

 \bar ":|.|:"
  \time 1/8
  \grace {\slashI {\notinvs c,16\sf  
                   ef c d c d} } 
  c8->  
   
  \bar ".|:-mixed"
    \time 1/4

    <g' d'>8\mf <g d'>8
    \stopStaff
    \once \override Staff.StaffSymbol.width = #0.1
    \startStaff
  \bar ":|."
  
  <<
    \arrow #(- blen 3) "sim. continue decreasing wait time" ##f
    {    { s8\crpoco s8 s8 s8 s8 s8 s8\! } }
  >>
  %\bar ":|."
  
  %% C Section
  <<
    \arrow 3 "0\" - 2\"" ##t
    s8\<
  >>
  
  \time 1/8
  \grace {\slashI 
          {c,16\f ef c d c d} } 
  c8-> \breathe 
  
  \arrow \clen "6\"" ##t
  
  \bar ".|:"
  \time 1/4
  \grace s8 <g' d'>8 <g d'>8
  \bar ":|."
  
  \arrow \dlen "5\"" ##t

  \time 1/8
  \grace {\slashI {c,16 ef c d c d} } 
  c8-> \breathe 
  
  \arrow \elen "6\"" ##t
  
  \time 1/4
  \grace s8 <g' d'>8 <g d'>8
  
  \arrow \flen "7\"" ##t
  
  %\override Staff.TimeSignature #'stencil = ##t

  \time 5/8
  \grace {\slashI {c,16 ef c d c d} } 
    \override Staff.DynamicLineSpanner.staff-padding = #5.5

  c4.->\<~ 
  <<
    { c4 }
    { s8 s16 s16\! }
  >>
  
  \revert Staff.DynamicLineSpanner.staff-padding

  \bar ".|:"
  \time 1/4
  \grace s8 <d' a'>8\together\ff <d a'>8
  \bar ":|."
  
  
  \arrow \glen "10\"" ##f
 
%   \time 1/8
  %s8
%   \beginning #(+ hlen ilen ilen ialen klen) "25\" - 55\""
  \beginning #(+ hlen ilen) "10\" - 25\"" \bar ""
  \beginning #(+ ilen ialen) "10\" - 20\"" \bar ""
%   \beginning #(+ hlen ilen ialen ilen) "20\" - 45\""
  
  \once \omit Staff.Clef
  \beginning \klen "5\" - 10\""
  
  \notinvs
  
  \bar "[|:-small"
  \forceClef
  \clef bass
  \time 5/8
  <<
    \new Voice { \voiceTwo d,4~ d4 }
    \new Voice { \voiceOne \once \hideNotes d4( cs') }
    {s4\pp\< }
  >>

  ds,8->
  
  \breathe
  
  \time 1/8
  \bar ".|:-small"
  ds-. \breathe 
  \bar ":|.-small"
  
  \arrow 3 "0\" - 3\"" ##f
  
  \bar ":|]-small"

  \arrow #(- mlen 9) "5\" - 10\"" ##t
  
  \time 5/8 
  <<
    \new Voice { \voiceTwo d4~ d4 }
    \new Voice { \voiceOne \once \hideNotes d4( cs') }
    {s4\mp}
  >>
  ds,8
  
 %  \time 1/8
%   
%   \stopStaff
%   \override Staff.StaffSymbol.transparent = ##t      
%   \startStaff
%   
%   s8
%   \notinvs
  
  \time 5/8
  <<
    \new Voice { \voiceTwo d4\mp~ d4 }
    \new Voice { \voiceOne \once \hideNotes d4( cs') }
  >>

  ds,8
  \shortPause
  
  << 
    {
      \arrow \olen "15\"" ##f \bar "" \override Staff.BarLine.transparent = ##t
    }
    s8\>
  >>
  
%   \time 1/8 
%   \grace {s16 * 6}
%   s8 \bar ""

  <<
    \beginning 5 "wait until vla. holds"
    s8\!
  >>
  \notinvs
  \bar ""
  \time 4/4
  \clef treble
  \appoggiatura {d'''8*5\pp}
  d2\fermata 
  \bar ".|:-small"
  \grace{ \slashI { d16(\sulp f d e d e) } }
  \bar ":|.-small"

  <<
    \new Voice { \voiceOne d4~ d4 }
    \new Voice { \voiceTwo \once \hideNotes d4( cs) }
  >>
  
  
  <<
    \new Voice { \voiceOne ef4~ ef2. }
    \new Voice { \voiceTwo \once \hideNotes ef4( d2.) }
    {s4\mp\<}
  >>
  
  \clef bass
  \grace {s16*6}
  <<
    \new Voice { \voiceTwo ef,,,4~ ef2. }
    \new Voice { \voiceOne \once \hideNotes ef4( d'2.) }
    {s4\mf\>}
  >>

  \clef treble
  
  <<
    \new Voice { \voiceOne d''4~ d2. }
    \new Voice { \voiceTwo \once \hideNotes d4( cs2.) }
    {s4\mp}
  >>
  
  \clef bass
  
  \grace {s16*6}
  <<
    \new Voice { \voiceTwo ef,,,4~ ef2. }
    \new Voice { \voiceOne \once \hideNotes ef4( d'2.) }
    {s4\< s4 s4 s4\mf }
  >>
  
  \breathe
  
  \override Staff.TimeSignature.stencil = ##f
  \bar ".|:-small"
  \time 1/4
  <d ef'>8\separateNone\pp <d ef'>8
  \bar ":|.-small"
  
  \arrow #(- plen 2) "5\" - 10\"" ##t
  <<
    \new Voice { \voiceOne d'4\pp~ d4 }
    \new Voice { \voiceTwo \once \hideNotes d4( cs) }
  >>
  
  \new Voice {
      \override Staff.DynamicLineSpanner.staff-padding = #2

    \afterGrace R2 { \slashI { bf16\sulp\<( df bf c bf cf df cf bf cf  } }

    <<
      \new Voice { \voiceOne bf4~ bf4~ bf4. af8~ af8~ af4.\fermata }
      { \stemDown \once \hideNotes bf4 a\norm\p\>_~ a4.) 
        \hideNotes af8\pp_( s8  
        \unHideNotes g4.) 
        \stemNeutral
      }
    >>
    
    \revert Staff.DynamicLineSpanner.staff-padding
    
  }
  
  \bar ".|:-small"
  \time 1/4
  <g d'>8\p\separateNone <g d'>8
  \bar ":|.-small"
  
  \arrow #(- qlen 3) "7\"" ##t
  
  \time 1/8
  <<
    \new Voice {
      \override NoteHead.font-size = #-4
      \override Accidental.font-size = #-4
  
      \stemUp
      \slashI { g16*1/3\sulp[(bf g a g a]) }
    }
    {
     s16*1/3\< 
    }
  >>
  
  \bar ".|:-right2"
  \time 1/4
  <g d'>8 <g d'>8
  \bar ":|."
  
  \arrow #(- rlen 8) "7\"" ##t

  \time 3/4
  
  <<
    \new Voice { \voiceOne g8~ g4 \once \hideNotes g8( af4) }
    \new Voice { \voiceTwo \once \hideNotes g8( fs4) g8~ g4 }
    {s8\p\<}
  >>

  \bar ".|:-small"
  \time 1/4
  <gs ds'>8^\markup{
        \transparent {
          \filled-box #'(0 . 0) #'(0 . 2) #0
        }
        }
        <gs ds'>8
  \bar ":|.-small"
  
  \arrow #(- slen 2) "3\"" ##t
 
  \bar ".|:-right"
  \time 1/4
  <a e'>8 <a e'>8
  \bar ":|."
  
  \arrow #(- tlen 3) "5\"" ##t
  
  \time 1/8
  
  <<
    \new Voice {
      \override NoteHead.font-size = #-4
      \override Accidental.font-size = #-4
  
      \stemUp
      \time 1/8
      \slashI { a16*1/5[(c a b a bf c bf a bf]) }
      \grace {s16 * 6}
      \slashI { c,,16*1/3[ ef c d c d] }
    }
    { s16*1/5\<  s16*1/5*8 s16*1/5\! s8\ff}
  >>
  c4->~ 
  <<
    c4.
    {s8 s4\<}
  >>
  
  \bar ".|:"
  \time 1/4
  \grace s8\!
  
    \override Staff.DynamicLineSpanner.staff-padding = #3.5
    <g' d'>8->\ff <g d'>8
  \bar ":|."

  \arrow #(- ulen 2) "5\"" ##f \bar ""
  
  \time 2/4
  \hideNotes
  <g d'>4.^"10\"" \glissando <g' d'>8
  
  \unHideNotes
  \notinvs
  
  \transpose c g { \relative c, {
    \grace { \slashI { c16[ ef c d c d] } }
    c4->~ c4.
                   }
  }
  
  \transpose g d {
    \bar ".|:"
    \time 1/4
    \grace s8 <g d'>8-> <g d'>8
    \bar ":|."
  
    \arrow #(- ulen 2) "5\"" ##f \bar ""
  }
  \time 2/4
  \hideNotes
  <d a'>4.^"10\"" \glissando <d' a'>8
  \unHideNotes
  \notinvs
  
  \transpose c d' { \relative c, {
    \grace { \slashI { c16[ ef c d c d] } }
    c4->~ c4.
                    }
  }
  \bar "|"
  

  
  %% measure with variable length
  #(make-music
    'TimeSignatureMusic
    'beat-structure
    '()
    'denominator
    8
    'numerator
    (+ ulen 4))

  \stopStaff
  \override Staff.StaffSymbol.transparent = ##t
  \startStaff
  
  \hideNotes
  \grace {s8}
  
  <d, a'>8_\markup{\hspace #-3 \lower #4 \italic {cresc. poco a poco}}^"13\"" \glissando s8\! \varRestEighth #(+ ulen 1) <d' a'>8\!
   \bar ""
  \time 4/4
  <d a'>4^"10\"" \glissando s2 <d a'>4
  
  \notinvs
  \unHideNotes
  
  \time 1/8
  \grace {\slashI {c,,16 ef c d c d} } 
  c8\fff-^
  

  
  %     \arrow #(- ulen 2) "" ##f
  %     \time 2/4
  %     \hideNotes
  %     \unHideNotes
  
}