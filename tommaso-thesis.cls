\LoadClass{usiinfthesis}
%\LoadClass{revealthesis}
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{tommaso-thesis}

%\renewcommand*\sfdefault{classico}
%\usepackage[sfdefault]{classico}

\usepackage{xspace,ifthen}

\newcommand{\ie}{\textit{i.e.,}\xspace}
\newcommand{\eg}{\textit{e.g.,}\xspace}
\newcommand{\etc}{\textit{etc.}\xspace}
\newcommand{\etal}{\textit{et al.}\xspace}
\newcommand{\shr}{ShoreLine Reporter\xspace}
\newcommand{\chpref}[1]{Chapter~\ref{#1}\xspace}
\newcommand{\secref}[1]{Section~\ref{#1}\xspace}
\newcommand{\figref}[1]{Figure~\ref{#1}\xspace}
\newcommand{\tabref}[1]{Table~\ref{#1}\xspace}
\newcommand{\seeurl}[1]{\footnote{See \url{#1}}}


\newenvironment{framed}{\it}{}

%\renewcommand{\programDirector}{%
%}

\newboolean{showcomments}
\setboolean{showcomments}{true}
\ifthenelse{\boolean{showcomments}}
  {\newcommand{\nb}[2]{\fbox{\bfseries\sffamily\scriptsize#1}{\sf\small$\blacktriangleright$\textit{#2}$\blacktriangleleft$}}}
  {\newcommand{\nb}[2]{}}
\newcommand\TLN[1]{\nb{Michele}{#1}}
\newcommand\AM[1]{\nb{Andrea}{#1}}
\newcommand\TDS[1]{\nb{Tommaso}{#1}}
