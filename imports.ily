%% Header, Footer, and Various Formatting Values

% paper
scorePaperSize = "a4landscape"

% header
ttl = "Particular Rotations"
cmp = "Nicholas Shaheed"
tg  = ##f

% other

%% section lengths (eighth notes)
beginningMult = 3
beginningLen  = 40
alen = 12
blen = 16
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

#(define (beginningArrow n) (- beginningLen (* beginningMult n)))

%% bar lines
\defineBarLine "|-dashedSpan" #'("||" "" "!!")
\defineBarLine ".|:-end" #'("" ".|:" "")
\defineBarLine ".|:-small" #'(".|:" "" "")
% \defineBarLine ".|:-small" #'("|" ".|:" "")

\defineBarLine ":|.-small" #'(":|." "" "")
\defineBarLine ".|:-mixed" #'(".|:" "" "|")
\defineBarLine ":|.-mixed" #'(":|." "" "|")
\defineBarLine ":|:-split" #'(":|." ".|:" "||")
\defineBarLine ".|:-left"  #'("" ".|:" "||")
\defineBarLine ":|.-left"  #'("" ":|." "||")
\defineBarLine "[|:-small" #'("[|:" "" "")
\defineBarLine ":|]-small" #'(":|]" "" "")
\defineBarLine ":|.|:-small" #'(":|.|:-small" "" "")

%% Notation
sulp	= ^\markup { \italic s.p. }
norm	= ^\markup { \italic norm }


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

  s8*40 s8 s8 
  
  s8 s8 s8 s8 s8 s8 s8 s8 s8 
  s8 s8 s8
  
  \break
  
  \override Score.RehearsalMark.self-alignment-X = #CENTER
  \once \override Score.RehearsalMark #'break-visibility = #end-of-line-visible
  \mark \markup {2 - 4x}
  
  \once \omit Staff.Clef
  
  
  \grace {s16 s s s s s}
  s8 * 16 \mark \markup {2 - 4x}
  s8 * 3
  \once \set Staff.forceClef = ##t
  
  \bar ".|:-small"
    \grace {s16 s s s s s}
    s8
  \bar ":|.-small"
  
  \varRestEighth \clen 
  
  s8 s8 
  
  \varRestEighth \dlen 
  
  \bar ".|:-small"
    \grace {s16 s s s s s}
    s8
  \bar ":|.-small"
  
  \varRestEighth \elen
  
  \bar ".|:"
    \grace {s8}
    s8 s8
  \bar ":|."
  
  \varRestEighth \flen
  
  \revert Staff.TimeSignature.stencil
  
  \bar "||"
  \grace {\varRest 6}
  
  \varRestEighth 5
  
  \revert BreathingSign.text
  \breathe
  
  \override Staff.TimeSignature #'stencil = ##f 
  \grace {s8}
  s8 s8
  
  \varRestEighth \glen
  
  \bar ""
  
  \override BreathingSign.text = \markup {
    \musicglyph #"scripts.caesura.straight"
  }
    
  \breathe
  
  s8 \bar ""
  
  %   \beginning #(+ hlen ilen ialen ilen klen llen) ""
  \varRestEighth \hlen
  \varRestEighth \ilen
  \varRestEighth \ialen
  \varRestEighth \ilen
  \varRestEighth \klen
  \varRestEighth \llen
  \varRestEighth \mlen
  
  \revert Staff.TimeSignature.stencil
  \bar "||"
  s8*5
  \bar "||"
  \override Staff.TimeSignature.stencil = ##f
  
  s8
  
  \bar ".|:-small"
  
  \varRestEighth 5
  \bar ":|.-small"
  \varRestEighth \olen
  \varRestEighth 5
  \varRestEighth 8 \breathe
  
  \revert Staff.TimeSignature.stencil
  \bar "||"
  \time 4/4
  s1\norm
  
  s1 s1 s1
  \override Staff.TimeSignature.stencil = ##f
  \varRestEighth \plen
  
  \breathe
  \revert Staff.TimeSignature.stencil
  \bar "||"
  \time 2/4
  s2 * 5 \breathe
  
  \override Staff.TimeSignature.stencil = ##f
  
  \varRestEighth \qlen
  \breathe

  \varRestEighth \rlen
  \breathe
  
  \varRestEighth \slen
  \breathe

  
%\varRest 20

  % \breathe
%   \grace{s16 s s s s s}
%   \once \omit Staff.Clef
  %s8 s % s % s s s s s 
  % s  s s s s s s s 
  %\once \set Staff.forceClef = ##t 
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
                    (#:hspace 0.7
                    (#:center-column
                    (#:vspace -1.3 #:halign 20 #:simple str)))))))
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