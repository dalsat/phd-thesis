% \PassOptionsToPackage{square,sort,comma,numbers}{natbib}
% \LoadClass{usiinfthesis}
\LoadClass{revealthesis}
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{tommaso-thesis}

%\renewcommand*\sfdefault{classico}
%\usepackage[sfdefault]{classico}

% \usepackage{xspace,ifthen}
\RequirePackage{xspace}
\RequirePackage{url}
\RequirePackage{ifthen}
\RequirePackage{microtype}
\RequirePackage[table]{xcolor}


% \renewcommand{\familydefault}{uop}
% \renewcommand{\familydefault}{cmr}
% \renewcommand{\sfdefault}{phv}
% \renewcommand{\scshape}{%
% 	\not@math@alphabet\scshape\relax
% 	\ifthenelse{\equal{\f@family}{cmr}}%
% 	{\fontshape{sc}\selectfont}%
% 	{\fontshape{fsc}\selectfont}%
% }



% \renewcommand{\familydefault}{cmr}
% \renewcommand{\sfdefault}{uop}
% \renewcommand{\scshape}{%
% \not@math@alphabet\scshape\relax
% \ifthenelse{\equal{\f@family}{uop}}%
% {\fontshape{sc}\selectfont}%
% {\fontshape{fsc}\selectfont}%
% }
% \usepackage{fontspec}
% \setmainfont{Roboto Slab Light}

\newcommand{\ie}{\textit{i.e.,}\xspace}
\newcommand{\eg}{\textit{e.g.,}\xspace}
\newcommand{\etc}{\textit{etc.}\xspace}
\newcommand{\etal}{\textit{et al.}\xspace}
\newcommand{\chref}[1]{Chapter~\ref{#1}\xspace}
\newcommand{\secref}[1]{Section~\ref{#1}\xspace}
\newcommand{\figref}[1]{Figure~\ref{#1}\xspace}
\newcommand{\tabref}[1]{Table~\ref{#1}\xspace}

\newcommand{\mypar}[1]{\paragraph{\textbf{#1.}}}
\newcommand{\structure}{\subsubsection*{Structure of the Chapter}}

\newcommand{\seeurl}[1]{\footnote{\url{#1}}}


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


%%% Colors %%%
%% model
\definecolor{gray50}{gray}{.5}
\definecolor{gray40}{gray}{.6}
\definecolor{gray30}{gray}{.7}
\definecolor{gray20}{gray}{.8}
\definecolor{gray10}{gray}{.9}
\definecolor{gray05}{gray}{.95}

%% gamification
\definecolor{oceanboatblue}{rgb}{0.0, 0.47, 0.75}
\definecolor{red-brown}{rgb}{0.65, 0.16, 0.16}
\definecolor{citrine}{RGB}{249, 214, 157}
\definecolor{tanzanite}{RGB}{203, 205, 222}
\definecolor{quartz}{RGB}{231, 206, 218}
\definecolor{jade}{RGB}{178, 223, 178}
\definecolor{topaz}{RGB}{173, 214, 244}
\definecolor{amethyst}{RGB}{230, 169, 252}
\definecolor{ruby}{RGB}{250, 142, 169}
\definecolor{emerald}{RGB}{157, 216, 191}
\definecolor{aquamarine}{RGB}{176, 215, 228}
\definecolor{sapphire}{RGB}{35, 23, 197}
\definecolor{gold}{rgb}{1.0, 0.84, 0.0}


%%% Macros %%%
\newcommand{\tool}[1]{\textsc{#1}\xspace}

\newcommand{\bzilla}{\tool{Bugzilla}}
\newcommand{\jira}{\tool{JIRA}}
\newcommand{\gth}{\tool{GitHub}}
\newcommand{\fbz}{\tool{FogBugz}}
\newcommand{\ib}{\tool{In*Bug}}
\newcommand{\sln}{\tool{ShoreLine}}
\newcommand{\slr}{\tool{ShoreLine Reporter}}
\newcommand{\bea}{\tool{Beacon}}
\newcommand{\dfl}{\tool{DFlow}}
\newcommand{\pha}{\tool{Pharo}}
\newcommand{\sea}{\tool{Seaside}}

\newcommand{\entity}[1]{\textsc{#1}\xspace}
\newcommand{\method}[1]{\textit{#1}\xspace}

\newcommand{\buildingblock}[2]{
    \begin{wrapfigure}{l}{0.10\linewidth}
    	\vspace{-15pt}
    	\begin{center}
    	\includegraphics[width=\linewidth]{gamification/#2}
    	\end{center}
    	\vspace{-15pt}
    \end{wrapfigure}

    \noindent\textbf{#1:}
}

\newcommand{\badge}[1]{
\noindent
\begin{wrapfigure}{l}{0.07\textwidth}
  \vspace{-18pt}
  % \vspace{-2.5em}
  \begin{center}
    \includegraphics[width=0.06\textwidth]{gamification/#1.pdf}
  \end{center}
  \vspace{-20pt}
\end{wrapfigure}
}


%%% Model %%%
\newcommand{\keywords}[1]{\par\addvspace\baselineskip
\noindent\keywordname\enspace\ignorespaces#1}


\newlength\Linewidth
\def\findlength{\setlength\Linewidth\linewidth
\addtolength\Linewidth{-4\fboxrule}
\addtolength\Linewidth{-3\fboxsep}
}
\newenvironment{examplebox}{\par\begingroup
   \setlength{\fboxsep}{5pt}\findlength
   \setbox0=\vbox\bgroup\noindent
   \hsize=0.95\linewidth
   \begin{minipage}{0.95\linewidth}\normalsize}
    {\end{minipage}\egroup
%    \vspace{6pt}
    \textcolor{gray20}{\fboxsep1.5pt\fbox
     {\fboxsep5pt\colorbox{gray05}{\normalcolor\box0}}}
%    \endgroup\par\addvspace{6pt minus 3pt}\noindent
    \endgroup\par\noindent
    \normalcolor\ignorespacesafterend}
\let\Examplebox\examplebox
\let\endExamplebox\endexamplebox




\RequirePackage{contour}
%%% Chapter

\contourlength{3pt} %how thick each copy is
\contournumber{20}  %number of copies

\titleformat{\chapter}[display]
{\fontsize{126}{63}\sffamily\bfseries\color{white}}%chapterNumberColor}}
{\raggedleft\contour{chapterNumberColor}{\thechapter}}
{0pt}
{\color{chapterColor}%
\titlerule[1.5pt]%[0.5pt]%
\vspace{1pc}\raggedright\fontsize{22}{24}\sffamily}%\fontsize{20}{24}\sffamily}


\newcommand{\coolchapter}[3]{\chapter[#1\ifx#2\empty\else: #2\fi]%
{#1\ifx#2\empty\else\\{\Large#2}\fi}\label{#3}}
