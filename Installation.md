# Überblick #

(La)TeX erlaubt es, Dateien an verschiedenen Orten zu installieren. Das mag verwirrend sein, macht aber auf den zweiten Blick Sinn, wenn man weiß, dass eine Hierarchie vorgibt, in welcher Reihenfolge diese Verzeichnisse abgearbeitet werden.

Beim Kompilieren der TeX-Dateien werden fehlende Dateien nacheinander in dieser Folge gesucht:

  1. im selben Verzeichnis, wie die zu kompilierende TeX-Datei
  1. im privaten TeX-Baum
  1. im lokalen TeX-Baum
  1. im globalen TeX-Baum

Der Begriff "TeX-Baum" meint hier bestimmte Verzeichnisstrukturen, siehe dazu die [TeX UK FAQ](http://www.tex.ac.uk/cgi-bin/texfaq2html?label=tds). Im Folgenden soll die Installation an genannten Orten beschrieben werden.


## Temporäre Installation ##

Die einfachste Methode, die `uhb-inf-tex.cls` einzusetzen, ist das Kopieren dieser Datei in das Verzeichnis, in welchem auch die zu kompilierende TeX-Datei liegt.

Dies ist die einfachste Methode, bedarf aber ständiges Kopieren der Dokumentenklasse. Die Idee, die CLS-Datei einfach eine Verzeichnis-Ebene über den TeX-Dateien zu legen, und sie mit

```
\documentclass{../uhb-inf-tex}
```

einzubinden mag dieses Problem zwar zu beseitigen, allerdings wird LaTeX dann meckern, dass der Angegebene Klassenname `../uhb-inf-tex` nicht mit der Bezeichnung der Klasse selbst (eben `uhb-inf-tex`) übereinstimmt.


## Private Installation ##

(kommt noch)
  * http://www.tex.ac.uk/cgi-bin/texfaq2html?label=privinst
  * http://www.tex.ac.uk/cgi-bin/texfaq2html?label=install-where


## Lokale Installation ##

Für eine lokale Installation spricht nur, dass in einem Mehrbenutzersystem nicht jeder Benutzer selbst eine private Installation durchführen muss. Dafür werden allerdings administrative Rechte benötigt.

Analog zur privaten Installation, muss `kpsewhich` die Variable `$TEXMFLOCAL` expandieren:

```
kpsewhich -expand-var '\$TEXMFLOCAL'
```

Das Ergebnis (unter Ubuntu 9.04/texlive2008 `/usr/local/share/texmf` bestimmt nun die Wurzel des lokalen TeX-Baumes. Nachdem die Klasse entsprechend kopiert wurde, muss

```
texhash
```

mit Administrationsrechten ausgeführt werden. Fertig.


## Globale Installation ##

Von eine globalen Installation ist generell abzuraten, da man hier mehr kaputt machen kann, als dass es einen Zugewinn gibt. In meinen Augen ist die TeX-Installation selbst ein recht fragiles Ding, das man lieber nicht anfassen sollte ;-)