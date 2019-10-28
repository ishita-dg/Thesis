% -------------------------------------------------------------------
%  @LaTeX-class-file{
%     filename        = "Dissertate.cls",
%     version         = "2.0",
%     date            = "25 March 2014",
%     codetable       = "ISO/ASCII",
%     keywords        = "LaTeX, Dissertate",
%     supported       = "Send email to suchow@post.harvard.edu.",
%     docstring       = "Class for a dissertation."
% --------------------------------------------------------------------

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{Dissertate}[2014/03/25 v2.0 Dissertate Class]
\LoadClass[12pt, oneside, letterpaper]{book}

%
% Options
%
\RequirePackage{etoolbox}

% Line spacing: dsingle/ddouble
%   Whether to use single- or doublespacing.
\newtoggle{DissertateSingleSpace}
\togglefalse{DissertateSingleSpace}
\DeclareOption{dsingle}{
    \toggletrue{DissertateSingleSpace}
    \ClassWarning{Dissertate}{Single-spaced mode on.}
}
\DeclareOption{ddouble}{\togglefalse{DissertateSingleSpace}}

\ProcessOptions\relax

% Line Spacing
%   Define two line spacings: one for the body, and one that is more compressed.
\iftoggle{DissertateSingleSpace}{
    \newcommand{\dnormalspacing}{1.2}
    \newcommand{\dcompressedspacing}{1.0}
}{
    \newcommand{\dnormalspacing}{2.0}
    \newcommand{\dcompressedspacing}{1.2}
}

% Block quote with compressed spacing
\let\oldquote\quote
\let\endoldquote\endquote
\renewenvironment{quote}
    {\begin{spacing}{\dcompressedspacing}\oldquote}
    {\endoldquote\end{spacing}}

% Itemize with compressed spacing
\let\olditemize\itemize
\let\endolditemize\enditemize
\renewenvironment{itemize}
    {\begin{spacing}{\dcompressedspacing}\olditemize}
    {\endolditemize\end{spacing}}

% Enumerate with compressed spacing
\let\oldenumerate\enumerate
\let\endoldenumerate\endenumerate
\renewenvironment{enumerate}
    {\begin{spacing}{\dcompressedspacing}\oldenumerate}
    {\endoldenumerate\end{spacing}}

% Text layout.
%\RequirePackage[width = 5.75in, top = 1.0in, bottom = 1.0in, includefoot, includehead, letterpaper]{geometry}
\RequirePackage[margin = 1.25in, letterpaper]{geometry}
\usepackage{ragged2e}
% start added by ishita
\usepackage{amsmath}
\usepackage{rotating}
\usepackage{array}
\usepackage{tablefootnote}
\usepackage{subfig}
\usepackage{booktabs}
\usepackage{multirow}
\usepackage[perpage]{footmisc}

\usepackage{tikz}
\usetikzlibrary{arrows,shapes}
\usepackage{wrapfig}

\newcommand{\CBN}{CBN}
\newcommand{\CBNs}{CBNs}

\tikzstyle{dgraph}=[->, line width=1.5pt]
\tikzstyle{hcont}=[circle,draw=black!50,thick,fill=black!10,minimum size=6mm,>=stealth]  % hidden continuous node
\tikzstyle{ocont}=[circle,draw=blue!50,thick,fill=blue!10,minimum size=6mm,>=stealth]  % observed continuous node
\tikzstyle{contdec}=[circle,draw=red!50,thick,fill=red!10]  % observed node after a decision


\tikzstyle{cont}=[circle,draw=blue!50,thick,minimum size=6mm,line width=2pt,>=stealth]  % continuous  node
%\tikzstyle{ocont}=[ellipse,draw=blue!50,thick,minimum size=6mm,>=stealth]  % continuous  node
\tikzstyle{blackcont}=[circle,draw=black!50,thick,minimum size=6mm,line width=2pt,>=stealth]  % continuous  node
\tikzstyle{oval}=[ellipse,draw=blue!50,thick,minimum size=6mm,line width=2pt,>=stealth]  % continuous node
\tikzstyle{disc}=[rectangle,draw=blue!50,thick,line width=1pt,minimum size=6mm]  % discrete node


\tikzstyle{fillred}=[fill=red!20,thick]  % observed node
\tikzstyle{fillgreen}=[fill=green!20,thick]  % observed node
\tikzstyle{purered}=[fill=red]  % observed node
\tikzstyle{state}=[rectangle,fill=red!20]  % state
\tikzstyle{sobs}=[fill=green!15,thick]  % sequentally observed node
\tikzstyle{fact}=[fill,minimum size=1.5mm,line width=2pt,>=stealth]
\tikzstyle{varfact}=[draw,minimum size=1.5mm,line width=2pt,>=stealth]
\tikzstyle{sep}=[rectangle,draw=magenta!50,thick,minimum size=6mm]  % discrete node
\tikzstyle{det}=[fill=red!15,rectangle,draw=red!50,thick,minimum size=6mm]  % deterministic node

\tikzstyle{dethid}=[diamond,draw=red!50,thick,minimum size=6mm]  % deterministic  hidden node

\tikzstyle{lineball}=[fill,-*,draw=red!50,line width=1.5pt]
\tikzstyle{redball}=[mark=*,mark options={fill=red!50,draw=red},mark size=0.5pt]
\tikzstyle{greenball}=[mark=*,mark options={fill=green!50,draw=green},mark size=0.5pt]

\tikzstyle{dec}=[rectangle,draw=red!50,thick,minimum size=6mm]  % decision node
\tikzstyle{utility}=[diamond,draw=red!50,thick,minimum size=6mm]  % utility node
\tikzstyle{decutility}=[diamond,draw=red!50,thick,minimum size=6mm]  % utility node

% dependent styles
\tikzstyle{contobs}+=[cont]
\tikzstyle{contobs}+=[obs]
\tikzstyle{discobs}+=[disc]
\tikzstyle{discobs}+=[obs]

\tikzstyle{obsred}+=[obs]
\tikzstyle{obsred}+=[red]

\tikzstyle{background grid}=[draw, black!50,step=.1cm]
\tikzstyle{dgraph}=[->, line width=1.5pt]
\tikzstyle{ugraph}=[line width=1.5pt]


\DeclareMathOperator*{\argmin}{argmin}
\DeclareMathOperator*{\argmax}{argmax}
% end added by ishita

%\RaggedRight
\RequirePackage{graphicx}
\usepackage{fixltx2e}
\parindent 12pt
\RequirePackage{lettrine}
\RequirePackage{setspace}
\RequirePackage{verbatim}

% Fonts.
\RequirePackage{color}
\RequirePackage{xcolor}
\usepackage{hyperref}
\RequirePackage{url}
\RequirePackage{amssymb}
\RequirePackage{mathspec}
\setmathsfont(Digits,Latin,Greek)[Numbers={Proportional}]{Times New Roman}
\setmathrm{EB Garamond}
\AtBeginEnvironment{tabular}{\addfontfeature{RawFeature=+tnum}}
\widowpenalty=300
\clubpenalty=300
\setromanfont[Numbers=OldStyle, Ligatures={Common, TeX}, Scale=1.0]{EB Garamond}
\newfontfamily{\smallcaps}[RawFeature={+c2sc,+scmp}]{EB Garamond}
\setsansfont[Scale=MatchLowercase]{Helvetica}
\setmonofont[Scale=MatchLowercase]{Source Code Pro}
\RequirePackage[labelfont={bf,sf,footnotesize,singlespacing},
                textfont={sf,footnotesize,singlespacing},
                justification={justified},
                singlelinecheck=false,
                margin=0pt,
                figurewithin=chapter,
                tablewithin=chapter]{caption}
\renewcommand{\thefootnote}{\fnsymbol{footnote}}
\setlength{\footnotesep}{\baselineskip}
\RequirePackage{microtype}


% Headings and headers.
\RequirePackage{fancyhdr}
\RequirePackage[tiny, md, sc]{titlesec}
\setlength{\headheight}{5pt}
\pagestyle{plain}
\RequirePackage{titling}

% Front matter.
\setcounter{tocdepth}{1}
\usepackage[subfigure]{tocloft}
\usepackage[titletoc]{appendix}
\renewcommand{\cftsecleader}{\cftdotfill{\cftdotsep}}
\renewcommand{\cftchapfont}{\normalsize \scshape}
\renewcommand\listfigurename{Listing of figures}
\renewcommand\listtablename{Listing of tables}

% Endmatter
\renewcommand{\setthesection}{\arabic{chapter}.A\arabic{section}}

% References.
\renewcommand\bibname{References}
\RequirePackage[super,comma,numbers]{natbib}
\renewcommand{\bibnumfmt}[1]{[#1]}
\RequirePackage[palatino]{quotchap}
\renewcommand*{\chapterheadstartvskip}{\vspace*{-0.5\baselineskip}}
\renewcommand*{\chapterheadendvskip}{\vspace{1.3\baselineskip}}

% An environment for paragraph-style section.
\providecommand\newthought[1]{%
   \addvspace{1.0\baselineskip plus 0.5ex minus 0.2ex}%
   \noindent\textsc{#1}%
}

% Align reference numbers so that they do not cause an indent.
\newlength\mybibindent
\setlength\mybibindent{0pt}
\renewenvironment{thebibliography}[1]
    {\chapter*{\bibname}%
     \@mkboth{\MakeUppercase\bibname}{\MakeUppercase\bibname}%
     \list{\@biblabel{\@arabic\c@enumiv}}
          {\settowidth\labelwidth{\@biblabel{999}}
           \leftmargin\labelwidth
            \advance\leftmargin\dimexpr\labelsep+\mybibindent\relax\itemindent-\mybibindent
           \@openbib@code
           \usecounter{enumiv}
           \let\p@enumiv\@empty
           \renewcommand\theenumiv{\@arabic\c@enumiv}}
     \sloppy
     \clubpenalty4000
     \@clubpenalty \clubpenalty
     \widowpenalty4000%
     \sfcode`\.\@m}
    {\def\@noitemerr
      {\@latex@warning{Empty `thebibliography' environment}}
     \endlist}

% Some definitions.
\def\abstracttitle#1{\gdef\@abstracttitle{#1}}
\def\advisor#1{\gdef\@advisor{#1}}
\def\coadvisorOne#1{\gdef\@coadvisorOne{#1}}
\def\coadvisorTwo#1{\gdef\@coadvisorTwo{#1}}
\def\committeeInternal#1{\gdef\@committeeInternal{#1}}
\def\committeeInternalOne#1{\gdef\@committeeInternalOne{#1}}
\def\committeeInternalTwo#1{\gdef\@committeeInternalTwo{#1}}
\def\committeeExternal#1{\gdef\@committeeExternal{#1}}
\def\degreeyear#1{\gdef\@degreeyear{#1}}
\def\degreemonth#1{\gdef\@degreemonth{#1}}
\def\degreeterm#1{\gdef\@degreeterm{#1}}
\def\degree#1{\gdef\@degree{#1}}
\def\department#1{\gdef\@department{#1}}
\def\field#1{\gdef\@field{#1}}
\def\university#1{\gdef\@university{#1}}
\def\universitycity#1{\gdef\@universitycity{#1}}
\def\universitystate#1{\gdef\@universitystate{#1}}
\def\programname#1{\gdef\@programname{#1}}
\def\pdOneName#1{\gdef\@pdOneName{#1}}
\def\pdOneSchool#1{\gdef\@pdOneSchool{#1}}
\def\pdOneYear#1{\gdef\@pdOneYear{#1}}
\def\pdTwoName#1{\gdef\@pdTwoName{#1}}
\def\pdTwoSchool#1{\gdef\@pdTwoSchool{#1}}
\def\pdTwoYear#1{\gdef\@pdTwoYear{#1}}
% School name and location
\university{Harvard University}
\universitycity{Cambridge}
\universitystate{Massachusetts}

% School color found from university's graphic identity site:
% http://isites.harvard.edu/icb/icb.do?keyword=k75408&pageid=icb.page392732
\definecolor{SchoolColor}{rgb}{0.6471, 0.1098, 0.1882} % Crimson
\definecolor{chaptergrey}{rgb}{0.6471, 0.1098, 0.1882} % for chapter numbers

\hypersetup{
    colorlinks,
    citecolor=SchoolColor,
    filecolor=black,
    linkcolor=black,
    urlcolor=SchoolColor,
}

% Formatting guidelines found in:
% http://www.gsas.harvard.edu/publications/form_of_the_phd_dissertation.php
\renewcommand{\frontmatter}{
	\input{frontmatter/personalize}
	\maketitle
	\copyrightpage
	\abstractpage
    \contentspage
	    \prevwork
	% \listoffigures % optional
	\dedicationpage
	\acknowledgments
}

\renewcommand{\maketitle}{
    \pagenumbering{roman}
    \setcounter{page}{1}
	\thispagestyle{empty}
	\vspace*{\fill}
	\vspace{100pt}
	\begin{center}
	\Huge \textcolor{SchoolColor}{\thetitle} \normalsize \\
	\vspace{100pt}
	\textsc{a dissertation presented \\ by\\
	\theauthor\\ to\\ The Department of \@department\\
	\vspace{12pt}
	in partial fulfillment of the requirements\\
	for the degree of\\ \@degree\\
	in the subject of\\ \@field\\
	\vspace{12pt}
	\@university\\ \@universitycity, \@universitystate\\
	\@degreemonth\ \@degreeyear}
	\end{center} \vspace*{\fill}
}

\newcommand{\copyrightpage}{
	\newpage
	\thispagestyle{empty}
	\vspace*{\fill}
	\scshape \noindent \small \copyright \small 2019\hspace{3pt}-- \theauthor \\
	\noindent all rights reserved.
	\vspace*{\fill}
	\newpage
	\rm
}


% Formatting of the abstract page:
\fancypagestyle{abstractstyle}{
	\pagenumbering{roman} \setcounter{page}{3}  % ABSTRACT MUST BE NUMBERED iii
	\lhead{Dissertation Advisor: Professor \@advisor} \rhead{\@author}
	\renewcommand{\headrulewidth}{0pt}
	\renewcommand{\footrulewidth}{0pt}}

\newcommand{\abstractpage}{
	\newpage
	%\doublespacing    % ABSTRACT MUST BE DOUBLE SPACED
	\thispagestyle{abstractstyle}
	\renewcommand{\headrulewidth}{0.0pt}
	\vspace*{10pt}
	\begin{center}
	\Large \textcolor{SchoolColor}{\@abstracttitle} \normalsize \\
	\vspace*{20pt}
	\scshape Abstract \\ \normalfont
	\end{center}
	\begin{doublespace}
	\input{frontmatter/abstract}
	\end{doublespace} 
	\vspace*{\fill}
	\newpage\normalfont
	\pagestyle{plain}
}
%
%\newcommand{\abstractpage}{
%    \pdfbookmark{Abstract}{Abstract}
%	\newpage
%	\pagenumbering{roman}
%	\setcounter{page}{3}
%	\pagestyle{fancy}
%	\lhead{Dissertation advisor: Professor \@advisor} \rhead{\@author}
%	\renewcommand{\headrulewidth}{0.0pt}
%	\vspace*{15pt}%\vspace*{35pt}
%	\begin{center}
%    	\Large \textcolor{SchoolColor}{\@abstracttitle} \normalsize \\
%    	\vspace*{20pt} %\vspace*{20pt}
%    	\scshape Abstract \\ \rm
%	\end{center}
%    \begin{doublespace}%{\dnormalspacing}
%    	\input{frontmatter/abstract}
%   \end{doublespace} %\end{spacing}
%	\vspace*{\fill}
%	\newpage \lhead{} \rhead{}
%	\cfoot{\thepage}
%}

\newcommand{\contentspage}{
    \pdfbookmark{\contentsname}{Contents}
    \tableofcontents
}

\newcommand{\dedicationpage}{
    \cleardoublepage
    \phantomsection
    \pdfbookmark{Dedication}{Dedication}
	\newpage \thispagestyle{fancy} \vspace*{\fill}
	\scshape \noindent \input{frontmatter/dedication}
	\vspace*{\fill} \newpage \rm
    \cleardoublepage
}

\newcommand{\acknowledgments}{
	\chapter*{Acknowledgments}
	\noindent
     \begin{doublespace}%{\dnormalspacing}
    	\input{frontmatter/thanks}
     \end{doublespace} %\end{spacing}
	\vspace*{\fill} \newpage
	\setcounter{page}{1}
	\pagenumbering{arabic}
}


\newcommand{\prevwork}{
	\chapter*{Previously published and submitted works}
	\noindent
    \begin{spacing}{\dcompressedspacing}
    	\input{frontmatter/prevwork}
    \end{spacing}
	\vspace*{\fill} \newpage
}


\renewcommand{\backmatter}{
    \begin{appendices}
        \include{chapters/appendix}
    \end{appendices}
    \input{endmatter/personalize}
    \clearpage
    \begin{spacing}{\dcompressedspacing}
        \bibliography{references}
        \addcontentsline{toc}{chapter}{References}
        \bibliographystyle{apalike2}
        \include{endmatter/colophon}
    \end{spacing}
}


\newcommand\blfootnote[1]{%
  \begingroup
  \setlength\footnotemargin{0em}
  \renewcommand\thefootnote{}\footnote{#1}%
  \addtocounter{footnote}{-1}%
  \endgroup
}

