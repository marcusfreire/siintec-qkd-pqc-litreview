%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% SIINTEC Article Class
% Simpósio Internacional de Inovação e Tecnologia
% International Symposium on Innovative Technologies
% 
% Author: Nelson Alves Ferreira Neto
% Email: nelsonafn@gmail.com
% Date: July 29, 2025
% Version: 1.0
% 
% Description: LaTeX document class for SIINTEC conference papers. This class 
%              provides formatting for academic articles with specific 
%              typography, layout, and styling requirements for the 
%              International Symposium on Innovative Technologies.
%
% Features:
%   - Two-column A4 layout with custom margins
%   - Times New Roman font family
%   - Custom header with conference logo
%   - Formatted sections, subsections, and subsubsections
%   - Abstract environment with keywords and abbreviations
%   - Bibliography formatting with square brackets
%   - Custom commands for title, author, and affiliation formatting
%   - ISSN: 2357-7592
%
% Usage:
%   \documentclass{siintec}
%   \siintectitle{Your Article Title}
%   \siintecauthor[1]{Author Name}
%   \siintecaffil[1]{Institution Name}
%   \siintecabstract{Abstract text}{keywords}{abbreviations}
%
% Requirements:
%   - siintec.png (conference header image)
%   - Standard LaTeX packages (see package list below)
%
% Conference Theme 2025: 
%   "Quantum Technologies: The information revolution that will change the future"
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{siintec}[2025/07/29 SIINTEC Article Class by Nelson Alves Ferreira Neto]

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% BASE CLASS CONFIGURATION
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Load the article class as base with 12pt font, two-column layout on A4 paper
\LoadClass[12pt,twocolumn,a4paper]{article}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% REQUIRED PACKAGES
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\RequirePackage[utf8]{inputenc}      % UTF-8 input encoding
\RequirePackage[T1]{fontenc}         % T1 font encoding for better character support
\RequirePackage{graphicx}            % Graphics inclusion support
\RequirePackage{amsmath,amssymb}     % Advanced math symbols and environments
\RequirePackage{geometry}            % Page layout and margin control
\RequirePackage{setspace}            % Line spacing control
\RequirePackage{indentfirst}         % Indent first paragraph of sections
\RequirePackage{hyperref}            % Hyperlinks and PDF metadata
\RequirePackage{mathptmx}            % Times New Roman font family
\RequirePackage{fancyhdr}            % Custom headers and footers
\RequirePackage{tikz}                % Drawing and graphics
\RequirePackage{titlesec}            % Section title formatting
\RequirePackage{fullwidth}           % Full-width elements in two-column layout
\RequirePackage{blindtext}           % Dummy text for testing
\RequirePackage{lipsum}              % Lorem ipsum text generation
\RequirePackage{authblk}             % Author and affiliation management
\RequirePackage{caption}             % Caption formatting and types
\RequirePackage{xcolor}              % Color support
\RequirePackage{etoolbox}            % Programming tools for LaTeX

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% PAGE GEOMETRY AND LAYOUT
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Set page margins: top=13mm, bottom=40mm, left=20mm, right=17.5mm
\geometry{a4paper,top=13mm,bottom=40mm,left=20mm,right=17.5mm}

% Configure header dimensions to accommodate the conference logo
\setlength{\headheight}{68.89616pt}  % Height for header content
\setlength{\headsep}{0pt}            % No separation between header and text
\setlength{\parindent}{0pt}          % No paragraph indentation

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% SECTION FORMATTING
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Main section formatting: bold, 12pt font with numbered sections
\titleformat{\section}
    {\normalfont\bfseries\fontsize{12}{14}\selectfont}  % Bold 12pt font
    {\thesection.}{0.3em}{}                             % Section number + dot + 0.3em space
\titlespacing*{\section}{0pt}{1.2ex plus 0.2ex minus .2ex}{0.5ex}

% Subsection formatting: same style as sections but with subsection numbering
\titleformat{\subsection}
    {\normalfont\bfseries\fontsize{12}{14}\selectfont}  % Bold 12pt font
    {\thesubsection.}{0.3em}{}                          % Subsection number + dot + 0.3em space
\titlespacing*{\subsection}{0pt}{1.2ex plus 0.2ex minus .2ex}{0.5ex}

% Subsubsection formatting: consistent with other heading levels
\titleformat{\subsubsection}
    {\normalfont\bfseries\fontsize{12}{14}\selectfont}  % Bold 12pt font
    {\thesubsubsection.}{0.3em}{}                       % Subsubsection number + dot + 0.3em space
\titlespacing*{\subsubsection}{0pt}{1.2ex plus 0.2ex minus .2ex}{0.5ex}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% HEADER AND FOOTER CONFIGURATION
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\pagestyle{fancy}                    % Use fancy header/footer style
\renewcommand{\headrulewidth}{0pt}   % Remove header rule line
\fancyhead{}                         % Clear all header fields

% Left header: full-width conference logo
\fancyhead[l]{%
  \makebox[0pt][l]{\hspace*{-\oddsidemargin}\hspace*{-1in}%
    \includegraphics[width=\paperwidth]{siintec.png}}%
}

\fancyfoot{}                         % Clear all footer fields

% Left footer: conference information in gray text
\fancyfoot[L]{\fontsize{10}{12}\selectfont\textcolor{gray}{ISSN: 2357-7592 \\ \textit{XI INTERNATIONAL SYMPOSIUM ON INNOVATION AND TECHNOLOGY \\ Quantum Technologies: The information revolution that will change the future -- 2025}}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% TITLE FORMATTING
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Custom title layout that spans both columns
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

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ABSTRACT ENVIRONMENT
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Custom abstract environment with specific width and font settings
\renewenvironment{abstract}
 {\begin{center}\begin{minipage}{0.928\textwidth}\setstretch{1}
        \fontsize{10}{12}\selectfont}
 {\end{minipage}\end{center}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% CAPTION CONFIGURATION
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Define a new caption type for graphics
\DeclareCaptionType{graphic}[Graphic][graph]

% Customize caption names to use bold formatting
\renewcommand{\figurename}{\textbf{Figure}}
\renewcommand{\tablename}{\textbf{Table}}
\renewcommand{\graphicname}{\textbf{Graphic}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% DOCUMENT TEXT SPACING
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Set document-wide spacing at the beginning of the document
\AtBeginDocument{%
  \setstretch{1.5}                           % 1.5 line spacing
  \setlength{\parskip}{0.5\baselineskip}     % Half-line paragraph separation
  \normalsize
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% BIBLIOGRAPHY FORMATTING
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Configure bibliography appearance at document end
\AtEndDocument{%
  \renewcommand{\refname}{References}
  \begingroup
    \setstretch{1.0}                         % Single spacing for references
    \fontsize{10}{12}\selectfont             % Smaller font for references
    \setlength{\parskip}{0pt}                % No paragraph spacing
    \setlength{\itemsep}{0pt}                % No item spacing
  \endgroup
}

% Bibliography environment formatting with square brackets
\AtBeginEnvironment{thebibliography}{%
  \fontsize{10}{12}\selectfont              % 10pt font for bibliography
  \setlength{\itemsep}{0pt}                 % No spacing between items
  \setlength{\parskip}{0pt}                 % No paragraph spacing
  \renewcommand{\@biblabel}[1]{[#1]}        % Square brackets for numbering
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% CUSTOM COMMANDS FOR EASY FORMATTING
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Command for setting the document title with proper formatting
\newcommand{\siintectitle}[1]{%
  \title{\vspace*{-0.2em}\bfseries\fontsize{12}{14}\selectfont #1\vspace*{-0.5em}}
}

% Command for setting author with optional affiliation number
\newcommand{\siintecauthor}[2][]{%
  \author[#1]{\bfseries\fontsize{10}{12}\selectfont #2\vspace*{-0.6em}}
}

% Command for setting affiliation with optional number
\newcommand{\siintecaffil}[2][]{%
  \affil[#1]{\vspace*{-0.7em}\itshape\fontsize{10}{12}\selectfont #2}
}

% Command for setting empty date (removes default date)
\newcommand{\siintecdate}{%
  \date{\itshape\fontsize{10}{12}\selectfont }
}

% Command for creating formatted abstract with keywords and abbreviations
% Parameters: #1 = abstract text, #2 = keywords, #3 = abbreviations
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

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% END OF CLASS FILE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%