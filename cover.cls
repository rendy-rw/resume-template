% Intro Options
\ProvidesClass{deedy-resume-openfont}[2014/04/30 CV class]
\NeedsTeXFormat{LaTeX2e}
\DeclareOption{print}{\def\@cv@print{}}
\DeclareOption*{%
  \PassOptionsToClass{\CurrentOption}{article}
}
\ProcessOptions\relax
\LoadClass{article}


% Package Imports
\usepackage[hmargin=1.14cm, vmargin=1.14cm]{geometry}
\usepackage[hidelinks]{hyperref}
\usepackage[usenames,dvipsnames]{xcolor}
\usepackage{titlesec}
\usepackage[absolute]{textpos}
\usepackage{fontspec,xltxtra,xunicode}
\usepackage{enumitem}
\usepackage{fontspec}
\usepackage{ragged2e}


% Publications
\usepackage{cite}
\renewcommand\refname{\vskip -1.5cm}

% Color definitions
\usepackage[usenames,dvipsnames]{xcolor} 
\definecolor{date}{HTML}{666666} 
\definecolor{primary}{HTML}{2b2b2b} 
\definecolor{headings}{HTML}{6A6A6A}
\definecolor{subheadings}{HTML}{333333}

% Set main fonts
\usepackage{fontspec}
\setmainfont[Color=primary, Path = OpenFonts/fonts/lato/,BoldItalicFont=Lato-RegIta,BoldFont=Lato-Reg,ItalicFont=Lato-LigIta]{Lato-Lig}
\setsansfont[Scale=MatchLowercase,Mapping=tex-text, Path = OpenFonts/fonts/raleway/]{Raleway-ExtraLight}

% Date command
\usepackage[absolute]{textpos}
% \usepackage[UKenglish]{isodate}
\setlength{\TPHorizModule}{1mm}
\setlength{\TPVertModule}{1mm}
\newcommand{\lastupdated}{\begin{textblock}{60}(155,5)
\color{date}\fontspec[Path = OpenFonts/fonts/raleway/]{Raleway-ExtraLight}\fontsize{8pt}{10pt}\selectfont 
Last Updated on \today
\end{textblock}}

% Name command
\newcommand{\namesection}[4]{%
  \centering
  {\fontsize{35pt}{25pt}%
    \scshape\fontspec[Path=OpenFonts/fonts/lato/]{Lato-Reg}\selectfont #1~%
    {\scshape\fontspec[Path = OpenFonts/fonts/lato/]{Lato-Reg}\selectfont #2}%
  }\par

  \vspace{4pt} % Beri jarak vertikal antara nama dan posisi

  \centering
  {%
    \fontsize{16pt}{20pt}%
    \scshape\fontspec[Path=OpenFonts/fonts/lato/]{Lato-Lig}\selectfont #3%
  }\par

  \vspace{10pt} % Jarak antara posisi dan informasi kontak

  \centering
  {%
    \color{headings}%
    \fontspec[Path=OpenFonts/fonts/raleway/]{Raleway-Medium}%
    \fontsize{11pt}{14pt}\selectfont #4%
  }\par

  \vspace{2pt}

  \noindent
  \makebox[\textwidth]{\color{headings}\rule{\textwidth}{0.4pt}}%
  \vspace{2pt}
}

% Section seperators 
\usepackage{titlesec}
\titlespacing{\section}{0pt}{0pt}{0pt} 
\titlespacing{\subsection}{0pt}{0pt}{0pt}
\newcommand{\sectionsep}{\vspace{4pt}}

% Headings command
\titleformat{\section}{\color{headings}
\scshape\fontspec[Path = OpenFonts/fonts/OpenFonts/fonts/lato/]{Lato-Lig}\fontsize{16pt}{24pt}\selectfont \raggedright\uppercase}{}{0em}{}

% Subeadings command
\titleformat{\subsection}{
\color{subheadings}\fontspec[Path = OpenFonts/fonts/lato/]{Lato-Bol}\fontsize{12pt}{12pt}\selectfont\bfseries\uppercase}{}{0em}{}

\newcommand{\runsubsection}[1]{
\color{subheadings}\fontspec[Path = OpenFonts/fonts/lato/]{Lato-Bol}\fontsize{12pt}{12pt}\selectfont\bfseries\uppercase {#1} \normalfont}

% Descriptors command
\newcommand{\descript}[1]{
\color{subheadings}\raggedright\scshape\fontspec[Path = OpenFonts/fonts/raleway/]{Raleway-Medium}\fontsize{11pt}{13pt}\selectfont {#1 \\} \normalfont}

% Location command
\newcommand{\location}[1]{
\color{headings}\raggedright\fontspec[Path = OpenFonts/fonts/raleway/]{Raleway-Medium}\fontsize{10pt}{12pt}\selectfont {#1\\} \normalfont}

% Bullet Lists with fewer gaps command
\newenvironment{tightemize}{
\vspace{-\topsep}\begin{itemize}\itemsep1pt \parskip0pt \parsep0pt}
{\end{itemize}\vspace{-\topsep}}

% Cover Letter
\newcommand{\companyname}[1]{\raggedright\fontspec[Path = OpenFonts/fonts/lato/]{Lato-Bol}\fontsize{12pt}{14pt}\selectfont {#1 \\} \normalfont}

\newcommand{\companyaddress}[1]{\raggedright\fontspec[Path = OpenFonts/fonts/raleway/]{Raleway-Medium}\fontsize{11pt}{13pt}\selectfont {#1 \\}\mbox{}\\\mbox{}\\ \normalfont}

\newcommand{\currentdate}[1]{\raggedleft\fontspec[Path = OpenFonts/fonts/raleway/]{Raleway-Medium}\fontsize{11pt}{13pt}\selectfont {#1 \\} \normalfont}

% Letter content command
% \newenvironment{letteritemize}{
%   \begin{itemize}
%     \raggedright
%     \setlength{\topsep}{0pt}       % space before and after the list
%     \setlength{\itemsep}{0pt}      % space between items
%     \setlength{\parsep}{0pt}       % space between paragraphs within an item
%     \setlength{\partopsep}{0pt}    % extra space added to \topsep when list starts a new paragraph
%     \fontspec[Path=OpenFonts/fonts/raleway/]{Raleway-Medium}
%     \fontsize{11pt}{13pt}\selectfont
%   }{\end{itemize}}


\newcommand{\letteritemfont}{%
  \raggedright%
  \fontspec[Path=OpenFonts/fonts/raleway/]{Raleway-Medium}%
  \fontsize{11pt}{13pt}\selectfont%
}
\newlist{letteritemize}{itemize}{1}
\setlist[letteritemize,1]{
  label=•,
  labelsep=0.5em,
  left=1.5em,       % indentasi kiri keseluruhan
  itemindent=0pt,
  labelwidth=1em,
  align=left,
  itemsep=0pt,
  topsep=6pt,       % spasi atas list
  partopsep=0pt,
  parsep=0pt,
  before=\letteritemfont\vspace{0pt},
  after=\vspace{12pt},
}

\newfontfamily\ralewayextrabold[Path=OpenFonts/fonts/raleway/]{Raleway-Bold.otf}
\renewcommand{\textbf}[1]{{\ralewayextrabold #1}}
\newcommand{\lettercontent}[1]{%
  \raggedright
  \sloppy
  \hyphenchar\font=`\-
  \fontspec[Path=OpenFonts/fonts/raleway/]{Raleway-Medium}%
  \fontsize{11pt}{13pt}\selectfont
  {#1}\par\vspace{12pt}
  \normalfont
}


\newcommand{\closing}[1]{\raggedright\fontspec[Path = OpenFonts/fonts/raleway/]{Raleway-Medium}\fontsize{11pt}{13pt}\selectfont {#1 \\}\mbox{}\\\mbox{}\\ \normalfont}

\newcommand{\signature}[1]{\raggedright\fontspec[Path = OpenFonts/fonts/raleway/]{Raleway-Medium}\fontsize{11pt}{13pt}\selectfont {#1 \\} \normalfont}