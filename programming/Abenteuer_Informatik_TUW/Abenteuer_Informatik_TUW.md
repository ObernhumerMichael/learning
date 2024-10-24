---
title: "Abenteuer Informatik TUW"
subtitle: "A notebook and summary"
author: [Michael Obernhumer]
date: \the\day.\the\month.\the\year
titlepage: true
titlepage-background: "../../template/background10.pdf"
footnotes-pretty: true
...

<!--toc:start-->

- [1. Sag mir wohin](#1-sag-mir-wohin)
  - [Der Dijkstra-Algorithus](#der-dijkstra-algorithus)
  - [Was steck dahinter](#was-steck-dahinter)
    - [Runtime](#runtime)
    - [Komplexität](#komplexität)
  - [Das ist Informatik: Probleme lösen](#das-ist-informatik-probleme-lösen)
    - [Lösungsschemen](#lösungsschemen)
    - [Anwendung](#anwendung)
- [Notizen](#notizen)
<!--toc:end-->

# 1. Sag mir wohin

## Der Dijkstra-Algorithmus

**Dijkstra-Algorithmus als Blockdiagramm:**

![dijkstra-als-blockdiagramm](./img/1_sag_mir_wohin/dijkstra-als-blockdiagramm.png)

**Fertige Landkarte nach Durchlauf des Dijkstra-Algorithmus (I $\rightarrow$ O):**

![fertige-landkarte-nach-dijkstra](./img/1_sag_mir_wohin/fertige-landkarte-nach-dijkstra.png)

## Was steck dahinter

Man unterscheidet ungerichtete Graphen, also solche, bei denen die Verbindung zweier Knoten in beide Richtungen geht (ohne Pfeil), und gerichtete Graphen (mit Pfeil).

**Verwendung:**

- Landkarte bzw. der Stadtplan
- Produktionspläne
- Mathematische Gleichungen

![Graph](./img/1_sag_mir_wohin/graph.png)
![5 + (11 ∙ 3) = 38](./img/1_sag_mir_wohin/mathematische-gleichung.png)

### Runtime

Wenn man versuchen würde den kürzesten Weg durch den Graphen zu Brutforcen würde die Dauer exponentiell ansteigen:
$(n - 1) * (n - 1)!$

Optimal wäre ein linearer Aufwand.
Das bedeutet, dass zur Lösung eines Problems der Größe $n$ der Aufwand $x * n$ beträgt (mit konstantem $x$).
Leider gibt es kaum Algorithmen, die so gut sind.

**Aufwand von Dijkstra:**\
Vom Startknoten aus werden alle benachbarten Knoten (also die, zu denen eine Verbindung besteht) betrachtet.
Bei einem vollständigen Graphen mit $n$ Knoten sind das $(n - 1)$.

Nun wird der Knoten mit der kleinsten Markierung gesucht und von dort geht es wiederum zu allen benachbarten Knoten - das sind $(n - 2)$

Dies setzt sich fort.
Daher ist der Aufwand für den Dijkstra-Algorithmus:
$(n-1) + (n-2) + (n-3) + ... + (1)$

### Komplexität

Die Komplexität gibt an, wie stark die Rechenzeit in Relation zur Problemgröße anwächst.
Im Falle von Brute-Force ist die Komplexität $n^n$, während Dijkstra eine Komplexität von $n^2$ aufweist.

Alles, was sich in polynomieller Laufzeit lösen lässt, gehört zur Klasse „P“.
Das bedeutet, die Laufzeit steigt im Verhältnis zur Problemgröße in einem Verhältnis an, das sich durch ein Polynom ausdrücken lässt.
(z.B.: $n^2$, $n^4+ n^2+ n$, $n*log(n)$ oder auch $n^{100}$)

Darüber hinaus gibt es die Klasse der „**N**icht **P**raktisch berechenbaren“ Probleme oder
„NP“.
Diese haben eine Laufzeit, die sich nicht durch ein Polynom ausdrücken lässt.
Dies bedeutet, dass in der Komplexitätsfunktion die Problemgröße irgendwo in einem Exponenten auftaucht.

NP-Komplexitäten sind $2^n$, $n!$ oder $n^n$.

## Das ist Informatik: Probleme lösen

### Lösungsschemen

Allgemeines Problemlöseschema:

![Allgemeines Problemlöseschema](./img/1_sag_mir_wohin/problem-loesungs-schaema.png)

Struktogramm:

![Struktogramm für die Brute-Force-Methode, den kürzesten Weg zu finden](./img/1_sag_mir_wohin/stuktogramm-brute-force.png)

### Anwendung

Dijkstra nutzt recht uneingeschränkt die Breitensuche und erkundet den Graphen daher ohne Bevorzugung einer Richtung.

![](./img/1_sag_mir_wohin/kreise-landkarte.png)

Ein gedachtes Rechteck um Start und Ziel grenzt die Suche ein, indem nun alle Orte außerhalb des Rechtecks nicht mehr in das Verfahren einbezogen werden.

![](./img/1_sag_mir_wohin/bounding-box.png)

Die Methode der Bounding-Box könnte dazu führen, die beste Strecke gar nicht zu finden:
Woher wissen wir, dass es nicht günstiger ist, ein paar Kilometer in Gegenrichtung zu fahren,
um dann eine schnurgerade Autobahn zu erreichen, auf der man den Umweg leicht wieder hereinholt?

Besser ist, zwar den Fokus der Suche in Richtung des Ziels zu lenken, aber trotzdem noch alle Optionen offenzuhalten.
Wir könnten daher viel leicht die Länge der direkten Strecke zum Ziel (Luftlinie) als eine Art „Lustfaktor“ in den Algorithmus einbeziehen:
Je kürzer die Luftlinie, desto williger steuern wir einen Ort an, werden aber die anderen Orte auch nicht ignorieren.

Neben den tatsächlich ermittelten Strecken zu den Orten vom Start aus,
können wir auch die Summe (violett) aus tatsächlicher Strecke vom Start (rot) und minimaler Strecke zum Ziel (blau) ermittelten.
Das ist gleichzeitig eine minimale Strecke zum Ziel bei Nutzung des Ortes als Teilziel.

![](./img/1_sag_mir_wohin/dijkstra-mit-luftlinie.png)

Hier wird auch ein ganz wesentlicher Vorteil der sehr allgemeinen, abstrakten Beschreibung eines Algorithmus deutlich.
Verbesserungen und Veränderungen sind so meistens nur sehr geringfügig.
Es wird sofort offensichtlich, an welchen Stellen die Programmierer auch die Implementierung überarbeiten müssen.

![](./img/1_sag_mir_wohin/modellbildung.png)

![A-Stern-Algorithmus-als-Blockcode](./img/1_sag_mir_wohin/a-stern-algo.png)

# Notizen

Lesezeichen: S.42 Buch / 53 Digital
