%% Header, Footer, and Various Formatting Values

% paper
scorePaperSize = "a4landscape"

% header
ttl = "italy quartet"
cmp = "Nicholas Shaheed"
tg  = ##f

% other
beginningMult = 3
beginningLen  = 40
alen = 12
blen = 16
#(define (beginningArrow n) (- beginningLen (* beginningMult n)))
\defineBarLine "|-dashedSpan" #'("||" "" "!!")
\defineBarLine ".|:-end" #'("" ".|:" "")
\defineBarLine ".|:-small" #'(".|:" "" "")
\defineBarLine ":|.-small" #'(":|." "" "")
\defineBarLine ".|:-mixed" #'(".|:" "" "|")
\defineBarLine ":|.-mixed" #'(":|." "" "|")
\defineBarLine ":|:-split" #'(":|." ".|:" "||")
\defineBarLine ".|:-left"  #'("" ".|:" "||")
\defineBarLine ":|.-left"  #'("" ":|." "||")

% supposed to make a rest of length n, but it doens't work
varRest = 
#(define-music-function
  (parser location n)
  (integer?)
   make-music
      'SkipEvent
      'duration
      (ly:make-duration 3 0 n)
  )

%% %%

%% Global %%
global= {
  \set Score.markFormatter = #format-mark-box-alphabet
  \override Staff.Clef.full-size-change = ##t
  
  \override BreathingSign.text = \markup {
    \musicglyph #"scripts.caesura.straight"
  }

  s8*40 s8 s8 
  
  s8 s8 s8 s8 s8 s8 s8 s8 s8 
  s8 s8 s8 
  
  \override Score.RehearsalMark.self-alignment-X = #CENTER
  \override Score.RehearsalMark #'break-visibility = #end-of-line-visible
  \mark \markup {2 - 4x}
  
  \grace {s16 s s s s s}
  s8 * 16 \mark \markup {2 - 4x}

\once \omit Staff.Clef
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
        \hide Rest
        
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
      s16 s s s s
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