# uhb-inf-tex

**ACHTUNG** Dieses Projekt wurde von Google Code importiert. An dem Code ist seit 2009 nichts mehr geändert worden.
Wer mag, kann dies gerne verwenden und erweitern, Pull Requests pflege ich bei Bedarf ein. Ich persönlich verwende
diese Dokumentklassen nicht (mehr). Die alte README folgt. **/ACHTUNG**

- - -

Diese (inoffizielle) LaTeX-Dokumentenklasse soll die Studenten der [Informatik](http://www.informatik.uni-bremen.de)
an der [Uni Bremen](http://www.uni-bremen.de) dabei unterstützen, sich auf die von den Dozenten gestellten Aufgaben
zu konzentrieren und weniger Zeit mit der Erstellung optisch ansprechender LaTeX-Dokumente zu "verschwenden".

Ich möchte mit dieser Klasse (und den zukünftig entstehenden Paketen) meine in den letzten zwei Jahren gesammelten
Erfahrungen mit LaTeX teilen. Zudem sollen die Dateien als Lehrstück für diejenigen geeignet sein, die sich tiefer
mit der Materie auseinander setzen wollen.

Vielleicht schafft es dieses Projekt sogar, soetwas wie die offizielle LaTeX-Klasse für die verschiedenen
angebotenen Kurse zu werden. Tatsächlich gibt es für die Kurse der *Praktischen Informatik* schon eine Klasse,
allerdings werden hier veraltete Typdefinitionen verwendet und der Stil der Klasse ist nicht wirklich konsistent
mit dem des [LaTeX Class Guides](http://www.latex-project.org/guides/clsguide.pdf).

Fragen dürfen gerne als [Issues](https://github.com/dmke/uhb-inf-tex/issues) gestellt werden. Und falls ihr
Änderungswünsche habt, meldet euch bei mir, damit ihr Schreibzugriffe auf das Versionskontrollsystem bekommt.

--Dominik

**Anmerkung:** Diese Klasse ist nicht darauf aus, den Ansprüchen der Typographie zu genügen, sondern eher die Zahl
der gedruckten Seiten zu reduzieren. Wer typographische Aspekte beachten möchte, darf sich gerne
[dieses](http://code.google.com/p/tufte-latex/) oder
[jenes](http://tug.ctan.org/tex-archive/macros/latex/contrib/memoir/memman.pdf) ansehen.

## Downloads

- **Aktuelle Version: 1.3b**
- **LaTeX-Klasse** https://github.com/dmke/uhb-inf-tex/raw/master/cls/uhb-inf.cls
- **Dokumentation** https://github.com/dmke/uhb-inf-tex/raw/master/doc/uhb-inf.pdf

## Aktuelles

- **24.08.2015:** Import von Google Code nach Github
- **09.11.2009,** Version 1.3b, Revision 17: Helvetica wurde zwar geladen aber nicht benutzt...
- **09.11.2009,** Version 1.3, Revision 15: Einen kleiner Anzeigefehler ausgemerzt (wenn die Optionen
  `tutor-aus` und `gruppe-aus` gesetzt sind, haben rücken die Teilnehmer seltsam ein) und bei Option
  `palatino` auch die Überschriften in Palatino setzen.
- **18.09.2009,** Version 1.2, Revision 13: Die [Issues](https://github.com/dmke/uhb-inf-tex/issues) sind
  gefixt, es gibt jetzt für die meisten Erstsemester-Kurse Pakete zum Einbinden (hervorzuheben ist hier
  eigentlich nur `pi3.cls`, welche Unterstützung für Haskell bietet) und die Dokumentation wurde wieder
  aktualisiert.
- **16.09.2009:** Eine Beamer-Präsentationsvorlage gibt es [bereits](http://www.math.uni-bremen.de/~dlorenz/docs/beamerZeTeMdoc.pdf).
- **15.09.2009:** Habe soeben Version 1.1 (SVN Revision 10) hochgeladen und die Downloadlinks angepasst
- Minimalbeispiele finden sich [hier](https://github.com/dmke/uhb-inf-tex/tree/master/doc/minimalbeispiele)


## Weitere Entwicklung

Wie in der [Dokumentation](https://github.com/dmke/uhb-inf-tex/blob/master/doc/uhb-inf.tex) beschrieben, gibt
es hier und da noch einige Möglichkeiten zum Ausbau:

- weibliche Form von "Tutor" ermöglichen
- Haskell und Haskell-Literat als Quellcode einbinden → PI3-Vorlage angesehen. Wird stückweise implementiert
- Pakete für verschiedene Kurse anlegen (siehe Beispiel für [*Praktische Informatik 1*](https://github.com/dmke/uhb-inf-tex/blob/master/sty/pi1.sty)
- Präsentationsvorlage auf Basis der [Beamer-Klasse](http://latex-beamer.sf.net) erstellen → unter
  http://www.math.uni-bremen.de/~dlorenz/docs/beamerZeTeMdoc.pdf gibt es bereits etwas gescheites
