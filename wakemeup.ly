\version "2.26.0"

\pointAndClickOff

D = \tweak Stem.direction #DOWN \etc
U = \tweak Stem.direction #UP \etc

\header {
  title = "Wake me up when september ends"
  composer = "Green Day"
}

#(set-global-staff-size 19.9)

\paper {
  top-margin = 12\mm
  bottom-margin = 12\mm
  left-margin = 15\mm
  right-margin = 15\mm
}

\layout {
  \context {
    \Score
    autoBeaming = ##f
  }
  \context {
    \DrumStaff
    drumStyleTable = #weinberg-drums-style
  }
}

songChordsVerse = \chordmode {
  g1 |
  \once \override ChordNames.ChordName.text = \markup \dir-column {
    \italic \small "(alt. D)"
    "Bm"
  }
  b1:m |e1:m |d1|c1|c1:m| g1 | g1 |
}

songChordsBridge = \chordmode {
  e1:m |
  \once \override ChordNames.ChordName.text = \markup \dir-column {
    \italic \small "(alt. D)"
    "Bm"
  }
  b1:m |c1 |g2 g2/fis|
  e1:m |
  \once \override ChordNames.ChordName.text = \markup \dir-column {
    \italic \small "(alt. D)"
    "Bm"
  }
  b1:m |c1 |d1|
}



songChords = \chordmode {
   g1 | g1 | g1 | g1 |
  \songChordsVerse
  \songChordsVerse
  \songChordsBridge
  \songChordsVerse
   g1 | g1 | g1 | g1 | g1 | g1 |
  \songChordsVerse
  \songChordsVerse
  \songChordsBridge
  \songChordsVerse
  \songChordsBridge
  d1 | d1 | d1 | g1 | g1 | g1 | g1 | 
  \songChordsVerse
  \songChordsVerse
  c1|c1:m|g1|g1|
  c1|c1:m|g1|
}
% ------------------------------------------------------------------
% 1. SANGTEKST (Opdelt i stavelser med hyphens til automatisk tilpasning)
% ------------------------------------------------------------------
verse = \lyricmode {
  Sum -- mer has come and passed
  The in -- no -- cent can ne -- ver last
  Wake me up when Sep -- tem -- ber ends
  
  Like my fa -- thers come to pass
  Se -- ven years has gone so fast
  Wake me up when Sep -- tem -- ber ends
  
  Here comes the rain a -- gain
  Fal -- ling from the stars
  Drenched in my pain a -- gain
  Be -- com -- ing who we are
  
  As my me -- mo -- ry rests
  But ne -- ver for -- gets what I lost
  Wake me up when Sep -- tem -- ber ends
  
  Sum -- mer has come and passed
  The in -- no -- cent can ne -- ver last
  Wake me up when Sep -- tem -- ber ends
  
  Ring out the bells a -- gain
  Like we did when spring be -- gan
  Wake me up when Sep -- tem -- ber ends
  
  Here comes the rain a -- gain
  Fal -- ling from the stars
  Drenched in my pain a -- gain
  Be -- com -- ing who we are
  
  As my me -- mo -- ry rests
  But ne -- ver for -- gets what I lost
  Wake me up when Sep -- tem -- ber ends
  
  Sum -- mer has come and passed
  The in -- no -- cent can ne -- ver last
  Wake me up when Sep -- tem -- ber ends
  
  Like my fa -- ther's come to pass
  Twen -- ty years has gone so fast
  Wake me up when Sep -- tem -- ber ends
  
  Wake me up when Sep -- tem -- ber ends
  Wake me up when Sep -- tem -- ber ends
}

% ------------------------------------------------------------------
% 2. VOKALMELODI
% ------------------------------------------------------------------
vocalMelody = \relative a' {
  \clef "treble" \numericTimeSignature \time 4/4 \tempo 4 = 105
  R1*4 \break|
  a4. b4 b4. |
  a4 b8 b4. r8 g8 |
  a4 b8 b4 g4 e'8 |
  r8 d4 a8 (g4.) r8 |
  d'4 g,8 g4. r4 |
  d'4 g,8 g4 a4 b8 |
  R1*2 |\break
  a4 b8 b4 b4. |
  a4 b8 b4 r4. |
  a4 b8 b4 g4 e'8 |
  r8 d4 a8 (g4.) r8 |
  d'4 g,8 g4. r4 |
  d'4 g,8 g4 a4 b8 |
  R1*2 |\break
  a4. b4 b4. |
  a4 b8 b4. r4 |
  c4 b4 g8 a4 b8 |
  R1 |\break
  a4. b4 b4. |
  b4 fis8 fis4. r8 fis8 |
  b4 a4 g8 a4 a8 |
  R1 |\break
  a4. b4 b4 b8 |
  a16 b4 r16 b4. r8 g8 |
  a4 b8 b4 (g4) e'8 |
  r8 d4 a8 (g4.) r8 |
  d'4 g,8 g4. r4 |
  d'4 g,8 g4 a4 a8 
  (g4) r2. |
  R1|\break
  R1*6 |\break
  a4. b4 b4. |
  a4 b8 b4. r8 g8 |
  a4 b8 b4 (g4) e'8 |
  r8 d4 a8 g4. r8 |\break
  d'4 g,8 g4. r4 |
  d'4 g,8 g4 a4 b8 |
  R1*2 |\break
  a4. b4 b4. |
  a4 b8 b4. r4 |
  a4 b8 b4 g4 e'8 |
  r8 d4 a8 (g4.) r8 |
  d'4 g,8 g4. r4 |
  d'4 g,8 g4 a4 b8 |
  R1*2 |\break
  a4. b4 b4. |
  a4 b8 b4. r4 |
  c4 b4 g8 a4 b8 |
  R1 |\break
  a4. b4 b4. |
  b4 fis8 fis4. r8 fis8 |
  b4 a4 g8 a4 a8 |
  R1 |\break
  a4. b4 b4 b8 |
  (a16 b4) r16 b4. r8 g8 |
  a4 b8 b4 g4 e'8 |
  r8 d4 a8 (g4.) r8 |\break
  d'4 g,8 g4. r4 |
  d'4 g,8 g4 a4 a8 |
  (r8 g4.) r2 | R1 | \break
  R1*4 | \break
  R1*4 | \break
  R1*3 |\break
  R1*4 |\break
  a4. b4 b4. |
  a4 b8 b4. r8 g8 |
  a4 b8 b4 g4 e'8 |
  r8 d4 a8 (g4.) r8 |
  d'4 g,8 g4. r4 |
  d'4 g,8 g4 a4 b8 |
  R1*2 |\break
  a4 b8 b4 b4. |
  a4 b8 b4. r4 |
  a4 b8 b4 g4 e'8 |
  r8 d4 a8 (g4.) r8 |
  d'4 g,8 g4. r4 |
  d'4 g,8 g4 a4 b8 |
  R1*2 |\break
  d4 g,8 g4. r4 |
  d'4 g,8 g4 a4 b8 |
  R1*2 |\break
  d4 g,8 g4. r4 |
  d'4 g,8 g4 a4 a8 |
  r8 g4. r2 \bar "|."
}

% ------------------------------------------------------------------
% 3. SLAGTØJSSTEMMER (Omdannet til drummode)
% ------------------------------------------------------------------

% Hi-Hat (tidligere Tambourine)
drumTmbn = \drummode {
  %\repeat percent 12 { R1 } |
  %\repeat percent 24 { r2. hh8 r8 | }
  %\repeat percent 50 { R1 } |
  %\repeat percent 2 { r2. hh8 r8 | }
  %\repeat percent 25 { R1 } |
}

% Lilletromme / Snare (tidligere Cabasa / Perc)
drumPercSnare = \drummode {
  %\repeat percent 12 { R1 } |
  %\repeat percent 24 { r4 sn8 r4 sn8 r4 | }
  %\repeat percent 53 { R1 } |
  %\repeat percent 4 { r4 sn8 r4 sn8 r4 | }
  %\repeat percent 20 { R1 } |
}


drumA = \drummode {
  bd8 [ bd8 ] ss8 bd8 bd8 ss4. |
  bd8 [ bd8 ] ss8 bd8 bd8 ss8 tamb4 |
}

drumB = \drummode {
  bd8 [ bd8 ] sn8 bd8 bd8 sn4. |
  bd8 [ bd8 ] sn8 bd8 bd8 sn8 hho4 |
}

drumWild = \drummode {
  % Slag 1 & 1-og  | Slag 2 & 2-og (snare bundet til 16.-del + crash på 2-og) | Slag 3 & 3-og  | Slag 4 & 4-og
  <cymc bd>8 [ <cymc bd>8 ] <cymc sn>8~ [ <cymc sn>16 sn16 ] <cymc bd>8 [ <cymc bd>8 ] <cymc sn>8 [ cymc8 ]
}

drumWildRoll = \drummode {
  <cymc bd>8 [ <cymc bd>8 ] <cymc sn>8~ [ <cymc sn>16 sn16 ] <cymc bd>8 [ sn16 sn16 ] sn16 [ sn16 sn16 sn16 ]
}

drumSolo = \drummode {
  <cymc sn bd>8 <cymc sn bd>8 <cymc sn bd>8 <cymc sn bd>8 <cymc sn bd>8 <cymc sn bd>8 <cymc sn bd>8 <cymc sn bd>8 
}

drumSoloEnd = \drummode {
  <cymc sn bd>1 
}
% Storetromme / Bass Drum (tidligere Drumkit / Perc)
drumPercBass = \drummode {
  R1*12 |
  \repeat percent 12 { \drumA }
  R1*2
  \repeat percent 4 { \drumB }
  \repeat percent 4 { \drumWild }
  \repeat percent 2 { \drumB }
  \repeat percent 3 { \drumWild }
  \drumWildRoll
  \repeat percent 8 { \drumWild }
  \repeat percent 2 { \drumB }
  \repeat percent 3 { \drumWild }
  \drumWildRoll
  \repeat percent 9 { \drumWild }
  \drumSolo \drumSolo
  \drumSoloEnd
  R1*3
  \repeat percent 2 { \drumA }
  \repeat percent 4 { \drumWild }
  \repeat percent 2 { \drumA }
  \repeat percent 4 { \drumWild }
  \repeat percent 4 { \drumWild }
  \repeat percent 2 { \drumWild }
  \drumSoloEnd
  \bar "|."
}

% ------------------------------------------------------------------
% 4. SAMLET PARTITUR
% ------------------------------------------------------------------
\score {
  <<
    \new ChordNames {
      \songChords
    }
    % Vokalstemme
    \new Staff = "vocalStaff" <<
      \set Staff.instrumentName = "Billie Joe (Vocals)"
      \set Staff.shortInstrumentName = "Voc."
      \context Staff <<
        \override Staff.BarLine.allow-span-bar = ##f
        \context Voice = "vocalVoice" {
          \vocalMelody
        }
      >>
    >>

    % Tekst koblet til vokalen
    \new Lyrics \lyricsto "vocalVoice" \verse

    % Samlet Trommesæt (DrumStaff) med Weinberg-notation
    \new DrumStaff = "drumKit" \with {
      instrumentName = "Trommesæt"
      shortInstrumentName = "Dr."
    } <<
      % Fødder: Storetromme (halse ned)
      \new DrumVoice = "feet" {
        \drumPercBass
      }
    >>
  >>
  \layout { }
}