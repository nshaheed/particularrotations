%% Header, Footer, and Various Formatting Values

% paper
% scorePaperSize = "a4landscape"
scorePaperSize = "tabloid"

% header
% ttl = "Particular Rotations"
ttl = \markup{
%   \override = #(font-name . #"DejaVu Sans ExtraLight" )
%   \override #'(font-name . "DejaVu Sans ExtraLight")
  \override #'(font-name . "Century Schoolbook Regular")

  \override #'(font-size . 11)
  { "Particular Rotations"}
  }


sbttl = \markup {
  \override #'(font-name . "Century Schoolbook Regular")
  \override #'(font-size . 5)

  {\column {\vspace #2 } {"For String Quartet" } }
}
cmp = "Nicholas Shaheed"
tg  = ##f

txtsize = #-1
% other

%% section lengths (eighth notes)
beginningMult = 3
beginningLen  = 40
alen = 12
blen = 18
clen = 8
dlen = 5
elen = 8
flen = 5
glen = 3
hlen = 8
ilen = 14
ialen = 3
jlen = 14
klen = 13
llen = 12
mlen = 12
nlen = 12
olen = 8
plen = 7
qlen = 9
rlen = 14
slen = 5
tlen = 9
ulen = 5

#(define (beginningArrow n) (- beginningLen (* beginningMult n) 2))

%% bar lines
\defineBarLine "|-dashedSpan" #'("||" "" "!!")
\defineBarLine ".|:-end" #'("" ".|:" "")
\defineBarLine ".|:-small" #'(".|:" "" "")
% \defineBarLine ".|:-small" #'("|" ".|:" "")

\defineBarLine ":|.-small" #'(":|." "" "")
\defineBarLine ".|:-mixed" #'(".|:" "" "|")
\defineBarLine ":|.-smallleft" #'("" ":|." "")
\defineBarLine ".|:-smallleft" #'("" ".|:" "")

\defineBarLine ":|.-mixed" #'(":|." "" "|")
\defineBarLine ":|:-split" #'(":|." ".|:" "||")
\defineBarLine ".|:-left"  #'("" ".|:" "||")
\defineBarLine ":|.-left"  #'("" ":|." "||")
\defineBarLine "[|:-small" #'("[|:" "" "")
\defineBarLine "[|:-right" #'("" "[|:" "[|:")

\defineBarLine ":|]-small" #'(":|]" "" "")
\defineBarLine ":|.|:-small" #'(":|.|:-small" "" "")

\defineBarLine ".|:-right" #'("" ".|:" ".|:")
\defineBarLine ".|:-right2" #'("|" ".|:" ".|:")
\defineBarLine ".|:-right-small" #'("" ".|:" "|")
\defineBarLine ".|:-right-regleft" #'( "||" ".|:" "")
\defineBarLine ".|:-right-regleft-straight" #'( "|" ".|:" "")
\defineBarLine ".|:-right-small-left-double" #'("||" ".|:" "")
\defineBarLine ".|:-right-double" #'("||" ".|:" "")



%% Notation
sulp	= ^\markup { \italic s.p. }
norm	= ^\markup { \italic norm. }

separate = ^\markup{ \pad-markup #1
                      \translate #'( -1.1 . 0)
                     \column { { \beam #2.5 #0 #0.15 }
                               {  \vspace #-0.7 {
                                 \translate #'(1.1 . 0) \beam #2.5 #0 #0.15 } } } }

separateNone = ^\markup{ \pad-markup #0
                      \translate #'( -1.1 . 0)
                     \column { { \beam #2.5 #0 #0.15 }
                               {  \vspace #-0.7 {
                                 \translate #'(1.1 . 0) \beam #2.5 #0 #0.15 } } } }

together = ^\markup {  \pad-markup #1
                      \translate #'(-0.51 . 0)
                      \column { { \beam #2.5 #0 #0.3 }
                                {  \vspace #-0.7 {
                                  \beam #2.5 #0 #0.3 } } } }

togetherNone = ^\markup {  \pad-markup #0
                      \translate #'(-0.51 . 0)
                      \column { { \beam #2.5 #0 #0.3 }
                                {  \vspace #-0.7 {
                                  \beam #2.5 #0 #0.3 } } } }


rehmark = {
  \once \override Score.RehearsalMark #'break-visibility = ##(#f #t #t)
%   \once \override Score.RehearsalMark #'outside-staff-horizontal-padding = #'-2
  \mark \default
}

spacingDensity =
#(define-music-function (parser location num) (number?)
   #{
     \newSpacingSection
     \override Score.SpacingSpanner #'common-shortest-duration = #(ly:make-moment num 1024 )

   #})

% togetherVar =
% #(define-music-function
%   (parser location num)
%   (integer?)
%   #{
%       ^\markup {  \pad-markup #1
%                             \translate #'(-0.51 . 0)
%                             \column { { \beam #2.5 #0 #0.3 }
%                                       {  \vspace #-0.7 {
%                                         \beam #2.5 #0 #0.3 } } } }
%   #}
%  )

% #(define-markup-command (togetherVar layout props num) (markup?)
%   "Draw a double box around text."
%   (interpret-markup layout props
%     #{\markup {  \pad-markup #1
%                             \translate #'(-0.51 . 0)
%                             \column { { \beam #2.5 #0 #0.3 }
%                                       {  \vspace #-0.7 {
%                                         \beam #2.5 #0 #0.3 } } } }))

crpoco =
#(make-music 'CrescendoEvent
             'span-direction START
             'span-type 'text
             'span-text "cresc. poco a poco")

intensepoco =
{ \once \override TextSpanner.bound-details.left.text = \markup{ \italic {
  incr. intensity poco a poco } } }

shortPause =
{ \override BreathingSign.text = \markup { \musicglyph #"scripts.rvarcomma" }
  \breathe }

longPause = {
  \override BreathingSign.text = \markup {
    \musicglyph #"scripts.caesura.straight"
  }
  \breathe
}

forceClef =   \once \set Staff.forceClef = ##t

% supposed to make a rest of length n, but it doens't work
% varRest =
% #(define-music-function
%   (parser location n)
%   (integer?)
%    make-music
%       'SkipEvent
%       'duration
%       (ly:make-duration 3 0 n)
%   )

varRest =
#(define-music-function
  (parser location counter)
  (integer?)
  (if (> counter 0)

      #{
        s16 % ^\markup { #(number->string counter) }
        \varRest #(- counter 1)
      #}
      #{ #}

      )
  )

varRestEighth =
#(define-music-function
  (parser location counter)
  (integer?)
  (if (> counter 0)

      #{
        s8 % ^\markup { #(number->string counter) }
        \varRestEighth #(- counter 1)
      #}
      #{ #}

      )
  )

timeSig =
#(define-music-function
  (parser location num)
  (integer?)
  (make-music
   'TimeSignatureMusic
   'beat-structure
   '()
   'denominator
   8
   'numerator
   num)
  )
%% %%

%% Global %%
global = {
  \numericTimeSignature
  \set Score.markFormatter = #format-mark-box-alphabet
  \override Staff.Clef.full-size-change = ##t

  \override BreathingSign.text = \markup {
    \musicglyph #"scripts.caesura.straight"
  }

  \tempo "Unwavering" 8 = 168

  \grace s8
  \varRestEighth \beginningLen

  \mark \default % A
  <<
    { \grace {\varRest 6} \varRestEighth \alen }
  >>

  \break

  \override Score.RehearsalMark.self-alignment-X = #CENTER
  \override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible % #end-of-line-visible
  \mark \markup {2 - 4x}

  \once \omit Staff.Clef


  \grace {s16 s s s s s}
  % s8 * 16


  % \override Staff.BarLine.transparent = ##f

  \varRestEighth \blen \bar ":|."
  \mark \markup {2 - 4x}
  s8 * 3
  \break

  %\break
%   \override Staff.SpanBar.stencil = ##f
%   \override Staff.SpanBar.allow-span-bar = ##f

  \rehmark % B

  \override Score.BarLine.allow-span-bar = ##f
  % \bar ".|:-right"
  \bar ".|:-right-small"
  \grace {s16 s s s s s}
  \revert Score.BarLine.allow-span-bar
  s8
  \shortPause
  \bar ":|.-small"

  \varRestEighth \clen

  \rehmark % C
  \grace s8
  s8\together s8

  \varRestEighth \dlen

  \bar ".|:-small"
  \rehmark % D
  \grace {s16^\markup{ \pad-markup #0
                      \translate #'( 0 . 1.8)
                     \column { { \beam #2.5 #0 #0.15 }
                               {  \vspace #-0.7 {
                                 \translate #'(1.1 . 0) \beam #2.5 #0 #0.15 } } } }
          s s s s s}
  s8
  \bar ":|.-small"

  \varRestEighth \elen

  \bar ".|:-right"

  \break

  \tag #'violinPart {\pageBreak}
  \rehmark % E
  \grace {s8}
  s8% \together
  s8
  \bar ":|."

  \varRestEighth \flen

  \revert Staff.TimeSignature.stencil

  % \break

  \rehmark % F
  \bar "||"
  \grace {\varRest 6}

  \varRestEighth 5

  %\revert BreathingSign.text
  % \longPause
  s4\fermata
  \rehmark % G
  \override Staff.TimeSignature #'stencil = ##f
  \grace {s8}
  s8 s8

  \varRestEighth \glen

  \bar ""

  \override BreathingSign.text = \markup {
    \musicglyph #"scripts.caesura.straight"
  }

  \breathe

  % s8
  \bar ""

  \break

  \once \omit Staff.Clef
  \rehmark % H

  %   \beginning #(+ hlen ilen ialen ilen klen llen) ""
  \varRestEighth \hlen
  \varRestEighth \ilen

  \break
  \once \omit Staff.Clef

  \rehmark % I
  \varRestEighth \ialen


  \varRestEighth \ilen
  \break

  \tag #'notViolinPart {\pageBreak}

  \rehmark % J
  \varRestEighth \klen

  %\varRestEighth \llen
  \varRestEighth \mlen

  \rehmark % K

  \revert Staff.TimeSignature.stencil
  \bar "||"
  s8*5
  \once \override Score.BarLine.allow-span-bar = ##f

  \override Staff.TimeSignature.stencil = ##f

%   s8

  \tag #'violinPart {\pageBreak}
  \tag #'notViolinPart {\break}

  \rehmark % L
  \bar ".|:-right-regleft-straight"
%   \bar ".|:-right-small-left-double"
%   \bar ".|:-small"


  \override Score.SpacingSpanner.uniform-stretching = ##t
  \spacingDensity 256

  <<
    \varRestEighth 5
    s8^\markup{ \pad-markup #0
                      \translate #'( -0.3 . 0)
                     \column { { \beam #2.5 #0 #0.15 }
                               {  \vspace #-0.7 {
                                 \translate #'(1.1 . 0) \beam #2.5 #0 #0.15 } }
                                \vspace #0.2
                             }
              }
  >>
  \bar ":|.-small"
  <<
    \varRestEighth \olen
    {\varRestEighth #(- olen 4) s8 \tempo "Delicate" 8 = 50}
  >>

  << {\varRestEighth 5} >>
  \varRestEighth 8 \longPause

  \revert Staff.TimeSignature.stencil

  \tempo 4 = 66
  \bar "||"

  \rehmark % M
  \time 4/4
  s1\norm

  s1 s1 s2.
  \newSpacingSection
  \override SpacingSpanner.common-shortest-duration = #(ly:make-moment 1/8)

  \revert Score.SpacingSpanner.uniform-stretching
  s4
  \override Staff.TimeSignature.stencil = ##f
  \varRestEighth \plen

  \break

  \breathe
  \revert Staff.TimeSignature.stencil
  % \bar "||"
  \bar ""

  \once \override Score.RehearsalMark.break-align-symbols = #'(clef)
  \rehmark % N
  \once \override Staff.TimeSignature.break-visibility = ##(#f #t #t)
  \newSpacingSection

  \override Score.SpacingSpanner.uniform-stretching = ##t
  \spacingDensity 256
  % \spacingDensity 256

  \time 2/4
  s2 s2
  \spacingDensity 32
  s2
  \spacingDensity 512
  s2
  \break

  s2 \breathe

  \rehmark % O
  \newSpacingSection
  \revert Score.SpacingSpanner #'common-shortest-duration
  % \override Score.SpacingSpanner #'common-shortest-duration = #(ly:make-moment 1 8 )
  \spacingDensity 64
  \override Staff.TimeSignature.stencil = ##f

  \varRestEighth \qlen
  \breathe

  \break
  \tag #'violinPart {\pageBreak}
  \tag #'notViolinPart {\pageBreak}

  \rehmark % P
  \once \override Score.BarLine.allow-span-bar = ##f
  % \bar ".|:-small-right-regleft-straight"
  \bar ".|:-right-regleft-straight"

  \newSpacingSection
  \revert Score.SpacingSpanner.common-shortest-duration
  \revert Score.SpacingSpanner.strict-note-spacing
%   \spacingDensity 512
  <<
    \varRestEighth \rlen
    {
      s8\mp s8
    \newSpacingSection
    \revert Score.SpacingSpanner.common-shortest-duration
%     \spacingDensity 2048
    }
  >>

  \breathe

  \rehmark % Q
  \newSpacingSection
  \revert Score.SpacingSpanner.common-shortest-duration
  \spacingDensity 128

  <<
    \varRestEighth \slen
    {s8\mf\<\separateNone}
  >>

  \breathe

  \break

  \rehmark % R
  \override Staff.BarLine.allow-span-bar = ##f

  <<
    \varRestEighth \tlen
    \new Voice {s8\f\separateNone}
    {s8\!}
  >>
  \revert Staff.BarLine.allow-span-bar
  \breathe

  \revert Staff.TimeSignature.stencil
  \override Staff.TimeSignature #'stencil = ##f
  \bar "||"
  \time 6/8
  \rehmark % S

  \grace { s16*6 }

%   \hide Staff.TimeSignature

  s2. \break

  \bar ".|:-right-regleft-straight"
  % \bar ".|:-right-double"
  \rehmark % T
  \newSpacingSection
  \revert Score.SpacingSpanner.spacing-increment
  \revert Score.SpacingSpanner.shortest-duration-space
  \revert Score.SpacingSpanner.common-shortest-duration
  \revert Score.SpacingSpanner.base-shortest-duration
  \revert Score.SpacingSpanner.average-spacing-wishes

  <<
    { \grace s8 \varRestEighth #(+ ulen 4) }
    {\grace s8 s8\together  }
  >>
  \revert Staff.TimeSignature.stencil

%   \break

  \bar "||"
  \once \override Staff.TimeSignature #'stencil = ##f
  \time 5/8
  \rehmark % U
  \grace {s16^\markup{\italic sim.} s16*5} s4 %^"5 8 here"
  \override Staff.TimeSignature.stencil = ##f
  s4.
  \bar ".|:-right-double"
  \break

  \rehmark % V

  <<
    \grace s8 \varRestEighth #(+ ulen 4)
    {\grace s8 s8\together}
  >>

  \revert Staff.TimeSignature.stencil

  % \breathe

  \once \override Staff.TimeSignature #'stencil = ##f
  \bar "||"

  \time 5/8
  \rehmark % W
  \grace {s16*6^" "^\markup{\italic sim.}} s4
  \override Staff.TimeSignature.stencil = ##f
  s4.

  \bar ".|:-right-double"
  \break
  \rehmark % X
  \grace s8 \varRestEighth #(+ ulen 4)
  s1

  \revert Staff.TimeSignature.stencil
  \time 1/8
  \bar "||"
  \grace {s16*6}
  s8
  \bar "|."


}
%% %%

%% In-Score Functions %%

beginning =
#(define-music-function
  (parser location dur str)
  (integer? string?)
  #{
    <<
      %% Generates a full measure rest so the fermata/text can be placed in the center
      {
        \once \hide MultiMeasureRest
        \once \override MultiMeasureRestText #'extra-offset = #'(0 . -2.4)
        \once \override HorizontalBracket.shorten-pair = #'(-3 . 0)

        % sets time signature to dur / 8
        #(make-music
          'TimeSignatureMusic
          'beat-structure
          '()
          'denominator
          8
          'numerator
          dur)

        % generates full measure rest that have a fermatamarkup and str above it
        #(make-music
          'MultiMeasureRestMusic
          'duration
          (ly:make-duration 3 0 dur)
          'articulations
          (list (make-music
                 'MultiMeasureTextEvent
                 'tweaks
                 (list (cons (quote outside-staff-priority) 40)
                   (cons (quote outside-staff-padding) 0))
                 'text
                 (markup #:fermata))
            (make-music
             'MultiMeasureTextEvent
             'direction
             1
             'text
             (markup
              #:line
              (#:fontsize
               txtsize
               (#:hspace 0.62)
               #:fontsize
               txtsize
               (#:center-column (#:vspace -1.3 #:halign 20 #:simple str)))
              )
             )
            )
          )
      }
      %% generates rests needed to make a group (hoizontal bracket)
      {
        \once \hide Rest

        %% Makes the \startGroup rests
        #(make-music
          'RestEvent
          'articulations
          (list (make-music
                 'NoteGroupingEvent
                 'span-direction
                 -1))
          'duration
          (ly:make-duration 3 0 (- dur 1)))

        \once \hide Rest
        %% Makes the \stopGroup rest
        #(make-music
          'RestEvent
          'articulations
          (list (make-music
                 'NoteGroupingEvent
                 'span-direction
                 1))
          'duration
          (ly:make-duration 3 0 1))

        % \override NoteHead.transparent = ##f
      }
    >>
  #}
  )


beginningOther =
#(define-music-function
  (parser location dur str txt ferm)
  (integer? string? number? number?)
  #{
    <<
      %% Generates a full measure rest so the fermata/text can be placed in the center
      {
        \once \hide MultiMeasureRest
        \once \override MultiMeasureRestText #'extra-offset = #'(0 . -2.4)
        \once \override HorizontalBracket.shorten-pair = #'(-3 . 0)

        % sets time signature to dur / 8
        #(make-music
          'TimeSignatureMusic
          'beat-structure
          '()
          'denominator
          8
          'numerator
          dur)

        % generates full measure rest that have a fermatamarkup and str above it
        #(make-music
          'MultiMeasureRestMusic
          'duration
          (ly:make-duration 3 0 dur)
          'articulations
          (list (make-music
                 'MultiMeasureTextEvent
                 'tweaks
                 (list (cons (quote outside-staff-priority) 40)
                   (cons (quote outside-staff-padding) 0))
                 'text
                 (markup (#:hspace ferm) #:fermata))
            (make-music
             'MultiMeasureTextEvent
             'direction
             1
             'text
             (markup
              #:line
              (#:fontsize
               txtsize
               (#:hspace txt)
               #:fontsize
               txtsize
               (#:center-column (#:vspace -1.3 #:halign 20 #:simple str)))
              )
             )
            )
          )
      }
      %% generates rests needed to make a group (hoizontal bracket)
      {
        \once \hide Rest

        %% Makes the \startGroup rests
        #(make-music
          'RestEvent
          'articulations
          (list (make-music
                 'NoteGroupingEvent
                 'span-direction
                 -1))
          'duration
          (ly:make-duration 3 0 (- dur 1)))

        \once \hide Rest
        %% Makes the \stopGroup rest
        #(make-music
          'RestEvent
          'articulations
          (list (make-music
                 'NoteGroupingEvent
                 'span-direction
                 1))
          'duration
          (ly:make-duration 3 0 1))

        % \override NoteHead.transparent = ##f
      }
    >>
  #}
  )

% \stopStaff and \startStaff are for changing staff properties, not turning the staff off,
% The StaffSymbol and Barline Transparencies are for that
invs =
#(define-music-function
  (parser location)
  ()
  #{
    \stopStaff
    \override Staff.StaffSymbol.transparent = ##t
    \override Staff.BarLine.transparent = ##t
    %       \override Staff.Clef.transparent = ##t

    \startStaff

  #}

  )

% make the barline and staffsymbol visible again
notinvs =
#(define-music-function
  (parser location)
  ()
  #{
    \stopStaff
    \override Staff.StaffSymbol.transparent = ##f
    \override Staff.BarLine.transparent = ##f
    \startStaff
  #}

  )



% turns transparencies off if needed
startstaff =
#(define-music-function
  (parser location end)
  (boolean?)
  (if end
      #{
        \notinvs
      #}
      #{

      #}
      )
  )

% hides bar line and makes an arrow
% arrow :: length -> timeStr -> endofstaff?
arrow =
#(define-music-function
  (parser location dur str end)
  (integer? markup? boolean?)
  #{
    % Set up text spanner to display arrow
    \override TextSpanner.bound-details.left.stencil-align-dir-y = #CENTER
    \override TextSpanner.style = #'line
    % put in in the middle of the staff
    % TODO: get height of staff and use that?
    \override TextSpanner.extra-offset = #'(0 . -3.1)
    \override TextSpanner.bound-details.right.text = \markup {
      \column {
        \scale #'( 1 . 1)
        \arrow #"long" ##f #X #UP #1 #0.0
      }
    }
    \override TextSpanner.thickness = #2

    % in order to keep the right hand barline to appear, need to \stopStaff, put a small
    % hidden rest, and \startStaff

    % after that, use invis (it does page breaks with the staff bracket) for the the bulk
    % of the spacing
    \stopStaff

    \override Staff.Clef.transparent = ##f
    \override Staff.Clef.break-visibility = #all-invisible

    \startStaff

    <<
      {
        % sets time signature to dur / 8
        #(make-music
          'TimeSignatureMusic
          'beat-structure
          '()
          'denominator
          8
          'numerator
          dur)


        \once \override TextScript.extra-offset = #'(0 . -3)

        \invs
        \stopStaff
        \override Staff.BarLine.transparent = ##f
        \startStaff

        % invisible rests of length tail that start text span
        #(make-music
          'SequentialMusic
          'elements
          (list (make-music
                 'SkipEvent
                 'articulations
                 (list (make-music
                        'TextSpanEvent
                        'span-direction
                        -1)
                   (make-music
                    'TextScriptEvent
                    'direction
                    1
                    'text
                    (markup
                     #:line
                     (#:left-align str))
                    )
                   )
                 'duration
                 (ly:make-duration 3 0 1)
                 )
            )
          )

%         \startStaff

%         \invs
%         \stopStaff
%         \override Staff.BarLine.transparent = ##f
%         \startStaff

        % invisible rests of length head
        #(make-music
          'SkipEvent
          'duration
          (ly:make-duration 3 0 (- dur 2)))

        %\override Score.BarLine.stencil = ##f

        \stopStaff
        \override Staff.Clef.transparent = ##f
        \startStaff

        % invisible rest of length tail that end text spanner
        #(make-music
          'SequentialMusic
          'elements
          (list (make-music
                 'SkipEvent
                 'articulations
                 (list (make-music
                        'TextSpanEvent
                        'span-direction
                        1)
                   )
                 'duration
                 (ly:make-duration 3 0 1)
                 )
            )
          )

      }
    >>

    \startstaff #end

    \revert TextSpanner.bound-details.left.stencil-align-dir-y
    \revert TextSpanner.style
    \revert TextSpanner.extra-offset
    \revert TextSpanner.bound-details.right.text

    \revert Score.BarLine.stencil

    \revert Staff.Clef.break-visibility
  #}
  )

arrowSpecial =
#(define-music-function
  (parser location dur str end)
  (integer? markup? boolean?)
  #{
      % Set up text spanner to display arrow
      \override TextSpanner.bound-details.left.stencil-align-dir-y = #CENTER
      \override TextSpanner.style = #'line
      % put in in the middle of the staff
      % TODO: get height of staff and use that?
      \override TextSpanner.extra-offset = #'(0 . -3.1)
      \override TextSpanner.bound-details.right.text = \markup {
        \column {
        \scale #'( 1 . 1)
        \arrow #"long" ##f #X #UP #1 #0.0
        }
      }
      \override TextSpanner.thickness = #2

      % in order to keep the right hand barline to appear, need to \stopStaff, put a small
      % hidden rest, and \startStaff

      % after that, use invis (it does page breaks with the staff bracket) for the the bulk
      % of the spacing
      \stopStaff

      \override Staff.Clef.transparent = ##f

    <<
      {
       % sets time signature to dur / 8
       #(make-music
        'TimeSignatureMusic
        'beat-structure
        '()
        'denominator
        8
        'numerator
        dur)
      % invisible rests of length tail that start text span
      #(make-music
        'SequentialMusic
        'elements
        (list (make-music
                'SkipEvent
                'articulations
                (list (make-music
                        'TextSpanEvent
                        'span-direction
                        -1)
                       (make-music
                        'TextScriptEvent
                        'direction
                        1
                        'text
                        (markup #:line (#:left-align str))
                        )
                  )
                'duration
                (ly:make-duration 3 0 1)
                )
        )
      )

      \startStaff

      \invs
      \override Staff.BarLine.transparent = ##f
      % invisible rests of length head
      #(make-music
        'SkipEvent
        'duration
        (ly:make-duration 3 0 (- dur 2)))

      %\override Score.BarLine.stencil = ##f

      \stopStaff
      \override Staff.Clef.transparent = ##f
      \startStaff

      % invisible rest of length tail that end text spanner
      #(make-music
        'SequentialMusic
        'elements
        (list (make-music
                'SkipEvent
                'articulations
                (list (make-music
                        'TextSpanEvent
                        'span-direction
                        1)
                       )
                'duration
                (ly:make-duration 3 0 1)
              )
        )
      )

      }
    >>

      \startstaff #end

      \revert TextSpanner.bound-details.left.stencil-align-dir-y
      \revert TextSpanner.style
      \revert TextSpanner.extra-offset
      \revert TextSpanner.bound-details.right.text

      \revert Score.BarLine.stencil
  #}
  )

arrowGrace =
#(define-music-function
  (parser location dur grc str end)
  (integer? integer? markup? boolean?)
  #{
    % Set up text spanner to display arrow
    \override TextSpanner.bound-details.left.stencil-align-dir-y = #CENTER
    \override TextSpanner.style = #'line
    % put in in the middle of the staff
    % TODO: get height of staff and use that?
    \override TextSpanner.extra-offset = #'(0 . -3.1)
    \override TextSpanner.bound-details.right.text = \markup {
      \column {
        \scale #'( 1 . 1)
        \arrow #"long" ##f #X #UP #1 #0.0
      }
    }
    \override TextSpanner.thickness = #2
    \override Staff.Clef.break-visibility = #all-invisible

    % in order to keep the right hand barline to appear, need to \stopStaff, put a small
    % hidden rest, and \startStaff

    % after that, use invis (it does page breaks with the staff bracket) for the the bulk
    % of the spacing

    \override Staff.Clef.transparent = ##f

    <<
      {
        % sets time signature to dur / 8
        #(make-music
          'TimeSignatureMusic
          'beat-structure
          '()
          'denominator
          8
          'numerator
          dur)

        \once \override TextScript.extra-offset = #'(0 . -3)

        % crappy hack that puts the \startTextSpanner in the grace notes
        \grace {
          #(make-music
            'SequentialMusic
            'elements
            (list (make-music
                   'SkipEvent
                   'articulations
                   (list (make-music
                          'TextSpanEvent
                          'span-direction
                          -1)
                     (make-music
                      'TextScriptEvent
                      'direction
                      1
                      'text
                      (markup #:line (#:left-align str))
                      )
                     )
                   'duration
                   (ly:make-duration 4 0 1)
                   )
              )
            )
          \varRest #( - grc 1)
        }

        % invisible rests of length head
        #(make-music
          'SkipEvent
          'duration
          (ly:make-duration 3 0 (- dur 1)))

        %\override Score.BarLine.stencil = ##f

        \stopStaff
        \override Staff.Clef.transparent = ##f
        \startStaff

        % invisible rest of length tail that end text spanner
        #(make-music
          'SequentialMusic
          'elements
          (list (make-music
                 'SkipEvent
                 'articulations
                 (list (make-music
                        'TextSpanEvent
                        'span-direction
                        1)
                   )
                 'duration
                 (ly:make-duration 3 0 1)
                 )
            )
          )

      }
    >>

    \startstaff #end

    \revert TextSpanner.bound-details.left.stencil-align-dir-y
    \revert TextSpanner.style
    \revert TextSpanner.extra-offset
    \revert TextSpanner.bound-details.right.text

    \revert Score.BarLine.stencil

    \revert Staff.Clef.break-visibility

  #}
  )

% an arrow function for dealing with notes in smaller divisions than eighth notes
arrowPost =
#(define-music-function
  (parser location dur str end noteLen denEnd cntEnd)
  (integer? markup? boolean? integer? integer? integer?)
  #{
    % Set up text spanner to display arrow
    \override TextSpanner.bound-details.left.stencil-align-dir-y = #CENTER
    \override TextSpanner.style = #'line
    % put in in the middle of the staff
    % TODO: get height of staff and use that?
    \override TextSpanner.extra-offset = #'(0 . -3.1)
    \override TextSpanner.bound-details.right.text = \markup {
      \column {
        \scale #'( 1 . 1)
        \arrow #"long" ##f #X #UP #1 #0.0
      }
    }
    \override TextSpanner.thickness = #2

    % in order to keep the right hand barline to appear, need to \stopStaff, put a small
    % hidden rest, and \startStaff

    % after that, use invis (it does page breaks with the staff bracket) for the the bulk
    % of the spacing
    \stopStaff

    \override Staff.Clef.transparent = ##f
    \override Staff.Clef.break-visibility = #all-invisible


    <<
      {
        % sets time signature to dur / 8
        #(make-music
          'TimeSignatureMusic
          'beat-structure
          '()
          'denominator
          8
          'numerator
          dur)

        \once \override TextScript.extra-offset = #'(0 . -3)


        % invisible rests of length tail that start text span
        #(make-music
          'SequentialMusic
          'elements
          (list (make-music
                 'SkipEvent
                 'articulations
                 (list (make-music
                        'TextSpanEvent
                        'span-direction
                        -1)
                   (make-music
                    'TextScriptEvent
                    'direction
                    1
                    'text
                    (markup #:line (#:left-align str))
                    )
                   )
                 'duration
                 (ly:make-duration 3 0 1)
                 )
            )
          )

        \startStaff

        \invs
        \override Staff.BarLine.transparent = ##f

        % invisible rests of length head
        #(make-music
          'SkipEvent
          'duration
          (ly:make-duration 3 0 (- dur 2)))

        % extra bit fo rest from -End vars
        #(make-music
          'SkipEvent
          'duration
          (ly:make-duration noteLen 0 (- cntEnd 1) denEnd ) )
        %\override Score.BarLine.stencil = ##f

        \stopStaff
        \override Staff.Clef.transparent = ##f
        \startStaff

        % invisible rest of length tail that end text spanner
        #(make-music
          'SequentialMusic
          'elements
          (list (make-music
                 'SkipEvent
                 'articulations
                 (list (make-music
                        'TextSpanEvent
                        'span-direction
                        1)
                   )
                 'duration
                 (ly:make-duration noteLen 0 1 denEnd)
                 )
            )
          )

      }
    >>

    \startstaff #end

    \revert TextSpanner.bound-details.left.stencil-align-dir-y
    \revert TextSpanner.style
    \revert TextSpanner.extra-offset
    \revert TextSpanner.bound-details.right.text

    \revert Score.BarLine.stencil
    \revert Staff.Clef.break-visibility

  #}
  )

% display blank space for the given duration
blank =
#(define-music-function
  (parser location dur)
  (ly:duration?)
  #{
    \stopStaff
    \override Score.BarLine.stencil = ##f

    #(make-music
      'SkipEvent
      'duration
      dur
      )

    \startStaff
    \revert Score.BarLine.stencil
  #}
  )

asect =
{
  \once \omit Staff.Clef
  \once \override Staff.BarLine.transparent = ##f
  \bar ".|:-end"
  \grace {s16 s s s s s}
}

squeezeNotation = {
  \set Score.proportionalNotationDuration = #(ly:make-moment 1/16)

  \override Score.SpacingSpanner.strict-note-spacing = ##t
  \override Staff.AccidentalPlacement #'right-padding = #-0.05
}

fakeGrace = {
  \override NoteHead.font-size = #-4
  \override Accidental.font-size = #-4
  \stemUp
}

fakeGraceOff = {
  \revert NoteHead.font-size
  \revert Accidental.font-size
  \stemNeutral
}
