% ANS DOCUMENT CLASS - ansconf.cls
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{ansconf}[2018/07/06]

\LoadClass[11pt,twoside]{article}
\typeout{Loading ATH conference document class: includes [11pt,twoside]{article}}
\typeout{adapted by Dillon Shaver (ANL), from Paul K. Romano (ANL), from R.C. 
Martineau (INL), from A. Sood (LANL), from J. Wagner (ORNL) who obtained the 
original class file by Jim Warsa (LANL), 16 July 2002}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Packages needed
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\RequirePackage{cite}        % texlive-latex-recommended
\RequirePackage{titlesec}    % texlive-latex-extra
\RequirePackage{setspace}    % texlive-latex-recommended
\RequirePackage{indentfirst} 
\RequirePackage{fancyhdr}    % texlive-latex-base
\RequirePackage{times}       % texlive-fonts-recommended
\RequirePackage{lastpage}    % texlive-latex-extra
\RequirePackage{caption}     % texlive-latex-recommended
\RequirePackage{titling}     % texlive-latex-extra
\RequirePackage[blocks]{authblk}     % texlive-latex-extra
%\RequirePackage{natbib}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% page layout stuff

\setlength{\textwidth}{6.5in}
\setlength{\textheight}{9.0in}
\setlength{\marginparsep}{0pt}
\setlength{\marginparwidth}{0pt}
\setlength{\oddsidemargin}{0pt}
\setlength{\evensidemargin}{0pt}
\setlength{\hoffset}{0pt}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% headers and such (fancyhdr)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\setlength{\voffset}{-46.8pt}
\setlength{\hoffset}{0.0in}
\setlength{\topmargin}{12pt}
\setlength{\headsep}{16.8pt}
\setlength{\headheight}{28pt}
\setlength{\footskip}{0.4in}

\setlength{\parindent}{0pt}
\addtolength{\parskip}{1.0\baselineskip}

\newcommand{\authorHead}[1]{\gdef\@authorHead{#1}}
\newcommand{\shortTitle}[1]{\gdef\@shortTitle{#1}}
\newcommand{\confTitle}[1]{\gdef\@confTitle{#1}}
\newcommand{\confLocation}[1]{\gdef\@confLocation{#1}}
\newcommand{\reffig}[1]{Fig.~\ref{#1}}
\newcommand{\reffigs}[2]{Figs.~\ref{#1}~\&~\ref{#2}}
\newcommand{\reffigr}[2]{Figs.~\ref{#1}~--~\ref{#2}}
\newcommand{\reftab}[1]{Table~\ref{#1}}
%\newcommand{\confPublished}[1]{\gdef\@confPublished{#1}}

\renewcommand{\headrulewidth}{0pt}
\renewcommand{\footrulewidth}{0pt}

% Header/footer for other pages
\fancyhf{}
\fancyhead[CE]{{\scriptsize \@authorHead}}
\fancyhead[CO]{{\scriptsize \@shortTitle}}
\lfoot{\scriptsize{\@confTitle, \\ \@confLocation.}}
%\rfoot{\thepage/\pageref{LastPage}}
\pagestyle{fancy}
%\pagestyle{empty}

% Header/footer for first page
\fancypagestyle{plain}{
  \fancyhf{}
%  \lhead{}
%  \lfoot{}
\lhead{\scriptsize{\emph{\@confTitle} \\ \@confLocation}}
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Styles for \section, \subsection, \subsubsection
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\titlelabel{\thetitle. }  % Add period after section number

% Set format for headings
\titleformat*{\section}{\normalsize\bfseries\MakeUppercase}
\titleformat*{\subsection}{\normalsize\bfseries}
\titleformat*{\subsubsection}{\normalsize\bfseries}

% Set spacing for headings
\titlespacing{\section}{0pt}{1.0ex plus 1ex minus .2ex}{.2ex plus .2ex}
\titlespacing{\subsection}{0pt}{1.0ex plus 1ex minus .2ex}{.2ex plus .2ex}
\titlespacing{\subsubsection}{0pt}{1.0ex plus 1ex minus .2ex}{.2ex plus .2ex}

\renewcommand{\thefootnote}{\fnsymbol{footnote}}
\renewcommand{\footnotesize}{\fontsize{9}{10.8pt}\selectfont}
\renewcommand{\small}{\fontsize{10}{12pt}\selectfont}
\renewcommand{\large}{\fontsize{14}{16.8pt}\selectfont}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Captions for figures and tables
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\DeclareCaptionFont{xbf}{\bfseries\boldmath}
\captionsetup{labelfont=bf, textfont=bf, labelsep=period, font=xbf}
\captionsetup[table]{skip=0pt}
\renewcommand{\thetable}{\@Roman\c@table}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Title/Author/Abstract block
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\setlength{\droptitle}{-44.9pt}
\pretitle{\begin{center}\large\bfseries\MakeUppercase}
\posttitle{\end{center}}
\renewcommand{\maketitlehookb}{
  \vspace{10pt}
  \let\oldparskip\parskip
  \setlength{\parskip}{-7pt}
}

\renewcommand\Authfont{\normalsize\bfseries}
\setlength\affilsep{0pt}
\date{}

\renewcommand{\maketitlehookd}{
  \setlength{\parskip}{\oldparskip}
  \addtolength{\parskip}{1.0\baselineskip}
  \vspace{-30pt}
}

\RequirePackage[style]{abstract}
\renewcommand{\abstitlestyle}[1]{\bfseries\MakeUppercase#1}
\setlength{\absleftindent}{0pt}
\setlength{\absrightindent}{0pt}

\AtBeginDocument{\thispagestyle{plain}}
%\AtBeginDocument{\raggedright}

\makeatletter
\renewcommand\@biblabel[1]{#1.}
\makeatother
