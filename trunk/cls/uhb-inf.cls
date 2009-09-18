\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{uhb-inf}[2009/09/18 v1.2 Uni-Bremen Studiclass]

% Optionen abfangen.
\RequirePackage{ifthen}
\def\ifopt#1#2#3{\ifthenelse{\boolean{#1}}{#2}{#3}}
\def\opt@bool#1{
	\newboolean{#1}
	\setboolean{#1}{false}
	\DeclareOption{#1}{\setboolean{#1}{true}}
}
% inputenc
\opt@bool{utf}
\opt@bool{mac}
\opt@bool{win}
\opt@bool{unix}

% einige Variablen nicht anzeigen
\opt@bool{tutor-aus}
\opt@bool{gruppe-aus}
\opt@bool{abgabe-aus}
\opt@bool{semester-aus}
\opt@bool{beschreibung-aus}
\opt@bool{veranstaltung-aus}

% verschiedenes
\opt@bool{aufgabenblatt}
\opt@bool{palatino}
\opt@bool{times}
\ProcessOptions\relax

\LoadClass[10pt,a4paper,twoside]{article}

%%-------------------------------------------------------------------------------------------------
%% PAKETE

% inputenc
\ifopt{utf}{
	\RequirePackage[utf8]{inputenc}
}{
	\ifopt{unix}{
		\RequirePackage[latin1]{inputenc}
	}{
		\ifopt{mac}{
			\RequirePackage[applemac]{inputenc}
		}{
			\ifopt{win}{
				\RequirePackage[ansinew]{inputenc}
			}{
				\ClassWarningNoLine{fb3tex}{%
					Bitte daran denken, eine eigene Eingabe-Kodierung\space%
					zu definieren: \protect\usepackage[XYZ]{inputenc}%
				}
			}
		}
	}
}

% die ueblichen Verdaechtigen
\RequirePackage[ngerman]{babel}
\RequirePackage[T1]{fontenc}
\RequirePackage{graphicx,calc,amsmath,amssymb,textcomp,verbatim}

% wenn gewuenscht, schoene oder normale Fonts verwenden, ansonsten PDF moeglichst klein halten
\ifopt{palatino}{
	\RequirePackage[scaled]{beramono}% Bera Mono (monospace)
	\RequirePackage[sc]{mathpazo}% Palatino (serif)
}{
	\ifopt{times}{
		\RequirePackage{mathptmx,helvet,courier}% Times, Hevetica und Courier
	}{
		%\ClassWarningNoLine{fb3tex}{Das Verwenden normaler Fonts verhindert das Hervorheben von Quellcodes.}
		\RequirePackage{lmodern}% optisch mit Computer Modern identisch, aber besser
	}
}
% Inline-Typewriter-Font ein bisschen verkleinern und Silbentrennung aktivieren
\let\@uhb@ttfamily\ttfamily
\def\ttfamily{%
	\@uhb@ttfamily%
	\hyphenchar\font=`\-%
	\footnotesize%
}

% Basislayout aendern
\RequirePackage[top=25mm,bottom=25mm,inner=20mm,outer=40mm]{geometry}
\setlength\parskip{1ex}
\setlength\parindent{0pt}
\raggedbottom

% Kopf- und Fusszeilen einrichten. Sonderbehandlung auf der ersten Seite
\RequirePackage{fancyhdr}
\pagestyle{fancy}
\fancyhf{}
\fancyhead{
	\ifnum\value{page}>1%
		\small\sffamily\strut%
		\ifopt{veranstaltung-aus}{}{\@veranstaltungkurz}\hfill%
		\ifopt{semester-aus}{}{\@semester}\hfill
		\ifopt{gruppe-aus}{}{\textbf{Gruppe~\@gruppe}}\hfill%
		\ifopt{tutor-aus}{}{\@tutorhead}
	\fi
}
\fancyfoot[RO,LE]{\small\thepage}
\renewcommand\headrulewidth{\ifnum\value{page}>1 .01667em\else0pt\fi}
\renewcommand\footrulewidth{0pt}

% Listen enger packen
\RequirePackage{enumitem}
\setlist{itemsep=.25pt,leftmargin=30pt,topsep=.5ex}
\setlist[2]{leftmargin=*}% nested
\setdescription{leftmargin=10pt,style=nextline}

% Source code
\RequirePackage{listings}
\lstset{
	numbers=left,
	basicstyle=\footnotesize\ttfamily,
	numberstyle=\tiny\sffamily,
	tabsize=4,
	xleftmargin=30pt,
	breaklines=true
}
\lstnewenvironment{Java}[1][]{\lstset{language=Java,#1}}{}

%%-------------------------------------------------------------------------------------------------
%% BEFEHLE

\def\beschreibung#1{\title{#1}\gdef\@beschreibung{#1}}
\ifopt{aufgabenblatt}
	{\beschreibung{Aufgabenblatt}}
	{\beschreibung{\"Ubungszettel}}

% Semester und Tutor/Tutorin
\def\semester#1{\gdef\@semester{#1}}% WS09/10
\def\tutor#1{
	\gdef\@tutorhead{Tutor~#1}
	\gdef\@tutortitle{\textbf{Tutor} \> #1}
}
\def\tutorin#1{
	\gdef\@tutorhead{Tutorin~#1}
	\gdef\@tutortitle{\textbf{Tutorin} \> #1}
}

% Zettelnummer/Abgabedatum
\def\zettel#1#2{
	\gdef\@zettel{#1}
	\gdef\@abgabe{#2}
}
% Gruppennummer/Teilnehmer
\long\def\gruppe#1#2{
	\gdef\@gruppe{#1}
	\gdef\@teilnehmer{#2}
}
% VA-Kuerzel/Veranstaltung
\def\veranstaltung#1#2{
	\gdef\@veranstaltungkurz{#1}
	\gdef\@veranstaltung{#2}
}

% Defaultwerte vordefinieren
\semester{}
\tutor{}
\zettel{}{}
\gruppe{}{}
\veranstaltung{}{}

% Praesentation der Ueberschriften anpassen
\renewcommand\thesection{Aufgabe \arabic{section}}
\renewcommand\section{%
	\@startsection{section}{1}{0em}%
	{\baselineskip}{.5\baselineskip}{\Large\bfseries\sffamily}%
}
\renewcommand\thesubsection{(\arabic{section}.\alph{subsection})}
\renewcommand\subsection{%
	\@startsection{subsection}{2}{0em}%
	{\baselineskip}{.5\baselineskip}{\large\bfseries\sffamily}%
}
\renewcommand\thesubsubsection{(\arabic{section}.\alph{subsection}.\arabic{subsubsection})}
\renewcommand\subsubsection{%
	\@startsection{subsubsection}{3}{0em}%
	{\baselineskip}{.5\baselineskip}{\normalsize\bfseries\sffamily}%
}

\renewcommand\maketitle{
	\begin{minipage}{.6\linewidth}
		\ifopt{semester-aus}{}{\sffamily\@semester\\}
		\ifopt{veranstaltung-aus}{}{
			\begin{huge}
				\bfseries \@veranstaltung
				\vskip.5\baselineskip
			\end{huge}
		}
		\ifopt{beschreibung-aus}{}{
			\begin{large}
				\bfseries\@beschreibung~\@zettel
				\vskip.5\baselineskip
			\end{large}
		}
		\ifopt{abgabe-aus}{}{Abgabe: \@abgabe}
	\end{minipage}\hfill%
	\begin{minipage}{.4\linewidth}
		\sffamily
		\begin{tabbing}
			********** \= \kill
			\ifopt{tutor-aus}{}{\@tutortitle \\}
			\ifopt{gruppe-aus}{}{\textbf{Gruppe} \> \@gruppe \\[1ex]}
			\@teilnehmer
		\end{tabbing}
	\end{minipage}\par
	\rule{\linewidth}{.1em}
}
\AtBeginDocument{\maketitle}
