\version "2.24.0"

\header {
  title = "All I Want for Christmas Is You"
  composer = "Mariah Carey & Walter Afanasieff"
  tagline = "Arrangement for Vokal, Klokkespil, Bas (Tab) og Trommer"
}

global = {
  \key g \major
  \time 4/4
  \tempo 4 = 150
}

% 1. Akkorder øverst
chordsVerse = \chordmode {
  g1 g g g \break
  c1 c c:m c:m \break
  g1 g2. b4:7 e1:m e2.:m c4:m \break
  g1 e:7 a:m7 a:m7/d \break
  g1 e:m c d \break

}

chordsBridge = \chordmode {
  b1:7 b1:7 e1:m e1:m \break
  b1:7 b1:7 e1:m e1:m \break
  c1:m c1:m g1 e1:7 \break
  a1:m7 a1:m7 c1 c1 \break
}

chordsOutro = \chordmode {
  g1 e:m c d \break
}

chordsPart = \chordmode {
  \global
  r1 * 4 \break
  \chordsVerse
  \chordsVerse
  \chordsVerse
  \chordsBridge
  \chordsVerse
  \chordsOutro
}

% 2. Melodistemme
melody = \relative c'' {
  \global
  \clef treble
  r1 * 4
  g4 b d fis g fis e d %I don't want a lot for Christ -- mas
  a' g fis g fis g e2  %There is just one thing I need
  c4 e g a ais a g a   %I don't care a -- bout the pres -- ents
  c, dis g a ais a g2   %Un -- der -- neath the Christ -- mas tree
  g4 a fis g e fis dis2 %I just want you for my own
  b'4 a g fis e fis dis2%More than you could ever now
  d4 e g d' c1 %Make my wish come true
  b4 a g e dis a2' b4 g1 %All I want for christmas is you

  \bar "|."
}

% Tekst til melodistemmen
words = \lyricmode {
  I don't want a lot for Christ -- mas
  There is just one thing I need
  I don't care a -- bout the pres -- ents
  Un -- der -- neath the Christ -- mas tree
  I just want you for my own
  More than you could e -- ver now
  Make my wish come true
  All I want for christ -- mas is you
}

% 3. Klokkespil
glockenspiel = \relative c'' {
  \global
  \clef treble
  g4 b d fis g fis d b
  g c d g d2
  r1*28
  g4, r a r fis r g e
  r4 fis4 r4 eis4 r4
  g4, r a r fis r g e
  r4 fis4 r4 eis4 r4
}


sax = \relative c'' {
  \global
  \clef treble
  r1 * 4
  b1 b1 g1 g1
}
horn = \relative c'' {
  \global
  \clef treble
  r1 * 4

}


% 4. Bas Tablatur (4-strenget bas)
bassTab = \relative c, {
  \global
  \clef bass
  r1 * 4
  g4 g8 g r g g4 |
  e4 e8 e r e e4 |
  c4 c8 c r c c4 |
  d4 d8 d r d d4 |
  
  g4 g8 g r g g4 |
  e4 e8 e r e e4 |
  c4 c8 c r c c4 |
  d4 d8 d r d d4 |
  
  b4 b8 b r b b4 |
  e4 e8 e r e e4 |
  c4 c8 c r c c4 |
  c4 c8 c r c c4 |
  
  d4. d8 e4. e8 |
  a,4. a8 d4. d8 |
  g,1 |
}

% 5. Trommepartitur
drumPart = \drummode {
  \global
  r1 r1
  \repeat unfold 7 {
    hh4 hh8 hh hh4 hh8 hh |
    bd4 sn bd sn |
  }
  hh4 hh hh hh |
  bd1 |
}

% Samlet partitur-struktur
\score {
  <<
    \new ChordNames \with {
      \override ChordName.font-size = #1.5
    } \chordsPart
    
    \new Staff \with {
      instrumentName = "Vokal / Melodi"
      shortInstrumentName = "Mel."
    } {
      \new Voice = "mel" \melody
    }
    \new Lyrics \lyricsto "mel" \words
    
    \new Staff \with {
      instrumentName = "Bb-horn"
      shortInstrumentName = "Bb-h"
    } \horn

    \new Staff \with {
      instrumentName = "Eb Sax"
      shortInstrumentName = "Sax"
    } \sax

    \new Staff \with {
      instrumentName = "Klokkespil"
      shortInstrumentName = "Klk."
    } \glockenspiel
    
    \new TabStaff \with {
      stringTunings = #bass-tuning
      instrumentName = "Bas (Tab)"
      shortInstrumentName = "Bas"
    } \bassTab
    
    \new DrumStaff \with {
      instrumentName = "Trommer"
      shortInstrumentName = "Tr."
    } \drumPart
  >>
  
  \layout {
    \context {
      \Score
    }
  }
  \midi { }
}