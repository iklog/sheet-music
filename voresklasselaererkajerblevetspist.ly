\version "2.26.0"

\header {
  title = "Vores klasselærer, Kaj, er blevet spist"
  composer = "Thorstein Thomsen"
}

% Akkorderne defineres her i \chordmode
 chordMusic = \chordmode {
  s1          | % 1. takt: Pause under optakten
  d1:m        | % 2. takt: D-mol
  a1:7        | % 3. takt: A7
  d2:m c2      | % 4. takt: D-mol F
  f1          | % 5. takt: F-dur
  g2:m c2:7   | % 6. takt: G-mol og C7
  f2 d2:m          | % 7. takt: F-dur
  g2:m a2:7   | % 8. takt: A7 og D-mol
  d1:m   | % 9.-10. takt: A7 til D-mol slut
}

\score {
  <<
    % Viser akkordnavnene over nodesystemet
    \new ChordNames {
      \chordMusic
    }

    % Nodesystemet med melodien
    \new Staff \relative f' {
      \key f \major
      \time 4/4
      \tempo \markup {
        Swing
        \hspace #0.4
        \rhythm { 8[ 8] } = \rhythm { \tuplet 3/2 { 4 8 } }
      }
      r2. d8 e |
      f f f f f f e d |
      cis4. r4. d8 e |
      f f f f g g f g |
      a4. r4. g8 a |
      bes bes bes bes g e f g |
      a a a a f d e f |
      g g g e cis d e cis |
      d1 \bar "|."
    }

    % Sangtekst tilføjet under nodelinjen
    \addlyrics {
      Vo -- res klas -- se -- læ -- rer, Kaj, er ble -- vet spist.
      Vi ved ik -- ke no -- get om det helt præ -- cist.
      Men det lan -- ge af det kor -- te
      er, at han er ble -- vet bor -- te.
      Det er sør -- ge -- ligt, i hvert fald for -- holds -- vist.
    }
  >>

  \layout {}
  \midi {}
}

% Vers 2-5 opstillet i spalter under nodearket
\markup {
  \fill-line {
    ""
    \column {
      \line { \bold "2." \column {
        "Vores klasselærer, Kaj, er blevet væk."
        "Sidste gang man så ham, klippede han hæk."
        "En har hørt hans stige knække."
        "Hvad der skete ved man ikke."
        "Men man fandt hans højre fortand i en sæk."
      }}
      \combine \null \vspace #1
      \line { \bold "3." \column {
        "Politiet mangler selv det mindste spor."
        "Vi vil gerne hjælpe dem. På æresord."
        "Men vi ved kun det er givet,"
        "at han åbenbart er blevet"
        "spist med kniv og gaffel på et spisebord."
      }}
    }
    ""
    \column {
      \line { \bold "4." \column {
        "Det er afgjort ikke no'et at grine af."
        "Kaj er blevet væk og borte fra i dag."
        "Det er tragisk. Aldrig mere"
        "skal vi se ham eksplodere"
        "eller spytte efter os med ubehag."
      }}
      \combine \null \vspace #1
      \line { \bold "5." \column {
        "Vores klasselærer, Kaj, blev spist i går."
        "Nogle mener, at han smagte som et får."
        "Det er ganske eftertrykk'ligt"
        "overordenligt uhygg'ligt."
        "Hvem har spist ham (bøvs) og hvorfor og hvornår?"
      }}
    }
    ""
  }
}