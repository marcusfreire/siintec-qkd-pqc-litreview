\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{siintec}[2025/07/29 SIINTEC Article Class]

% Load base class
\LoadClass[12pt,twocolumn,a4paper]{article}

% Required packages
\RequirePackage[utf8]{inputenc}
\RequirePackage[T1]{fontenc}
\RequirePackage{graphicx}
\RequirePackage{amsmath,amssymb}
\RequirePackage{geometry}
\RequirePackage{setspace}
\RequirePackage{indentfirst}
\RequirePackage{hyperref}
\RequirePackage{mathptmx} % Times New Roman
\RequirePackage{fancyhdr}
\RequirePackage{tikz}
\RequirePackage{titlesec}
\RequirePackage{fullwidth}
\RequirePackage{blindtext}
\RequirePackage{lipsum}
\RequirePackage{authblk} % For author affiliations
\RequirePackage{caption}
\RequirePackage{xcolor}

% Geometry settings
\geometry{a4paper,top=13mm,bottom=40mm,left=20mm,right=17.5mm}
\setlength{\headheight}{68.89616pt}
\setlength{\headsep}{0pt}
\setlength{\parindent}{0pt}

% Section formatting
\titleformat{\section}
    {\normalfont\bfseries\fontsize{12}{14}\selectfont}
    {\thesection.}{0.3em}{}
\titlespacing*{\section}{0pt}{1.2ex plus 0.2ex minus .2ex}{0.5ex}

\titleformat{\subsection}
    {\normalfont\bfseries\fontsize{12}{14}\selectfont}
    {\thesubsection.}{0.3em}{}
\titlespacing*{\subsection}{0pt}{1.2ex plus 0.2ex minus .2ex}{0.5ex}

\titleformat{\subsubsection}
    {\normalfont\bfseries\fontsize{12}{14}\selectfont}
    {\thesubsubsection.}{0.3em}{}
\titlespacing*{\subsubsection}{0pt}{1.2ex plus 0.2ex minus .2ex}{0.5ex}

% Header and footer setup
\pagestyle{fancy}
\renewcommand{\headrulewidth}{0pt}
\fancyhead{}
\fancyhead[l]{%
  \makebox[0pt][l]{\hspace*{-\oddsidemargin}\hspace*{-1in}%
    \includegraphics[width=\paperwidth]{siintec.png}}%
}
\fancyfoot{}
\fancyfoot[L]{\fontsize{10}{12}\selectfont\textcolor{gray}{ISSN: 2357-7592 \\ \textit{XI INTERNATIONAL SYMPOSIUM ON INNOVATION AND TECHNOLOGY \\ Quantum Technologies: The information revolution that will change the future -- 2025}}}

% Title formatting
\renewcommand{\maketitle}{%
  \twocolumn[%
    \begin{center}
      {\vspace*{-1em}\bfseries\fontsize{12}{14}\selectfont\@title\vspace*{-0.5em}\par}
    \end{center}
    \@author
    \thispagestyle{fancy}
    \vspace*{-3.5em}
  ]%
}

% Abstract environment formatting
\renewenvironment{abstract}
 {\begin{center}\begin{minipage}{0.928\textwidth}\setstretch{1}
        \fontsize{10}{12}\selectfont}
 {\end{minipage}\end{center}}

% Caption types
\DeclareCaptionType{graphic}[Graphic][graph]

% Redefine caption names
\renewcommand{\figurename}{\textbf{Figure}}
\renewcommand{\tablename}{\textbf{Table}}
\renewcommand{\graphicname}{\textbf{Graphic}}

% Text spacing setup
\AtBeginDocument{%
  \setstretch{1.5}
  \setlength{\parskip}{0.5\baselineskip}
  \normalsize
}

% Bibliography formatting
\AtEndDocument{%
  \renewcommand{\refname}{References}
  \begingroup
    \setstretch{1.0}
    \fontsize{10}{12}\selectfont
    \setlength{\parskip}{0pt}
    \setlength{\itemsep}{0pt}
  \endgroup
}

\usepackage{etoolbox}
\AtBeginEnvironment{thebibliography}{%
  \fontsize{10}{12}\selectfont
  \setlength{\itemsep}{0pt}
  \setlength{\parskip}{0pt}
  \renewcommand{\@biblabel}[1]{[#1]} % Square brackets for numbering
}

% Commands for easy formatting
\newcommand{\siintectitle}[1]{%
  \title{\vspace*{-0.2em}\bfseries\fontsize{12}{14}\selectfont #1\vspace*{-0.5em}}
}

\newcommand{\siintecauthor}[2][]{%
  \author[#1]{\bfseries\fontsize{10}{12}\selectfont #2\vspace*{-0.6em}}
}

\newcommand{\siintecaffil}[2][]{%
  \affil[#1]{\vspace*{-0.7em}\itshape\fontsize{10}{12}\selectfont #2}
}

\newcommand{\siintecdate}{%
  \date{\itshape\fontsize{10}{12}\selectfont }
}

\newcommand{\siintecabstract}[3]{%
  \twocolumn[%
    \begin{center}
      {\vspace*{0em}\bfseries\fontsize{12}{14}\selectfont\@title\vspace*{0.5em}\par}
      \@author
    \end{center}
    
    \thispagestyle{fancy}
    \vspace*{-1.em}

  \begin{abstract}
    \textbf{Abstract: #1}

    \textbf{Keywords: #2 }

    \textbf{Abbreviations: #3}
  \end{abstract}
  \vspace*{1em}
]
}