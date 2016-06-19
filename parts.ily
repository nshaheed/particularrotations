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
    { \arrowGrace \alen "" ##f
      %\arrow #(- alen 1) "" ##f 
    }
  >>

  \bar ":|.|:"
  
   <<
    % \asect
    { 
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
    }
   >>
   
    \bar ":|."

  % \notinvs
%   s8
%   \notinvs
%   s8
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
  
  \clef treble

  
  \time 1/4
  \bar ".|:"
    \grace s8 <af, ef'>8 <af ef'>8
  \bar ":|."  
  
  \arrow #(beginningArrow 3) "35\" – 45\"" ##f
  
  <<
    \asect
    { \arrowGrace \alen "" ##f 
      %\arrow #(- alen 1) "" ##f 
    }
  >>  
  
  \bar ":|.|:"

  <<
    % \asect
    { \arrowGrace \blen "" ##f }
  >> 
  
  \bar ":|."

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
  
  \clef alto
  
  \time 1/4
  \bar ".|:"
    \appoggiatura c,8 <c g'>8 <c g'>8
  \bar ":|."
  
  \arrow #(beginningArrow 2) "40\" – 50\"" ##f

  <<
    \asect
    { 
      \arrowGrace 4 "" ##t
      % \arrow 3 "5\", decrease time each repetition" ##t 
    }
    % {s8 s4^\markup { \hspace #10 \musicglyph #"scripts.ufermata" } }
   
  >>
  
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
  
  
  %\bar ":|."
  % \time 1/8
  % s8
  %\invs
  % \break
  
  % \bar ".|:-left"
%   \once \override Staff.BarLine.bar-extent = #'(-14 . 7)

  \bar ":|.|:"
 
  <<
    % \asect
    { 
      \arrowGrace 8 "" ##t
      % \arrow 7 "" ##t 
      
      \time 1/8
      
      \once \set Staff.forceClef = ##t 

      \clef alto
      \grace {\slashI {c16 ef c d c d} } 
      c8->  
      
      \bar ".|:-small"
        \time 1/4
        <c g'>8[  <c g'>8]
      \bar ":|.-small"
      
      \arrow #(- blen 11) "" ##t
    }
    % {s8 s4^\markup { \hspace #10 \musicglyph #"scripts.ufermata" } }
   
  >>
  \bar ":|."
  
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
  
  %\notinvs
  
  %\time 1/8
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
    
    %\override Staff.StaffSymbol.transparent = ##t
    % \arrow #(- alen 3) "5\" after viola grace notes, decrease time each repetition" ##f
    <<
      \arrow #(- alen 3) "" ##f
      {s8 s8^\markup {"5\" after Viola grace notes, decrease time each repetition"} 
       % \notinvs
      }
    >>
         %\once \override Staff.BarLine.bar-extent = #'(0 . 10)


    %\notinvs
    %\time 1/8
    \bar ":|."
    % \break
%     s8
    %\invs
%     \break
    % \arrowGrace 1 "" ##f
    
    %\notinvs

    
    %\bar ".|:-left"
        %\once \override Staff.BarLine.bar-extent = #'(0 . 10)

    \bar ":|.|:"
    \time 1/8
    
    %\notinvs
    
    %\once \set Staff.forceClef = ##t 
    
    %\clef bass
    \grace {\slashI {c,16 \notinvs 
                     
                     ef c d c d} } 
    c8->  
   
    \bar ".|:-mixed"
      \time 1/4
%       \stopStaff
%       \override Staff.BarLine.extra-spacing-height = #'(10.0 . 10.0)
%       \startStaff
%     \once \override Staff.BarLine.bar-extent = #'(2.5 . 20)
    %\once \override Staff.BarLine.Y-extent = #'(2.5 . 20)

      <g' d'>8 <g d'>8
      \stopStaff
                     \once \override Staff.StaffSymbol.width = #0.1
                     %\override Staff.StaffSymbol.Y-extent = #'(3 . 3)
                     \startStaff
    \bar ":|.-small"
    
    
    \arrow #(- blen 3) "" ##f

    \bar ":|."
    \notinvs
    \grace {\slashI {c,16 ef c d c d} } 
    c8-> \breathe 
  
}

celloTwo = \new Voice
\relative c' {
    \bar ".|:-left"
    \time 1/8
    
    \notinvs
    
    \clef bass
    \grace {\slashI {c,16 ef c d c d} } 
    c8->  
   
    \bar ".|:-mixed"
      \time 1/4
      <g' d'>8 <g d'>8
    \bar ":|.-small"
 
}