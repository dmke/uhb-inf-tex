Es folgt nun etwas Quellcode\ldots

% Die code-Umgebung zeigt Haskell-Code mit Zeilennummern an.
\begin{code}
f :: Integer -> Integer -> Bool
f x y = x == (y - 1)
\end{code}

\subsection*{Unterabschnitte, hier entlang}
Nach ein paar Bemerkungen geht der Quellcode weiter\ldots

% Die Nummerierung einer vorherigen code-Umgebung wird fortgesetzt.
\begin{code}
-- Die Fakultaetsfunktion:
fac :: Int -> Int
fac n = if n == 0 then 1
        else n * (fac (n-1))
\end{code}

\subsection*{Tests}

% Die verbatim-Umgebung kann fuer ghci-Ausgaben verwendet werden.
\begin{verbatim}
Prelude> :load Aufgabe9.lhs
[1 of 1] Compiling Main             ( Aufgabe9.lhs, interpreted )
Ok, modules loaded: Main.
*Main> fac 0
1
*Main> fac 4
24
\end{verbatim}

\endinput
