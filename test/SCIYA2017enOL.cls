\def\sci@fileversion{2.04}
\def\sci@filedate{2017/03/24}
\def\@journal{Sci China Math}
\def\@issn{1674-7283}
\def\@eissn{2095-9427}
\def\@cn{11-5837/Q1}
\def\@copyright{\copyright~Science China Press and Springer-Verlag Berlin Heidelberg 2019}
\def\@website{\url{math.scichina.com}~~~~\url{link.springer.com}}

\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesClass{SCIYA}[\sci@filedate, \sci@fileversion]

\LoadClass[twoside]{article}
%% math packages
\RequirePackage{amsmath,amsthm,amsfonts,amssymb,upgreek,multicol,mathrsfs,pifont,amscd,latexsym,cite,bm,geometry,color,fancyhdr}
%% graphics packages

%******************************change no.1*************************************
%\RequirePackage{graphicx,picins} % original
\RequirePackage{graphicx} %new
%******************************************************************


%% other packages
\RequirePackage{algorithm,algorithmic,tabularx,url,float,booktabs}
%% check pdfTeX mode
\RequirePackage{ifpdf}
\RequirePackage{fancyhdr,lastpage}
%\RequirePackage[pdfstartview=FitH,colorlinks,linkcolor=black,citecolor=black,filecolor=black,urlcolor=black,hyperindex,CJKbookmarks]{hyperref}

%************************* change no.2**********************************
%\RequirePackage[dvipdfm,hyperindex=true,CJKbookmarks=false,colorlinks=true,linkcolor=black,breaklinks,urlcolor=black,citecolor=black]{hyperref} %original
\RequirePackage[hyperindex=true,CJKbookmarks=false,colorlinks=true,linkcolor=black,breaklinks,urlcolor=black,citecolor=black]{hyperref} %original
%*************************************************************************

\usepackage{bm}
%*********************** change no.3***************************
%\pdfstringdefDisableCommands{%
%\renewcommand*{\bm}[1]{#1}%
%% any other necessary redefinitions
%} % original
%*************************************************************************

%pdfstartview=FitH
%\RequirePackage{breakurl}
\urlstyle{same}%¶šÒåurl×ÖÌåºÍÕýÎÄÏàÍ¬
\RequirePackage{chngpage}%±ížñ×Ô¶¯×ªÐÐ
\RequirePackage{rotating}%ÎÔ±í±íÍ·ÔÚÓÒ±ß[figuresleft]

%-------------------------- Page layout ------------------------------
\textwidth=160truemm
\textheight=228truemm
\topmargin=-30pt
\headsep=6truemm
\oddsidemargin=0pt
\evensidemargin=0pt
\parindent=0pt
\footskip=0mm
\renewcommand{\baselinestretch}{1.06}
\renewcommand{\arraystretch}{1.2}
\newcommand{\sanhao}{\fontsize{18pt}{2\baselineskip}\selectfont}
\newcommand{\xiaosanhao}{\fontsize{15pt}{2\baselineskip}\selectfont}
\newcommand{\xiaosihao}{\fontsize{12pt}{\baselineskip}\selectfont}
\newcommand{\wuhao}{\fontsize{10pt}{\baselineskip}\selectfont}
\newcommand{\jiuhao}{\fontsize{9pt}{\baselineskip}\selectfont}
\newcommand{\bahao}{\fontsize{8pt}{\baselineskip}\selectfont}
\newcommand{\qihao}{\fontsize{7pt}{0.8\baselineskip}\selectfont}
\newcommand{\liuhao}{\fontsize{6pt}{0.8\baselineskip}\selectfont}
\def\letter{ADDENDA}%LETTER
\def\editornote{Preface}%Editor's Note
\def\highlight{HIGHLIGHT}
\def\insight{INSIGHT}
\def\supplementary{Supplementary File}
\def\blank{ }
\def\lastpage{\pageref{LastPage}}
\def\firstpage{\pageref{FirstPage}}

%-------------------- Article Information ----------------------------
\let\@ArticleType\@empty \def\ArticleType#1{\def\@ArticleType{#1}}
\let\@SpecialTopic\@empty \def\SpecialTopic#1{\def\@SpecialTopic{#1}}
\let\@Year\@empty \def\Year#1{\def\@Year{#1}}
\let\@Month\@empty \def\Month#1{\def\@Month{#1}}
\let\@Vol\@empty \def\Vol#1{\def\@Vol{#1}}
\let\@No\@empty \def\No#1{\def\@No{#1}}
\let\@AuthorMark\@empty \def\AuthorMark#1{\def\@AuthorMark{#1}}
\let\@AuthorCitation\@empty \def\AuthorCitation#1{\def\@AuthorCitation{#1}}
\let\@BeginPage\@empty \def\BeginPage#1{\def\@BeginPage{#1}}
\let\@EndPage\@empty \def\EndPage#1{\def\@EndPage{#1}}
\let\@DOI\@empty \def\DOI#1{\def\@DOI{#1}}
\let\@ArtNo\@empty \def\ArtNo#1{\def\@ArtNo{#1}}
\let\@ReceiveDate\@empty \def\ReceiveDate#1{\def\@ReceiveDate{#1}}
\let\@AcceptDate\@empty \def\AcceptDate#1{\def\@AcceptDate{#1}}
\let\@OnlineDate\@empty \def\OnlineDate#1{\def\@OnlineDate{#1}}
\let\@abstract\@empty \renewcommand\abstract[1]{\def\@abstract{#1}}
\let\@keywords\@empty \def\keywords#1{\def\@keywords{#1}}
\let\@contributions\@empty \def\contributions#1{\def\@contributions{#1}}
\let\@MSC\@empty \def\MSC#1{\def\@MSC{#1}}
\let\@SubTitle\@empty \def\SubTitle#1{\def\@SubTitle{#1}}
\let\@ensubject\@empty \def\ensubject#1{\def\@ensubject{#1}}
\let\@subject\@empty \def\subject#1{\def\@subject{#1}}
\let\@onlinetag\@empty


%-------------------------- Online ------------------------------------
\newcommand\online{
\def\@onlinetag{1}
}


%-------------------------- Title ------------------------------------
\let\@title\@empty
\renewcommand\title[3][]{
  \def\@title{#2}
  \def\@titlehead{#1}
  \def\@titlecitation{#3}
  \ifx\@titlehead\@empty\def\@titlehead{#2}\fi
  \ifx\@titlecitation\@empty\def\@titlecitation{#2}\fi
}


\let\@author\@empty
\let\@authoremail\@empty
\let\@onlyoneauthor\@empty
\let\@authorcite\@empty
\renewcommand*{\author}[3][]{%
  \ifx\@author\@empty
    \def\@author{#2\@authornote{#1}{#3}}
    \let\@authortemp\@author
  \else
    \let\@author\@authortemp
    \def\@onlyoneauthor{No}
    \expandafter\def\expandafter\@author\expandafter
      {\@author~{\&}~#2\@authornote{#1}{#3}}
    \expandafter\def\expandafter\@authortemp\expandafter
      {\@authortemp,~#2\@authornote{#1}{#3}}
  \fi

  \ifx\@AuthorCitation\@empty
    \ifx\@authorcite\@empty \def\@authorcite{#2}
    \else \expandafter\def\expandafter\@authorcite\expandafter{\@authorcite, #2}
    \fi
  \fi

  \ifx\@AuthorMark\@empty
    \def\@AuthorMark{#2}
  \fi

  \ifx#3\@empty
  \else
      \ifx\@authoremail\@empty \def\@authoremail{{\color{black}#3}}
      \else \expandafter\def\expandafter\@authoremail\expandafter{\@authoremail,~{\color{black}#3}}
      \fi
  \fi
}

\def\@authornote#1#2{%
  \def\SCAE@author@address{#1}%
  \def\SCAE@author@footnote{#2}%

  \ifx\SCAE@author@address\@empty
  \else \textsuperscript{#1}\hspace{-1.2mm}
  \fi

  \ifx\SCAE@author@footnote\@empty
  \else
    \ifx\@onlyoneauthor\@empty
 %    \else \textsuperscript{\raisebox{-2pt}[0mm][0mm]{*}}%
    \fi
  \fi
}


\def\@address{}
\newcommand*{\address}[2][]{%
  \ifx \@address\@empty
    \def\@address{\@addressline{#1}{#2}}
  \else
    \expandafter\def\expandafter\@address\expandafter
      {\@address;\tabularnewline\@addressline{#1}{#2}}
  \fi}
\def\@addressline#1#2{\@addresscr\hb@xt@1ex{\textsuperscript{\rm#1}\hss}#2}
\def\@addresscr{\def\\{\tabularnewline\@addresscr\hbox to1ex{}\ignorespaces}}

\def\@foundation{}
\newcommand*{\foundation}[1]{
  \def\SCAE@foundation{#1}
  \ifx\SCAE@foundation\@empty
  \else
    \def\@foundation{\footnotetext{#1}}
  \fi
}


\renewcommand\maketitle{\par
  \begingroup
    \renewcommand\thefootnote{\fnsymbol{footnote}}
    \let\footnote\thanks
    \def\@makefnmark{\hbox{\@textsuperscript{\normalfont\@thefnmark}}}%
    \long\def\@makefntext##1{\noindent\@textsuperscript{\normalfont\@thefnmark}##1}%
    \@maketitle
    \thispagestyle{empty}\@thanks
    \long\def\@makefntext##1{\noindent##1}%
    \@foundation
  \endgroup
  \renewcommand\thefootnote{\arabic{footnote}}
  \renewcommand\footnoterule{\kern-3\p@ \hrule width 0.16\columnwidth \kern 2.6\p@}%%%œÅ×¢Ïß
  \setcounter{footnote}{0}
  \setcounter{page}{\@BeginPage}

  \setlength{\textwidth}{16cm}
  \setlength{\textheight}{23.6cm}
  \ifx\@ArticleType\letter \renewcommand{\baselinestretch}{1.0}
  \else
    \ifx\@ArticleType\highlight \renewcommand{\baselinestretch}{1.0}
    \else \renewcommand{\baselinestretch}{1.1}
    \fi
  \fi
  \baselineskip 12pt
  \parindent=10.8pt
  \wuhao
  \vspace{5mm}

  \numberwithin{equation}{section}
}

\long\def\@makefntext#1{\parindent 6pt \indent\hbox{\textsuperscript{\hss{\@thefnmark)}\ }}#1}
\def\@makefnmark{\hbox\textsuperscript{\@thefnmark)}}


\def\@maketitle{
\ifthenelse{\pageref{LastPage}=\@BeginPage}
    {\def\@pagerank{\@BeginPage}}
    {\def\@pagerank{\@BeginPage--\pageref{LastPage}}}
\ifthenelse{\equal{\@DOI}{\@empty}}
    {\def\@oddheadtext{\@journal}}
    {\ifthenelse{\equal{\@onlinetag}{\@empty}}
        {\def\@oddheadtext{\@journal\hspace{3mm}\@Month~~\@Year~~Vol.\,\@Vol~~No.\,\@No}}
        {\def\@oddheadtext{\@journal}}
    }



    \renewcommand{\baselinestretch}{0.9}
    \baselineskip 9pt
    \vspace{-9mm}
    \begin{picture}(0,0)
        \put(165,23){\xiaosanhao \bfseries{\textcolor[rgb]{0.39,0.39,0.39}{SCIENCE CHINA}}}
        \put(184,8){\xiaosanhao\bfseries Mathematics}
        \put(0,1){\thicklines\line(1,0){456}}
        %\put(0,7){\makebox[160truemm][r]{\href{http://crossmark.crossref.org/dialog/?doi=\@DOI&domain=pdf}{\includegraphics{Print-CrossMark.eps}}}}
         \put(0,7){\makebox[160truemm][r]{{\includegraphics{Print-CrossMark.eps}}}}
\put(0,7){\makebox[160truemm][r]{\href{http://crossmark.crossref.org/dialog/?doi=\@DOI&domain=pdf&date_stamp=\@OnlineDate}{\textcolor[rgb]{1.0,1.0,1.0}{\tiny CrossMark}}}}


        %\put(0,-11){\makebox[160truemm][r]{\vbox{\hbox{\footnotesize \@Month~~\@Year~~Vol.\,\@Vol~~No.\,\@No: \@pagerank}}}}
        \put(0,-11){\makebox[160truemm][r]{\vbox{\hbox{\footnotesize
        doi:~{\href{https://doi.org/\@DOI}{\@DOI}}
}}}}
        \put(0,-660){\makebox[20truemm][l]{\bahao\sf \@copyright}}
        \put(0,-660){\makebox[160truemm][r]{\bahao\sf \@website}}
    \end{picture}

    \ifx\@ArticleType\preface
        \begin{picture}(0,0)
            \put(1,-5){\bf\ \,\@SpecialTopic}
        \end{picture}
    \else
        \begin{picture}(0,0)
            \rm
         \ifx\@SpecialTopic\@empty
            \put(0,-4){\makebox[160truemm][l]{\bf {\sanhao\raisebox{2pt}{.}}~\@ArticleType~{\sanhao\raisebox{1.5pt}{.}}}}
            \else
            \put(0,-4){\bf\ \,\@SpecialTopic}
            \put(0,-18){\makebox[160truemm][l]{\bf {\sanhao\raisebox{2pt}{.}}~\@ArticleType~{\sanhao\raisebox{1.5pt}{.}}}}
        \fi

         %   \put(0,-5){\makebox[160truemm][l]{\bf {\sanhao\raisebox{2pt}{.}}~\@ArticleType~{\sanhao\raisebox{1.5pt}{.}}}}
         %   \put(1,-18){\@SpecialTopic}
        \end{picture}
    \fi
  \noindent
  \vskip 16mm
  \begin{center}\LARGE\bfseries \@title \\
  {\it\jiuhao \@SubTitle}  \end{center}

  \ifx\@ArticleType\preface
  \else
      \vskip 0.5 true cm
      \renewcommand{\baselinestretch}{1.1}
      \baselineskip 12pt
      \begin{center}\xiaosihao{\rm
          \begin{tabular}{@{}c@{}}
          \@author
          \ifx\@onlyoneauthor\@empty
            \setcounter{footnote}{-1}
            \footnote{*{\thinspace}Corresponding author}%\footnote{Email:~\@authoremail}
          \else
            \ifx\@ArticleType\letter
                \setcounter{footnote}{-1}
                \footnote{*{\thinspace}Corresponding author}% (email:~\@authoremail)\protect\\The authors declare that they have no conflict of interest.}
            \else
                \ifx\@ArticleType\highlight
                    \setcounter{footnote}{-1}
                    \footnote{*{\thinspace}Corresponding author}% (email:~\@authoremail)\protect\\The authors declare that they have no conflict of interest.}
                \else
                    \setcounter{footnote}{-1}
                    \footnote{*{\thinspace}Corresponding author }%(email:~\@authoremail)
                \fi
            \fi
          \fi
          \end{tabular}
      }\end{center}
      \ifx\@contributions\@empty
      \else
          \setcounter{footnote}{-1}
          \footnote{\dag{\thinspace}\@contributions}
      \fi
      \vskip 0.1 true cm
      \renewcommand{\baselinestretch}{0.9}
      \baselineskip 9pt
      \begin{center}\bahao{\it
          \begin{tabular}[t]{@{}c@{}}
            \@address
          \end{tabular}
      \vskip 0.2 true cm
      Email: \@authoremail%{\href{mailto:\@Emails}{\nolinkurl\@Emails}}
      }
      \end{center}

      \ifx\@ArticleType\supplementary
      \else
          \vspace{-2mm}
          \begin{center}\bahao{
            \ifx\@DOI\@empty\else
              \ifx\@OnlineDate\@empty{Received \@ReceiveDate; accepted \@AcceptDate}
              \else{Received \@ReceiveDate; accepted \@AcceptDate; published online \@OnlineDate}
              \fi
              \fi
          }\end{center}
      \fi

      \ifx\@ArticleType\letter\else
        \ifx\@ArticleType\highlight\else
            \ifx\@ArticleType\supplementary\else
            \ifx\@ArticleType\erratum\else
              \renewcommand{\baselinestretch}{0.95}
              \baselineskip 12pt
              \vspace{2mm}\hspace{6.3mm}
              \begin{tabular}{p{0.88\textwidth}}\hline\\\end{tabular}
              \vspace{-6mm}
              \begin{center}\parbox{14.5cm}{
                \bahao\noindent\textbf{Abstract}\quad\ignorespaces\@abstract}
              \end{center}
              \vspace{-3mm}
              \begin{center}\parbox{14.5cm}{
                \bahao\noindent\textbf{Keywords}\quad\ignorespaces\@keywords}
              \end{center}
              \vspace{-5.0mm}
          \begin{center}\parbox{14.5cm}{
            \bahao\noindent\textbf{MSC(2020)}\quad\ignorespaces\@MSC}
            \end{center}\vspace{-0.6mm}
            \fi
        \fi
      \fi

      \ifx\@ArticleType\supplementary
      \else
          \renewcommand{\baselinestretch}{1.2}{
          \ifx\@AuthorCitation\@empty \def\@AuthorCitation{\@authorcite} \fi
          \hspace*{6.3mm}
          \scriptsize
          \begin{tabular}{lp{0.79\textwidth}}
        \hline\vspace*{-2.5mm}\\
                       \noindent{\bf Citation:}\!\!\!\!& \@AuthorCitation. \@titlecitation. \@journal, \@Year, \@Vol,
        \makeatletter doi: {\href{https://doi.org/\@DOI}{\@DOI}}\makeatother\vspace{1mm}\\
        \hline
    \end{tabular}}
      \fi
  \fi

}


%----------------------- Running heads ---------------------------------
\def\ps@myheadings{\global\let\@oddfoot\@empty\global\let\@evenfoot\@empty
    \def\@evenhead{\vbox{\hbox to \textwidth{
        \qihao
        \thepage
        \rm\hbox to 0.01cm{} \hfill{
            \ifx \@onlyoneauthor\@empty
                \@AuthorMark\emph{\ \ \ \@journal}
            \else
                \@AuthorMark\emph{~et al.\ \ \ \@journal}
            \fi
           % {\ \ \ \@Month ~~\@Year \ \ \ Vol.~\@Vol \ \ \ No.\,\@No~}%:\thepage
        }\hfill
    }}}

    \def\@oddhead{\vbox{\hbox to \textwidth{
        \qihao\rm\hbox to 0.01cm{} \hfill{
            \ifx \@onlyoneauthor\@empty
                \@AuthorMark\emph{\ \ \ \@journal}
            \else
                \@AuthorMark\emph{~et al.\ \ \ \@journal}
            \fi
           % {\ \ \ \@Month ~~\@Year \ \ \ Vol.~\@Vol \ \ \ No.\,\@No~}%:\thepage
        }\hfill
        \thepage
    }}}

    \let\@oddfoot\@empty  \let\@evenfoot\@empty
}
\pagestyle{myheadings}


%---------------------- Acknowledgements -------------------------------
\let\@Acknowledgements\@empty \def\Acknowledgements#1{\def\@Acknowledgements{#1}}
\let\@Supplements\@empty \def\Supplements#1{\def\@Supplements{#1}}

%-------------------------- Sections ----------------------------------
\renewcommand\section{
    \@startsection{section}{1}{\z@}%
    {-4.5ex \@plus -1ex \@minus -.2ex}%
    {2.5ex \@plus.1ex}%
    {\normalfont\xiaosihao\bfseries}}

\renewcommand\subsection{
    \@startsection{subsection}{2}{\z@}%
    {-2ex\@plus -2ex \@minus -.1ex}%
    {2ex \@plus .2ex}%
    {\normalfont\normalsize\bfseries}}

\renewcommand\subsubsection[1]{
    \@startsection{subsubsection}{3}{\z@}%
    {-3ex\@plus -1ex \@minus -.1ex}%
    {1ex \@plus .1ex}%
    {\normalfont\normalsize}{\it#1}}

\newcommand\deareditor{
    {\normalfont\normalsize\bfseries\noindent Dear editor,\par}
}

\newcommand\lettersection[1]{{\it #1}. }
\columnsep 0.7cm  %ÁœÀžÖ®ŒäµÄŸàÀë

\let\oldappendix\appendix
\renewenvironment{appendix}{
    \oldappendix
    \setcounter{section}{0}
    \def\thesection{Appendix \Alph{section}}
   \renewcommand{\theequation}{\Alph{section}.\arabic{equation}}%ÑÕÉ«\color{black}ºÚÉ«
    %\renewcommand{\thealgorithm}{\Alph{section}\arabic{algorithm}}
    %\renewcommand{\theassumption}{\Alph{section}.\arabic{assumption}}
\renewcommand{\thecorollary}{\Alph{section}.\arabic{corollary}}
\renewcommand{\thedefinition}{\Alph{section}.\arabic{definition}}
\renewcommand{\theexample}{\Alph{section}.\arabic{example}}
\renewcommand{\thelemma}{\Alph{section}.\arabic{lemma}}
\renewcommand{\theproblem}{\Alph{section}.\arabic{problem}}
\renewcommand{\theproposition}{\Alph{section}.\arabic{proposition}}
\renewcommand{\theremark}{\Alph{section}.\arabic{remark}}
\renewcommand{\thetheorem}{\Alph{section}.\arabic{theorem}}
    \renewcommand{\section}{
        \setcounter{equation}{0}
        %\setcounter{table}{0}
        %\setcounter{figure}{0}
        %\setcounter{algorithm}{0}
        \@startsection{section}{1}{\z@}%
        {-4.5ex \@plus -1ex \@minus -.2ex}%
        {1ex \@plus .2ex}%
        {\normalfont\xiaosihao\bfseries}
    }
    %\footnotesize
}

%-------------------------- Bibliography ------------------------------
\usepackage{cite}%Ê¹¶àžö²ÎÎÄÖÐŒäÓÃ--Á¬œÓ
\def\@biblabel#1{#1~}
\renewenvironment{thebibliography}[1]{
    \ifx\@Acknowledgements\@empty\else
    \vskip 3mm
    {\jiuhao\noindent\textbf{Acknowledgements}\quad{\@Acknowledgements}}
    \fi

    \ifx\@ArticleType\highlight\else
    \ifx\@ArticleType\letter\else
    \ifx\@ArticleType\preface\else
    \ifx\@ArticleType\supplementary\else
    \ifx\@onlyoneauthor\@empty\else
    \vskip 3mm
    %{\jiuhao\noindent\textbf{Conflict of interest}\quad
    %{The authors declare that they have no conflict of interest.}}
    \fi\fi\fi\fi\fi

    \ifx\@Supplements\@empty\else
        \vskip 3mm
        {\jiuhao\noindent\textbf{Supporting information}\quad{
        \ifx\@Supplements\blank\else{\@Supplements~ }\fi
        The supporting information is available online at \url{info.scichina.com} and \url{link.springer.com}.
        The supporting materials are published as submitted, without typesetting or editing.
        The responsibility for scientific accuracy and content remains entirely with the authors.}}
    \fi

    \section*{\normalsize\refname
        \@mkboth{\jiuhao\refname}{\jiuhao\refname}}%
    \vspace{-3mm}
    \list{\@biblabel{\@arabic\c@enumiv}}{
        \settowidth\labelwidth{\@biblabel{#1}}%
        \leftmargin\labelwidth
        \advance\leftmargin\labelsep
        \@openbib@code
        \usecounter{enumiv}%
        \let\p@enumiv\@empty
        \renewcommand\theenumiv{\@arabic\c@enumiv}
    }
    \itemsep 0ex \parskip 0ex
    \footnotesize\sloppy
    \bahao\baselineskip 11.5pt
}
\renewcommand{\UrlFont}{\selectfont} %Ê¹ÓÃ\url{}Ê¹²ÎÎÄÖÐµÄurl×Ô¶¯¶ÏÐÐ



\RequirePackage{cleveref}%ÍŒ±íÐòºÅ¶àžö1£­3

 % PackageInfo{cleveref}{loaded `english'+% language definitions}
  \AtBeginDocument{
\renewcommand{\crefrangeconjunction}{--}%Á¬ÐøÊý×Ö1£­3
%\renewcommand{\crefpairconjunction}{--}%Êý×Ö1ºÍ2
\crefname{table}{\color{black}Table}{\color{black}Tables}%ÑÕÉ«\color{black}ºÚÉ«
\crefname{figure}{\color{black}Figure}{\color{black}Figures}%ÑÕÉ«\color{black}ºÚÉ«
\crefname{equation}{\color{black}Eq.}{\color{black}Eqs.}%ÑÕÉ«\color{black}ºÚÉ«
}


%-------------------------- Figures and tables ------------------------

\setlength{\floatsep}{12pt plus 2pt minus 2pt}%Ò³Ãæ¶¥²¿/µ×²¿µÄž¡¶¯¶ÔÏóŒäµÄŽ¹Ö±ŸàÀë, È±Ê¡Îª12pt plus 2pt minus 2pt
\setlength{\textfloatsep}{12pt plus 2pt minus 2pt}%Ò³¶¥²¿/µ×²¿µÄž¡¶¯¶ÔÏóÓëÎÄ±ŸŒäŽ¹Ö±ŸàÀë, È±Ê¡20pt plus 2pt minus 4pt
\setlength{\intextsep}{12pt plus 2pt minus 2pt}%Ò³ÖÐž¡¶¯¶ÔÏóÓëÉÏÏÂ·œÎÄ±ŸŒäŽ¹Ö±ŸàÀë, È±Ê¡12pt plus 2pt minus 2pt
\setlength{\belowrulesep}{0pt}%ºáÏßºÍÆäÏÂÎÄ×ÖµÄŒäŸà
\setlength{\aboverulesep}{0pt}%ºáÏßºÍÆäÉÏÎÄ×ÖµÄŒäŸà
\setlength{\doublerulesep}{0.4pt}
\newcommand\Times{\fontfamily{ptm}\selectfont}
\newcommand{\picsize}{\fontsize{8pt}{0.4\baselineskip}\selectfont}
\renewcommand{\figurename}{\color{black}Figure}%%ÑÕÉ«\color{black}ºÚÉ«
\renewcommand{\tablename}{\color{black}Table}%%ÑÕÉ«\color{black}ºÚÉ«
\usepackage[bf,footnotesize,labelsep=quad]{caption}
\usepackage[labelfont={rm,md,up}]{subfig}
\captionsetup[subfloat]{labelformat=simple,captionskip=0pt}
\captionsetup[table]{aboveskip=1mm}
\captionsetup[figure]{aboveskip=3mm}
\captionsetup[algorithm]{font=footnotesize}
\renewcommand{\thesubfigure}{{\picsize\Times(\alph{subfigure})}} %ÕâÁœÐÐ¶šÒå×ÓÍŒÔÚÕýÎÄÒýÓÃÊ±µÄlabelÐÎÊœ
\renewcommand{\thesubtable}{{\picsize(\alph{subtable})}} %×Ó±ílabelµÄ×ÖÌåÈÔºÍÕýÎÄÏàÍ¬

%----------------------- Math ---------------------------------
\def\leq{\leqslant}
\def\geq{\geqslant}
\def\le{\leqslant}
\def\ge{\geqslant}
\abovedisplayskip=11pt plus 0pt minus 6pt
\belowdisplayskip=11pt plus 0pt minus 6pt
\newcommand{\set}[1]{\ensuremath{\left\{ #1 \right\}}}%
\newcommand{\Set}[2]{\ensuremath{\left\{ #1 \left| \right. #2 \right\}}}%
\newcommand{\abs}[1]{\ensuremath{\left| #1 \right|}}%
\newcommand{\map}[3]{\ensuremath{#1 : #2 \rightarrow #3}}%
%\newcommand{\C}[1]{\ensuremath{\mathcal{#1}}}%
\newcommand{\restrict}[2]{\ensuremath{#1 \left|_{#2}\right.}}%
\newcommand{\NN}{\mathbb{N}^0}
\newcommand{\PN}{\mathbb{N}}
\newcommand{\syn}{\mathbf{S}}
\newcommand{\Syn}{\mathbf{M}}
\allowdisplaybreaks
\setlength{\arraycolsep}{2.0pt}

%--------------------------------- Theorems ---------------------------------
\def\proof{\noindent{\it Proof.}\quad}
\def\Step#1{\vspace{1mm}\noindent{\bf #1}\quad}%The common style. ÍšÓÃÐÎÊœ
\def\Case#1{\vspace{1mm}\noindent{\bf #1}\quad}%The common style. ÍšÓÃÐÎÊœ
%\renewcommand{\qedsymbol}{}
\newtheoremstyle{newdefinition}%
    {3pt}% Space above
    {3pt}% Space below
    {\it}% Body font
    {}% Indent amount
    {\bfseries}% Theorem head font
    {.}% Punctuation after theorem head
    {1.4em}% Space after theorem head
    {}% Theorem head spec (can be left empty, meaning `normal')
\theoremstyle{newdefinition}%
\newtheorem{theorem}{Theorem}[section]
\newtheorem{corollary}[theorem]{Corollary}
\newtheorem{assumption}[theorem]{Assumption}
\newtheorem{lemma}[theorem]{Lemma}
\newtheorem{proposition}[theorem]{Proposition}
\newtheorem{problem}[theorem]{Problem}
\newtheoremstyle{definition}%
    {3pt}% Space above
    {3pt}% Space below
    {\rm}% Body font
    {}% Indent amount
    {\bfseries}% Theorem head font
    {.}% Punctuation after theorem head
    {1.4em}% Space after theorem head
    {}% Theorem head spec (can be left empty, meaning `normal')
    \theoremstyle{definition}
\newtheorem{definition}[theorem]{Definition}
\newtheorem{example}[theorem]{Example}
\newtheorem{remark}[theorem]{Remark}

\iffalse
\makeatletter
\renewcommand\normalsize{%
   \@setfontsize\normalsize\@xpt\@xiipt
   \abovedisplayskip 9\p@ \@plus4\p@ \@minus5\p@
   \abovedisplayshortskip \z@ \@plus3\p@
   \belowdisplayshortskip 6\p@ \@plus3\p@ \@minus3\p@
   \belowdisplayskip  \abovedisplayskip
   \let\@listi\@listI}
\makeatother
\fi


\makeatletter% amsthm: get rid of \itshape and \@addpunct{.}
\renewenvironment{proof}[1][\proofname]{\par%
\pushQED{\qed}%
\normalfont \topsep0\p@\@plus0\p@\relax%
\trivlist%
\item[\it\hskip\labelsep%
#1.]\quad\ignorespaces%
}{%
\popQED\endtrivlist\@endpefalse%
}
%\renewcommand{\proofname}{\qquad\,\,\heiti{Ö€Ã÷}\quad}
\makeatother

%\let\citedash\relax
\makeatletter %\providecommand{\citedash}{\hbox{-}\penalty\@m}

%%%%²Î¿ŒÎÄÏ×ÒýÓÃÀšºÅÑÕÉ«\color{black}
\def\@cite#1#2{{\color{black}[{#1\if@tempswa , #2\fi}]}}
%\def\@cite#1#2{\textsuperscript{\color{black}\![{#1\if@tempswa , #2\fi}]}}%ÉÏœÇ

%%%%¹«ÊœÐòºÅÑÕÉ«\color{black}
\let\reftagform@=\tagform@
\def\tagform@#1{\maketag@@@{\textcolor{black}{(\ignorespaces{#1}\unskip\@@italiccorr)}}}


\makeatother

%--------------------------------- list ---------------------------------
\renewenvironment{itemize}{
\begin{list}{$\bullet$}{
\labelwidth=4em
\labelsep=0.5em
\leftmargin=0em
\rightmargin=0em
\parsep=\parskip
\itemsep=0em
\topsep=0em
\itemindent=2.1em
}
}{\end{list}}


\endinput
