Hier wird die \texttt{code}-Umgebung benutzt; die folgenden Zeilen
werden direkt geladen (und damit die Konstante \lstinline"otto"
definiert), wenn die \LaTeX-Quelldatei in \texttt{hugs} oder
\texttt{ghci} geladen wird:

\begin{code}
otto :: Int
otto = 1 `div` 0
\end{code}

