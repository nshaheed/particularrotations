violinOne = \new Voice \relative c'' {
  \set Staff.instrumentName = #"Violin 1 "

  \override Staff.TimeSignature #'stencil = ##f
  \time 1/4


  %% Beginning Section
  \bar ".|:"
  \override Staff.DynamicLineSpanner.staff-padding = #5
  \appoggiatura g,8 <g d'>8\p^" "\separate <g d'>8
  \bar ":|."

  \revert Staff.DynamicLineSpanner.staff-padding

  \arrow #(- beginningLen 2) "50\" – 1'" ##f


  %% A section
  <<
    \asect
    \arrowGrace \alen  6 "" ##f
    { \grace {s16\crpoco \varRest 5} s8 s8 s8 s8 s8 s8 s8\! }
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
    \override #'(line-width . 19)
    {\justify {wait this long after cello plays grace notes (follow viola and cello wait times) } } } ##t

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
				%\override Hairpin.Y-offset = #3
  \appoggiatura g8
  \override Hairpin.self-alignment-Y = #7
  <g d'>8\< <g d'>8
  \bar ":|.-small"

  \revert Hairpin.self-alignment-Y
  \arrow #(- elen 5) "3\"" ##t

  \time 1/4
  \appoggiatura g8
  <g d'>8\together\! <g d'>8

  \arrow \flen "7\"" ##t

  \once \override Staff.TimeSignature #'stencil = ##f
  \time 7/8
  <<
    \grace {\varRest 6}
    \grace {{s16*6^\markup{
      {
	\hspace #1
	\override #'(baseline-skip . 1.75 )
	\override #'(line-width . 28)
	{\justify {Begin playing grace notes immediately after previous
		   player completes grace notes "                                                                                                    "
		 }
       }
      }
    }
	   }
	  }
  >>
  s4

  \override Staff.DynamicLineSpanner.staff-padding = #5.5

  \grace {\slashI {g16 bf g a g a } }
  <<
    { g4.\<->  r4}
    {s4 s16 s16\!}
  >>

  \revert Staff.DynamicLineSpanner.staff-padding
  \override Staff.DynamicLineSpanner.staff-padding = #3

  \bar ".|:"
  \time 1/4
  \appoggiatura d'8\!
  \once \override DynamicText.Y-offset = #-0.8
  <d a'>8^" "\together\ff <d a'>8
  \bar ":|."
  \revert Staff.DynamicLineSpanner.staff-padding

  <<
    \arrow \glen "10\"" ##f
    {
      %% \once \override Staff.TextScript.Y-offset = #-2
      s8^\markup{
      \column {
        { \override #'(baseline-skip . 1.75 )
          \override #'(line-width . 15)
          {\justify {Release independently } }
        }
        { \vspace #-0.6 " " }
      }
    }
    }
  >>

				% \break

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

  <<
    {
      \arrow \klen "5\" - 10\"" ##f \bar ""

				% \arrow \llen "" ##f

      \timeSig \mlen
      \beginning \mlen "5\" - 10\""
    }
    { \varRestEighth #(- klen 6)
      s8^\markup{
        \hspace #3.9
	\column {
	  {
	    \override #'(baseline-skip . 1.75 )
	    \override #'(line-width . 15)
	    {\justify {Release independently } }
	  }
	}
      }
    }
  >>
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
    \new Voice { \voiceOne df4~ df2.}
    { \voiceTwo \once \hideNotes df4( c2.) \voiceNeutralStyle}
    {s4\p\<}
  >>

  \voiceNeutralStyle
  <<
    \new Voice { \appoggiatura { \slashI { cs16\sulp e! cs ds cs ds } } cs1 }
    s4\mf\>
  >>

  <<
    \new Voice { \voiceOne c!4\norm~ c2.}
    { \voiceTwo \once \hideNotes c4( b!2.) \voiceNeutralStyle}
    {s4\p}
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
  <f, c'>8\pp\norm^\markup{\vspace #0.2 " "}\separateNone^\markup{\vspace #0.2 " "} <f c'>8
  \bar ":|.-small"

  \arrow #(- plen 2) "5\" - 10\"" ##t

  \new Voice {
				%     #(define afterGraceFraction (cons 255 256))

				%     \afterGrace R2 { \slashI {c'16\<( ef c d c d } }
    <<
      R2
				%     \override Score.SpacingSpanner.strict-note-spacing = ##t
				%       \override Score.SpacingSpanner.strict-grace-spacing = ##t
				%     \override Score.GraceSpacing.spacing-increment = #0.2

      { s4.
				% \grace
	{
	  \fakeGrace
	  \slashI {c'16*1/3\<_( ef c d c d }

	  \fakeGraceOff
	}
				%          \grace {c'16( ef}
      }
    >>

    c2\p\>)

    r4\!

    <<
      \new Voice { \voiceOne b4~ b2 }
      \new Voice { \voiceTwo \once \hideNotes b4( as2)}
      { s4\< s4\p
        \fakeGrace
        { \slashI { cs16*4/10\sulp\<( e cs ds cs d e d cs d } }
        \fakeGraceOff
      }
    >>

    cs2\mp\>)\fermata

    \bar ".|:-small"
    \time 1/4

    %% \once \override Staff.TextScript.X-offset = #-2
    <g' df'>8\p
    ^\markup { \translate #'( -1.3 . 0) \italic norm. }
    \separateNone
    <g df'>8
    \bar ":|.-small"

    \arrow #(- qlen 6) "5\"" ##t

    \time 2/4
    g2\pp\fermata

				%     \bar ".|:"
    \time 1/4
				%     \ottava #1
    <g df'>8\separateNone <g df'>8
    \bar ":|.-small"

    \once \textLengthOn
				%     \arrow #(- rlen 10) "5\"                                                                     " ##t
    \arrow #(- rlen 10) "5\"" ##t

    \time 4/4
    g1\p\fermata

    \bar ".|:-small"
    \time 1/4
    <gs d'!>8 <gs d'>8
    \bar ":|.-small"

				%     \once \textLengthOn
    \arrow #(- slen 2) "3\"                              " ##t

    \bar ".|:-right"
    \time 1/4
    <a ef'>8 <a ef'>8
    \bar ":|."

    \arrowPost #(- tlen 2) "7\"" ##t 4 5 10

				%     \ottava #0

    <<
      \grace {s16*6}
      \grace {{s16*6^\markup{
				%       \hspace #1
	\override #'(baseline-skip . 1.75 )
	\override #'(line-width . 28)
	{\justify {Begin playing grace notes immediately after previous
		   player completes grace notes
		   "                                                                                                    " } } } }}
    >>

    s4.


    \grace { \slashI {g,,,16\ff bf g a g a } }


    <<
      g4.->
      { s8 s4\< }
    >>

    \time 1/4
				%     \bar ".|:"

    \appoggiatura g8\!
    \override Staff.DynamicLineSpanner.staff-padding = #7

    <g d'>8\ff-> <g d'>8

    \bar ":|."
    \revert Staff.DynamicLineSpanner.staff-padding

    \arrow #(- ulen 2) "5\"" ##f \bar ""

    \time 2/4
    \hideNotes
    <g d'>4.^"5\"" \glissando <g' d'>8
    \unHideNotes
    \notinvs

    \transpose g d {
      \relative c'' {
	\grace {s16*6^\markup{\italic sim.}}
	s4
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
    <d a'>4.^"5\"" \glissando <d' a'>8
    \unHideNotes
    \notinvs

    \transpose g a {
      \relative c'' {
	\grace {s16*6^\markup{\italic sim.}}
	s4
	\grace { \slashI {g16 bf g a g a } }
	g4.->
      }
    }

    \time 1/4
    \bar ".|:"
    \appoggiatura a8
    <a e'>8->_\markup{\hspace #-3 \lower #2 \italic {cresc. poco a poco}}\together <a e'>8\!
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
  \grace s8 <af, ef'>8\p^" "\separateNone <af ef'>8
  \bar ":|."

  \arrow #(beginningArrow 3) "35\" – 45\"" ##f

  %% A section
  <<
    \asect
    { \arrowGrace \alen  6 "" ##f
    }
    { \grace {s16\crpoco \varRest 5} s8 s8 s8 s8 s8 s8 s8\! }
  >>

  \bar ":|.|:"

  %% B Section
  <<
    { \arrowGrace \blen  6 "" ##f }
    { \grace {s16 s16\mf\crpoco s16 s16*3 } s8 s8 s8 s8 s8 s8 s8}
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

  \time 1/4
  \bar ".|:-small"
  \grace s8 <af ef'>8\< <af ef'>8
  \bar ":|.-small"

  \arrow #(- clen 5) "3\"" ##t

  \time 1/4
  \grace s8 <af ef'>8\together\! <af ef'>8

  \arrow \flen "7\"" ##t

  \once \override Staff.TimeSignature #'stencil = ##f
  \time 7/8
  \grace {\varRest 6}
  s4 s8
  \grace {\slashI {af16 cf af bf af bf } }

  \override Staff.DynamicLineSpanner.staff-padding = #5

  <<
    {af4->\< r4}
    {s8 s16 s16\!}
  >>

  \revert Staff.DynamicLineSpanner.staff-padding

  \time 1/4
  \bar ".|:"
  \grace s8 <ef' bf'>8\together\ff <ef bf'>8
  \bar ":|."


  \arrow \glen "10\"" ##f

				%   \time 1/8
				%   s8

  \undo \omit Staff.Clef

  \set Score.proportionalNotationDuration = #(ly:make-moment 1/4)

  \bar ".|:-right"
  \notinvs
  \time 1/4
  \clef "treble"
  <ef bf'>8\pp <ef bf'>8
  \bar ":|.-small"

  \arrow #(- hlen 2) "5\" - 10\"" ##f

  \bar ""

  <<
    { \arrow \ilen "5\" - 15\"" ##f }
    { \varRestEighth #(- ilen 3) s8\> s8 s8\! }
  >>

  \bar ""
				%   \arrow \ialen "5\"" ##t

  \beginningOther \ialen "5\"" #-2.7 #-2.3

  \notinvs

				%   \arrow #(- (+ hlen ilen) -1) "" ##t

  \bar "[|:-small"

  \time 5/8
  \forceClef
  \clef treble

  \unset Score.proportionalNotationDuration
  \set Score.proportionalNotationDuration = #(ly:make-moment 50)

  <<
    \new Voice { \voiceOne df'4~ df }
    \new Voice { \voiceTwo \once \hideNotes df4( c4)}
  >>

  d!8->

  \breathe

  \unset Score.proportionalNotationDuration
  \set Score.proportionalNotationDuration = #(ly:make-moment 1/4)

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

  \unset Score.proportionalNotationDuration

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
				% \new Voice { \voiceOne df4\mp~ df }
    \new Voice {  df4\mp( c4)}
  >>

  d8
  \shortPause

  <<
    {\arrow #(- olen 2) "5\" - 10\"" ##f \bar ""}
    {s8\>}
  >>

  \time 1/8
  s8\! \bar ""

  \beginning 6 "wait until vla. holds"
  \notinvs
  \time 4/4
  \appoggiatura { \slashI { b''16\pp\sulp df b c b c df c b c } }
  b1\fermata

  <<
    \new Voice { \voiceOne c4~ c2.}
    { \voiceTwo \once \hideNotes c4( b2.)}
    {s4\p\< s4 s4 s4\!}
  >>

  \bar ".|:-small"
  \grace {s16*6}
  \new Voice {

				%     \spacingDensity 256
    \override NoteHead.font-size = #-4
    \override Accidental.font-size = #-4
				%     \override SpacingSpanner.common-shortest-duration = #(ly:make-moment 1/16)
				%     \override Score.SpacingSpanner.uniform-stretching = ##t
    \slashI {c16*8/3^\markup
             { \translate #'( -3.2 . 1) \italic s.p. }
             ^\markup{  \translate #'(-3.0 . 0) {\italic { rpt. as many times as}  {\italic possible } } }
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
				%   \newSpacingSection
				%   \revert Score.SpacingSpanner.uniform-stretching
  <b fs'>8\norm^\markup{\vspace #0.2 " "}\separateNone % ^\markup { \translate #'( -5.6 . 3) \italic norm. }  % \norm

  <b fs'>8
  \bar ":|.-small"

  \arrow \plen "7\" - 12\"" ##t

  \new Voice {
    \once \override MultiMeasureRest.staff-position = #0

				%     \afterGrace R2 { \slashI { c,16\<( ef c df c df } }

    <<
      R2
      { s4.
	\fakeGrace
	\slashI { c,16*1/3\<_( ef c df c df }
	\fakeGraceOff
      }
    >>

    c2\p\>)

    r4\!

    <<
      \new Voice { \voiceOne b4\<~ b2\p }
      \new Voice { \voiceTwo \once \hideNotes b4( as2)}
      { s4 s4 % s16*4/10*6
        \fakeGrace
        { \bar ".|:-small" \slashI { cs16^\markup{\translate #'( -1 . 2) \italic s.p.}
                                     ^\markup{  \translate #'( -1 . 3.5) { \italic "rpt. many times" } }
                                     \<( e d ds } \bar ":|."}
        \fakeGraceOff
      }
    >>

    cs2\mp\>)\fermata

    \bar ".|:-small"
    \time 1/4
    <gs' e'>8\p
    ^\markup { \translate #'( -1.3 . 0) \italic norm. }
    \separateNone^\markup{
      \transparent {
	\filled-box #'(0 . 0) #'(0 . 2) #0
      }
    }
    <gs e'>8
    \bar ":|.-small"

    \arrow #(- qlen 6) "5\"" ##t

    \time 2/4
    gs2\pp\fermata

				%     \bar ".|:"
    \time 1/4
    <gs e'>8^\markup{ \vspace #1 " "}\separateNone <gs e'>8
    \bar ":|.-small"

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
    s4. s8
    \grace {af,,16\ff cf af bf af bf}
    af4->\<

    \time 1/4
				%     \bar ".|:"
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
    <a e'>4.^"5\"" \glissando <a' e'>8
    \unHideNotes
    \notinvs

    \transpose af ef { \relative c'' {
      \grace {s16*6^\markup{\italic sim.}}
      s4 s8
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
    <e b'>4.^"5\"" \glissando <e' b'>8
    \unHideNotes
    \notinvs

    \transpose af bf { \relative c'' {
      \grace {s16*6^\markup{\italic sim.}}
      s4 s8
      \grace { af16 cf af bf af bf }
      af4->
    }
		     }

    \time 1/4
    \bar ".|:"
    \grace s8 <bf f'>8
    _\markup{\hspace #-3 \lower #2 \italic {cresc. poco a poco}}
    ->\together
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
    <b f'>4.^"10\"" \glissando <b' f'>8
    \bar ""
    \time 4/4
    <b f'>4^"10\"" \glissando s2 <b f'>4
    \unHideNotes
    \notinvs

    \time 1/8
    \grace {s16*6}
    <af,, ef'>8\fff-^
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
  \appoggiatura c,8 <c g'>8\p^" "\separate <c g'>8
  \bar ":|."

  \revert Staff.DynamicLineSpanner.staff-padding

  \arrow #(beginningArrow 2) "40\" – 50\"" ##f

  %% A Section
  <<
    \asect
    {
      \arrowGrace 5 6
				%\arrow 6 "" ##t


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
	\override #'(line-width . 18)
	{\justify {wait this long after cello plays grace notes } } }

      ##t
    }
    { \grace {s16\crpoco \varRest 5} s8 s8 s8 s8 s8\! }
  >>


  %% B Section

  \set Score.proportionalNotationDuration = #(ly:make-moment 1/4)
  \override Score.GraceSpacing.spacing-increment = #0.12


  \bar "|"
  \override Staff.Clef.full-size-change = ##t
  \set Staff.forceClef = ##t


  \time 1/8
  \grace {\slashI {c16\sf ef c d c d}}
				%\grace {\slashI {c16\sf ef c d c d} }
  c8->

  \override Score.GraceSpacing.spacing-increment = #0.2

  \bar ".|:-small"
  \time 1/4

  \appoggiatura c8
  <c g'>8\mp[  <c g'>8]
  \bar ":|.-small"

  \revert Score.GraceSpacing.spacing-increment
  \unset Score.proportionalNotationDuration

  <<
				%     {   \once \textLengthOn
				%         s8^\markup{ \hspace #50 }}
    { \arrow #(- alen 8) "" ##f}
  >>

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
		 \override #'(line-width . 19)
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

  <<
    \arrow \elen "6\"" ##t
    {s8 s8 s8 s8\< }
  >>

  \time 1/4
  \grace s8 <c g'>8\together\![  <c g'>8]

  \arrow \flen "7\"" ##t

  \once \override Staff.TimeSignature #'stencil = ##f
  \time 7/8

  \grace {\varRest 6}
  s8
  \grace {\slashI {c16 ef c d c d} }
  <<
    { c2->\< r4 }
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

  ds8->

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
    { \arrowAdj #(- olen 1) "10\" - 15\"" ##f #-5.5 \bar "" }
    { s8\> }
  >>

  <<
    \beginningOther 4 "wait until vln. 1 holds" #-3 #-2.11
    s8\!
  >>
  \notinvs
				% \bar ""

  \time 5/4
  \override Score.SpacingSpanner.strict-note-spacing = ##t

  \grace { \slashI { af'16\pp(\sulp cf af bf af bf af cf a af cf bf cf a cf af a} }
  \override Score.SpacingSpanner.strict-note-spacing = ##f

  <<
    \new Voice { \voiceOne af4~ \bar "" af1\fermata \voiceNeutralStyle }
    { \voiceTwo \once \hideNotes af4 g1)}
  >>

  <<
    \new Voice { \voiceOne a!4~ a2.}
    { \voiceTwo \once \hideNotes a4\p\<( gs2.)}
  >>

  <<
    \new Voice { \voiceTwo as4~ as2.}
    { \voiceOne \once \hideNotes as4\mf\>( b2.)}
  >>


  <<
    \new Voice { \voiceOne af4~ af2.}
    { \voiceTwo \once \hideNotes af4\p( g!2.)}
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

    \fakeGrace

    \bar ".|:-small"
    <<
      {
        \slashI {cs16*4/10[^\markup{\translate #'( -1 . 4) \italic s.p.}
			   \pp^\markup{ \translate #'( -1 . 5.1) \italic { rpt. as many times as possible } }
			   (e cs ds cs d e d cs d)] }
        \slashI {cs16*4/10[
	  (e cs ds cs d e d cs d)] }
      }
      {
        s4.
        \afterGrace s8
        {
				% \slashI {cs16 (e cs ds cs d e d cs d)] }
        }
      }
    >>


    \bar ":|.|:"

    \slashI { cs16*4/10 (e cs ds cs d e d cs d) }
    \slashI { cs16*4/10 (e cs ds cs d e d cs d) }
  }

  \stemNeutral

  \bar ":|.|:"
  \time 1/4
  <af ef'>8\p
  ^\markup { \translate #'( -1.3 . 0) \italic norm. }
  \separateNone^\markup{
    \transparent {
      \filled-box #'(0 . 0) #'(0 . 2) #0
    }
  } <af ef'>8
  \bar ":|.-small"

  \once \textLengthOn
  \arrow #(- qlen 3) "7\"                                                                                              " ##t

  \time 1/8
  <<
    \new Voice {
      \override NoteHead.font-size = #-4
      \override Accidental.font-size = #-4

      \stemUp
      \slashI { gs16*2/11\sulp[(b gs as gs a b a gs a]) s }
    }
    {
      s16*1/5\<
    }
  >>
  \time 1/4
  <af ef'>8
  ^\markup { \translate #'( -1.3 . 0) \italic norm. }
  \separateNone
  <af ef'>8
  \bar ":|.-small"

  \once \textLengthOn
  \arrow #(- rlen 8) "7\"                                                                    " ##t

  \time 3/4

  <<
    { af2\p\< g4 }
    {
      s2 s8
      \fakeGrace
      \slashI { g16*1/3( bf g af g af) }
      \fakeGraceOff
    }
  >>

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

      \grace { \stemUp \slashI { b!16_([ d b c b c\!])} }
      s4
      \grace {\slashI {c,,16\ff ef c d c d} }
      c8->~
      <<
	c4.
	{s8 s4\<}
      >>

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
      <c g'>4.^"5\"" \glissando <c' g'>8
      \unHideNotes

      \notinvs

      \transpose c g {
	\relative c'' {
	  \grace {s16*6^\markup{\italic sim.}}
	  s8
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
      <g d'>4.^"5\"" \glissando <g' d'>8
      \unHideNotes
      \notinvs

      \transpose c d' {
	\relative c'' {
	  \grace {s16*6^\markup{\italic sim.}}
	  s8
	  \grace {\slashI {c,,16 ef c d c d} }
	  c8->~ c4.
	}
      }

      \bar ".|:"
      \time 1/4
      \grace s8 <d a'>8_\markup{\hspace #-3 \lower #2 \italic {cresc. poco a poco}}\together->[  <d a'>8]
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

  \once \textLengthOn
  \arrow 6 "1\" – 5\"      " ##t

  \bar ".|:"
  \time 1/8
  \grace {\slashI {c,16\sf ef c d c d} }
  \override BreathingSign.text = \markup { \musicglyph #"scripts.caesura.straight" " " }
  c8->\breathe

  \bar ":|]"
  %% 16
  \once \textLengthOn

				% shut up I don't want to hear it
  \arrow #(- (beginningArrow 4) 8) "30\" – 40\"                                                                                          " ##f

  \override BreathingSign.text = \markup { \musicglyph #"scripts.caesura.straight" }

  %% A Section
  \undo \omit Staff.Clef
  \notinvs

  \break
  \bar ".|:-end"

  \set Score.proportionalNotationDuration = #(ly:make-moment 1/4)
  \override Score.GraceSpacing.spacing-increment = #0.12

  \time 1/8
  \clef bass
  \grace {\slashI {c16\sf ef c d c d} }
  c8->

  \bar ".|:-mixed"
  \time 1/4
  <g' d'>8\mp <g d'>8
  \bar ":|.-small"

  \revert Score.GraceSpacing.spacing-increment
  \unset Score.proportionalNotationDuration

  <<
    \arrowSpecial #(- alen 3) "" ##f
    {
      s8^\markup{
	\override #'(baseline-skip . 1.75	 )
	\vcenter \column {
	  \concat {1x: " 5\""}
	  { \concat {2x: " 4\""}}
	  { etc.} }
	\vcenter
	": "
	\vcenter
	\override #'(baseline-skip . 1.75 )
	\override #'(line-width . 14)
	{\justify {wait this long after viola plays grace notes to repeat } }
      }
    }
    { { s8\crpoco s8 s8 s8\! s8 s8 s8 s8
	\tag #'(score violinPart) {
	  s8^\markup {
	    \with-dimensions #'(0 . 0) #'(0 . 0)
	    {
	      \translate #'(3.88 . -2.3)
	      {
		\override #'(thickness . 1.8)
		\draw-line #'(0 . 12)
		\translate #'(0.1 . 0) {
		  \override #'(thickness . 6)
		  \draw-line #'(0 . 12)
		}
	      }
	    }
	  }
	}
	\tag #'celloViola {
	  s8^\markup {
	    \with-dimensions #'(0 . 0) #'(0 . 0)
	    {
	      \translate #'(4.23 . -2.3)
	      {
		\override #'(thickness . 1.8)
		\draw-line #'(0 . 12)
		\translate #'(0.1 . 0) {
		  \override #'(thickness . 6)
		  \draw-line #'(0 . 12)
		}
	      }
	    }
	  }
	}
      } }
  >>
  \bar ":|."

  %% B Section

  \undo \omit Staff.Clef
  %% \forceClef
  %% \clef bass
  \bar ":|.|:" %% This one
  \time 1/8
  \grace {
    \slashI {
      \notinvs c,16\sf
      ef c d c d
    }
  }
  c8->

  \bar ".|:-mixed"
  \time 1/4

  <g' d'>8\mf <g d'>8
  \stopStaff
  \once \override Staff.StaffSymbol.width = #0.1
  \startStaff
  \bar ":|."

  <<
    \arrow #(- blen 3) \markup {
      \override #'(baseline-skip . 1.75	 )
      \column {{"sim." } {"continue decreasing wait time"}}}
    ##f
    { { s8\crpoco s8 s8 s8 s8 s8 s8 } }
  >>

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

  <<
    \arrow \elen "6\"" ##t
    {s8 s8 s8 s8\<}
  >>

  \time 1/4
  \grace s8 <g' d'>8
  \together\! <g d'>8

  \arrow \flen "7\"" ##t

  \once \override Staff.TimeSignature #'stencil = ##f
  \time 7/8
  \grace {\slashI {c,16 ef c d c d} }
  \override Staff.DynamicLineSpanner.staff-padding = #5.5

  c4.->\<~
  <<
    { c4 r4}
    { s8 s16 s16\! }
  >>

  \revert Staff.DynamicLineSpanner.staff-padding

  \bar ".|:"
  \time 1/4

  \grace s8
  \once \override DynamicText.Y-offset = #-3
  <d' a'>8^" "\togetherNone\ff <d a'>8
  \bar ":|."


  \arrow \glen "10\"" ##f

  \beginning #(+ hlen ilen) "10\" - 25\"" \bar ""
  \beginning #(+ ilen ialen) "10\" - 20\"" \bar ""

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
  ds,8->

  \time 5/8
  <<
    \new Voice { \voiceTwo d4\mp~ d4 }
    \new Voice { \voiceOne \once \hideNotes d4( cs') }
  >>

  ds,8
  \shortPause

  <<
    {
      \arrowAdj \olen "15\"" ##f #-5.7 \bar "" \override Staff.BarLine.transparent = ##t
    }
    s8\>
  >>

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
    {s4\p\<}
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
    {s4\p}
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

  \time 1/4
  <g d'>8
  ^\markup { \translate #'( -1.3 . 0) \italic norm. }
  ^" "\separateNone <g d'>8
  \bar ":|.-small"

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

  \time 1/4
  \grace s8\!

  \override Staff.DynamicLineSpanner.staff-padding = #3.5
  <g' d'>8->\ff <g d'>8
  \bar ":|."

  \arrow #(- ulen 2) "5\"" ##f \bar ""

  \time 2/4
  \hideNotes
  <g d'>4.^"5\"" \glissando <g' d'>8

  \unHideNotes
  \notinvs

  \transpose c g {
    \relative c, {
      \grace { \slashI { c16^\markup{\translate #'(0 . 2) \italic sim.}[ ef c d c d] } }
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
  <d a'>4.^"5\"" \glissando <d' a'>8
  \unHideNotes
  \notinvs

  \transpose c d' {
    \relative c, {
      \grace { \slashI { c16^\markup{\translate #'(0 . 3) \italic sim.}[ ef c d c d] } }
      c4->~
      <<
	c4.
	{
	  s4
	  \tag #'(score violinPart) {
	    s8 ^\markup {
	      \with-dimensions #'(0 . 0) #'(0 . 0) {
		\translate #'(3.03 . -2.3) {
		  \override #'(thickness . 1.8)
		  \draw-line #'(0 . 12)
		}
	      }
	    }
	  }
	  \tag #'celloViola {
	    s8 ^\markup {
	      \with-dimensions #'(0 . 0) #'(0 . 0) {
		\translate #'(3.22 . -2.3) {
		  \override #'(thickness . 1.8)
		  \draw-line #'(0 . 12)
		}
	      }
	    }
	  }
	}
      >>
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


  <d, a'>8_\markup{\hspace #-3 \italic {cresc. poco a poco}}^"13\""^"I,II" \glissando
  s8\! \varRestEighth #(+ ulen 1) <d' a'>8\!
  \bar ""
  \time 4/4
  <d a'>4^"10\"" \glissando s2 <d a'>4

  \notinvs
  \unHideNotes

  \time 1/8
  \grace {\slashI {c,,16 ef c d c d} }
  c8\fff-^
}