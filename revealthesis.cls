%!TEX root = tommaso-thesis.tex
%
% -----------------------------------------------------------------------------
% LaTeX class for the doctoral dissertation at the Faculty of
% Informatics of University of Lugano
% 
% Domenico Bianculli <domenico.bianculli@lu.unisi.ch>
% Jochen Wuttke <wuttkej@lu.unisi.ch>
%
% Last modified October, 2016 by
% Roberto Minelli <roberto.minelli@usi.ch>
% Luca Ponzanelli <luca.ponzanelli@usi.ch>
%
% -----------------------------------------------------------------------------
%%
%% This file is 'USIINFthesis.cls'
%% 
%% It may be distributed and/or modified under the
%% conditions of the LaTeX Project Public License, either version 1.3c
%% of this license or (at your option) any later version.
%% The latest version of this license is in
%%    http://www.latex-project.org/lppl.txt
%% and version 1.3c or later is part of all distributions of LaTeX
%% version 2005/12/01 or later.

%%% identification
\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesClass{usiinfthesis}[2009/09/30 v. 1.0.8 %
USI Informatics Doctoral Dissertation class]
%%% initial code
\RequirePackage{ifthen}
%%% true to enable automatic loading of hyperref package
\newboolean{@hypermode}
%%% true if a subtitle is provided
\newboolean{@subtitle}
%%% true if a coadvisor is provided
\newboolean{@coadvisor}
%%% true if a dedication is provided
\newboolean{@dedication}
%%% true if an epigraph is provided
\newboolean{@epigraph}
%%% true to insert a copyright notice
\newboolean{@crn}
%%% true if the document is a master thesis
\newboolean{@mscthesis}
% true if a master specialization is provided
\newboolean{@mscspec}

%%% enable/disable hyperref
\DeclareOption{hyper}{\setboolean{@hypermode}{true}}
\DeclareOption{nohyper}{\setboolean{@hypermode}{false}}
% Produces a copyright notice. Enable if PhD program director likes it.
\DeclareOption{crn}{\setboolean{@crn}{true}}
%%%
\DeclareOption{a5paper}{\OptionNotUsed}
\DeclareOption{letterpaper}{\OptionNotUsed}
\DeclareOption{b5paper}{\OptionNotUsed}
\DeclareOption{legalpaper}{\OptionNotUsed}
\DeclareOption{executivepaper}{\OptionNotUsed}
\DeclareOption{landscape}{\OptionNotUsed}
\DeclareOption{openany}{\OptionNotUsed}
\DeclareOption{twocolumn}{\OptionNotUsed}
\DeclareOption{oneside}{\OptionNotUsed}
\DeclareOption{twoside}{\OptionNotUsed}
%%% enable settings for a master thesis
\DeclareOption{mscthesis}{\setboolean{@mscthesis}{true}}

%%%
\DeclareOption*{% 
	\PassOptionsToClass{\CurrentOption}{book}% 
} 
%%% execution of options
\ExecuteOptions{hyper}
\ProcessOptions \relax
\typeout{*** Please report bugs, comments, suggestions, and improvements
to: }
\typeout{*** Domenico Bianculli <domenico.bianculli@lu.unisi.ch>}
\typeout{*** Jochen Wuttke <wuttkej@lu.unisi.ch>}
%%% package loading
\LoadClass[a4paper,11pt,twoside,onecolumn,final,openright,titlepage]{book}
%%% main code


%font settings
\RequirePackage[T1]{fontenc}
\RequirePackage[charter]{mathdesign}
\RequirePackage[scaled]{beramono}
\RequirePackage[utf8]{inputenc}

\renewcommand{\familydefault}{cmr}
\renewcommand{\sfdefault}{phv}
\renewcommand{\scshape}{%
	\not@math@alphabet\scshape\relax
	\ifthenelse{\equal{\f@family}{cmr}}%
	{\fontshape{sc}\selectfont}%
	{\fontshape{fsc}\selectfont}%
}


%color settings
\usepackage[table]{xcolor}
\RequirePackage{xcolor}
\definecolor{headerColor}{HTML}{666666}
\definecolor{footerColor}{HTML}{666666}

\definecolor{usiColor}{HTML}{F58025}
\definecolor{usiInfColor}{HTML}{FFE674}

\definecolor{partBackground}{HTML}{F58025}
\definecolor{partColor}{HTML}{FFFFFF}
\definecolor{partNumberColor}{HTML}{F58630}
\definecolor{partTitleColor}{HTML}{000000}

\definecolor{chapterNumberColor}{HTML}{F58025}
\definecolor{chapterColor}{HTML}{000000}
\definecolor{sectionColor}{HTML}{000000}

%sans-serif titles
\RequirePackage{sectsty}
\RequirePackage{anyfontsize}
\RequirePackage{titlesec}

%%% PART %%%%
\RequirePackage{tikz}
\usetikzlibrary{shapes.geometric,backgrounds,fit}
    
\titleformat
{\part}	% command
[display] % shape
{\fontsize{52}{63}\sffamily} % format
{
	\thispagestyle{empty}
	\tikz{
		\begin{pgfinterruptboundingbox}
			\fill[usiColor] (-3.5,-19) rectangle (3.38,14);
			\draw[partNumberColor](3.38,-3.10) -- (15.8,-3.10);
			\draw[white] (0,-3.10) -- (3.38,-3.10);
		\end{pgfinterruptboundingbox}
	}
	\begin{flushleft}\bfseries\color{partColor}\partname~\color{partNumberColor}\thepart\end{flushleft}} % label
{0pt} % sep
{\fontsize{19}{23}\raggedleft\sffamily\color{partTitleColor}\vspace{-65pt}\begin{minipage}[t]{8cm}\begin{flushright}} % before-code
[\end{flushright}\end{minipage}] % after-code

\titlespacing*{\part}{0pt}{0.17\paperheight}{20pt}

%%% CHAPTER %%%%
\titleformat{\chapter}[display]
{\fontsize{126}{63}\sffamily\bfseries\color{chapterNumberColor}}
{\raggedleft\thechapter}
{0pt}
{\color{chapterColor}\titlerule[0.5pt]\vspace{1pc}\raggedright\fontsize{20}{24}\sffamily}

\titlespacing*{\chapter}{0pt}{0pt}{40pt}

\allsectionsfont{\sffamily\color{sectionColor}}

%geometry
\RequirePackage[a4paper]{geometry}

\geometry{	top=35mm,%
	bottom=32mm,%
	left=25mm,%
	right=25mm}

%%% fancy headers
\RequirePackage{fancyhdr}
\setlength{\headheight}{15pt}
\fancypagestyle{cover}{%
	\fancyhf{}
	\fancyhead{\mbox{ }}
}
\fancypagestyle{hrulefpage}{%
	\fancyhf{}
	\fancyhead{\mbox{ }}
	\fancyfoot[C]{\color{footerColor}{\sf \thepage}}
}
\fancypagestyle{footeronly}{%
	\renewcommand{\headrulewidth}{0.25pt}
	\renewcommand{\footrulewidth}{0pt}
	\renewcommand{\headrule}{\color{footerColor}\hrule height \headrulewidth\hfill}
	\fancyhf{}
	\fancyhead{}
	\fancyfoot[C]{\color{footerColor}{\sf \thepage}}
}
%modifying captions
\RequirePackage[font=sf,labelsep=period]{caption}


%%% additional titlepage content commands
\newcommand{\subtitle}[1]{\gdef\@subtitle{#1}\setboolean{@subtitle}{true}}


\newcommand{\advisor}[1]{\gdef\@advisor{#1}}
\newcommand{\@advisor}{\@latex@error{No \noexpand\advisor given}\@ehc}

\newcommand{\Month}[1]{\gdef\@month{#1}}
\newcommand{\Year}[1]{\gdef\@year{#1}}
\newcommand{\@year}{\@latex@error{No submission year with command \noexpand\Year given}\@ehc}

\newcommand{\coadvisor}[1]{\gdef\@coadvisor{#1}\setboolean{@coadvisor}{true}}

\newcommand{\specialization}[1]{\gdef\@specialization{#1}\setboolean{@mscspec}{true}}

\RequirePackage{setspace}


%%% title page
\renewcommand{\maketitle}{
	\pagenumbering{Alph}%
	\begin{titlepage}%
		\pagestyle{empty}
		    	
		\tikz{
			\begin{pgfinterruptboundingbox}
				    			  
				% Rectangle left
				\fill[usiColor] (-4.1,-30) rectangle (3.5,14);
				    			
				% Rectangle title 
				\fill[usiColor] (3.49,-6.5) rectangle (20,0.243);
				    			 
				\node[inner sep=0pt, anchor=north east] (usi) at (3.529,0.25)
				{\includegraphics[height=6.743cm]{logo-usi-center}};
				    			
				\node[inner sep=0pt] (logo_bottom) at (0.1,-23.5)
				{\includegraphics[width=165pt]{logo-white}};
				    			    
			\end{pgfinterruptboundingbox}
		}
		    	
		% If subtitle is defined, create 2 different \mbox (and minipage), otherwise only one for the title
		\ifthenelse{\boolean{@subtitle}}{
			\hspace{4.35cm}
			\mbox{
				\begin{minipage}[c][2.8cm]{12cm}
					\setstretch{1.5}{\par\color{white}\huge\bf\sffamily\@title}
				\end{minipage}
			} %mbox
			    			
			\hspace{4.35cm}
			\mbox{
				\begin{minipage}[t][1.7cm]{12cm}
					\setstretch{1}{\par\color{white}\Large\sffamily\@subtitle}
				\end{minipage}
			} %mbox
			    		    
			\hspace{4.35cm}
			\mbox{
				\begin{minipage}[c][1cm]{12cm}
					\setstretch{1}{\par\color{white}\huge\bf\sffamily\@author}
				\end{minipage}
			} %mbox
			}{
			\hspace{4.35cm}
			\mbox{
				\begin{minipage}[c][2.8cm]{12cm}
					\setstretch{1.5}{\par\color{white}\huge\bf\sffamily\@title}
				\end{minipage}
			} %mbox
			    			
			\hspace{4.35cm}
			\mbox{
				\begin{minipage}[t][1.7cm]{12cm}
					% Write nothing inside here
				\end{minipage}
			} %mbox
			    		    
			\hspace{4.35cm}
			\mbox{
				\begin{minipage}[c][1cm]{12cm}
					\setstretch{1}{\par\color{white}\huge\bf\sffamily\@author}
				\end{minipage}
			} %mbox
		}%% END ELSE-IF
		    	
		\vfill
		    	
		\hspace{4.35cm}
		\mbox{
			\begin{minipage}[c][12.5cm]{12cm}
				\large
				\sffamily
				\setstretch{1.5}{
					\ifthenelse{\boolean{@mscthesis}}{Master's Thesis}{Doctoral
					Dissertation}
					{submitted to the}\\
					{\bfseries Faculty of Informatics of the Universit\`a della Svizzera italiana}\\
					{in partial fulfillment of the requirements for the degree of }\\
					\ifthenelse{\boolean{@mscthesis}}{%
						Master of Science in Informatics%
						\ifthenelse{\boolean{@mscspec}}{\\[2mm] \@specialization\\[16mm]}{\\[32mm]}}
					{Doctor of Philosophy \\[32mm]}
					    				    
					{Supervised by}\\
					{\large {\sffamily\@advisor}}
					\ifthenelse{\boolean{@coadvisor}}{
						{\\[6mm]Co-supervised by}\\
						{\large\sffamily\@coadvisor}}{}
				}
			\end{minipage}%
		}
	\end{titlepage}%
\setcounter{footnote}{0}%
} %%% end titlepage
				
\renewenvironment{titlepage}
{%
	\cleardoublepage
	\setcounter{page}\z@
}%
{\newpage }

%%% frontmatter may include an epigraph
\RequirePackage{epigraph}
\setlength{\epigraphrule}{0pt}
				
%% additional frontmatter content commands
				
\newcommand{\programDirectorA}[1]{\gdef\@progdirA{#1}}
\newcommand{\programDirectorB}[1]{\gdef\@progdirB{#1}}
\newcommand{\@progdirA}{\@latex@error{No \noexpand\programDirectorA given}\@ehc}
\newcommand{\@progdirB}{\@latex@error{No \noexpand\programDirectorB given}\@ehc}

\newcommand{\committee}[1]{\gdef\@committee{%
	\begin{tabular}{ll}\\%
		#1
	\end{tabular}\\}}

\newcommand{\committeeMember}[2]{\bf #1 & #2\\}
\newcommand{\dedication}[1]{\gdef\@dedication{#1}\setboolean{@dedication}{true}}
\newcommand{\openepigraph}[2]{\gdef\@openepigraph{\epigraph{#1}{#2}}\setboolean{@epigraph}{true}}
\newcommand\Day[1]{\gdef\@dateaccepted{#1}}
\newcommand{\@dateaccepted}{\@latex@error{No \noexpand\day given}\@ehc}
\newcommand{\place}[1]{\gdef\@place{#1}}
\newcommand{\@place}{\@latex@error{No \noexpand\place given}\@ehc}
\newcommand{\@crnotice}{\vfill  \noindent Copyright \copyright\ \@year\ by \@author \\ All rights reserved. }
\newcommand{\@authdecl}{%
	I certify that except where due acknowledgement has been given, the
	work presented in this thesis is that of the author alone; the work
	has not been submitted previously, in whole or in part, to qualify for
	any other academic award; and the content of the thesis is the result
	of work which has been carried out since the official commencement
	date of the approved research program.\\[18mm]
					
	\hfill 
	\begin{minipage}{6cm}

		\rule{6cm}{0.2mm}

		\@author

		\@place, \@dateaccepted\ \@month\ \@year
										
	\end{minipage}
	
	\clearpage
}
								
								
\renewcommand\frontmatter{%
	\@mainmatterfalse
	\pagenumbering{Roman}
	\clearpage
										    
	\thispagestyle{empty}
										    
	\mbox{ }
										
	\ifthenelse{\boolean{@crn}}{\@crnotice}{}
	\clearpage
	\pagestyle{empty}
	\pagenumbering{roman}
	\setcounter{page}{1}
	\pagestyle{hrulefpage}
	\ifthenelse{\boolean{@mscthesis}}{}{%
		\begin{center}
    		\vspace{1cm}
    		\noindent {\large {\bf \sffamily Dissertation Committee}}\\[2mm]
    		\vspace{12mm}
    		\@committee
    		\vfill
    		\vfill
    		\noindent {Dissertation accepted on \@dateaccepted\ \@month\ \@year}\\[18mm]
    		\vfill
    														
    		\begin{tabular}{cc}
    			\if@coadvisor
    				\rule{0.45\textwidth}{0.2mm} & \rule{0.45\textwidth}{0.2mm} \\
    				Research Advisor             & Co-Advisor                   \\\addlinespace
    				\bf \@advisor                & \bf \@coadvisor              \\\addlinespace
    			\else
    				\multicolumn{2}{c}{\rule{0.45\textwidth}{0.2mm}}\\
    				\multicolumn{2}{c}{Research Advisor}\\
    				\multicolumn{2}{c}{\bf \@advisor} \\
    			\fi
    			& \\\addlinespace
    			& \\\addlinespace
    			\rule{0.45\textwidth}{0.2mm} & \rule{0.45\textwidth}{0.2mm} \\
    			Ph.D. Program Co-Director    & Ph.D. Program Co-Director    \\\addlinespace
    			\bf \@progdirA               & \bf \@progdirB               \\\addlinespace
    		\end{tabular}
    		\vfill
		\end{center}
												
		\clearpage
	}
	\@authdecl
	\ifthenelse{\boolean{@mscthesis}}{\thispagestyle{empty}\cleardoublepage}{}
	
	\pagestyle{footeronly}
	
	\ifthenelse{\boolean{@dedication}}{%
		\vspace*{5cm}
		\begin{flushright}
			{\Large \emph{\@dedication}}
		\end{flushright}
		\cleardoublepage
	}{}

	\ifthenelse{\boolean{@epigraph}}{%
		\vspace*{5cm}
		\@openepigraph
		\cleardoublepage
	}{}
	\fancypagestyle{plain}{%
		\fancyhf{}
		\fancyfoot[C]{\color{footerColor}{\sf \thepage}}
		\renewcommand{\headrulewidth}{0pt}}
		\pagestyle{fancy}
		\renewcommand{\chaptermark}[1]{\markboth{\ ##1}{}}
		\renewcommand{\sectionmark}[1]{\markright{\thesection\ ##1}}
						
		\fancyhead{}
		\fancyhead[LE, RO]{\color{headerColor}{\sf \thepage}}
		\fancyhead[RE]{\color{headerColor}{\sf \leftmark}}
		\fancyhead[LO]{\color{headerColor}{\sf \rightmark}}
						
		\fancyfoot{}
						 
		\newcounter{oldpage}
		\setcounter{oldpage}{\value{page}}
		\pagenumbering{roman}
		\setcounter{page}{\value{oldpage}}
} %%% end frontmatter

%%% abstract
\newenvironment{abstract}[1][Abstract]{%
	\chapter*{#1\markboth{#1}{}}
}

%%% acknowledgments
\newenvironment{acknowledgements}{%
	\chapter*{Acknowledgements\markboth{Acknowledgements}{}}
}{\cleardoublepage}
		
\renewcommand\listfigurename{Figures}
\renewcommand\listtablename{Tables}
		
		
%%% put ToC, LoF, LoT and Index entries in the ToC
%%% use of \phantomsection is required for dealing with hyperref
%%% package and depends on nohyper option
\renewcommand\tableofcontents{%
	\ifthenelse{\boolean{@hypermode}}{\phantomsection}{}
	\addcontentsline{toc}{chapter}{\contentsname}%
	\chapter*{\contentsname
		\@mkboth{\contentsname}{\contentsname}}%
	\@starttoc{toc}%
	\cleardoublepage
}
		
\renewcommand\listoffigures{%
	\ifthenelse{\boolean{@hypermode}}{\phantomsection}{}
	\addcontentsline{toc}{chapter}{List of \listfigurename}%
	\chapter*{\listfigurename}%
	\@mkboth{\listfigurename}%
	{\listfigurename}%
	\@starttoc{lof}%
	\cleardoublepage
}
		
\renewcommand\listoftables{%
	\ifthenelse{\boolean{@hypermode}}{\phantomsection}{}
	\addcontentsline{toc}{chapter}{List of \listtablename}%
	\chapter*{\listtablename}%
	\@mkboth{%
		\listtablename}%
	{\listtablename}%
	\@starttoc{lot}%
}
		
\renewenvironment{theindex}{
	\twocolumn[\@makeschapterhead{\indexname}]%
	\ifthenelse{\boolean{@hypermode}}{\phantomsection}{}
	\addcontentsline{toc}{chapter}{\indexname}
	\@mkboth{\indexname}%
	{\indexname}%
	\thispagestyle{plain}\parindent\z@
	\parskip\z@ \@plus .3\p@\relax
	\columnseprule \z@
	\columnsep 35\p@
	\let\item\@idxitem}
{}
		
%%% other useful packages		
\RequirePackage{booktabs}
\RequirePackage{graphicx}
\RequirePackage{textcomp}
\RequirePackage{url}
\RequirePackage{amsmath}
\RequirePackage[square,sort,comma,numbers]{natbib}

%%% lowercase header for bibliography and corresponding entry in the
%%% ToC. \bibsection is provided by the natbib package
\renewcommand\bibsection{
	\chapter*{\bibname \@mkboth{\bibname}{\bibname}}
	\ifthenelse{\boolean{@hypermode}}{\phantomsection}{}
	\addcontentsline{toc}{chapter}{\bibname}
}
		
%%% switch on hyperref support
\ifthenelse{\boolean{@hypermode}}{%
	\RequirePackage[unicode,plainpages=false,pdfpagelabels,breaklinks]{hyperref}
	\RequirePackage[all]{hypcap}
	}{}

%%% other formatting stuff
%\renewcommand{\baselinestretch}{1.05}
