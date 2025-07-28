% =============================================================================
% CLASSE LaTeX PARA ARTIGOS DO SIINTEC (baseada em IEEE Conference)
% Versão 2.1 (18/07/2025)
% =============================================================================

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{siintec}[2025/07/18 SIINTEC Article Template v2.1 (IEEE Conference style)]

% --- Classe base: IEEEtran conference ---
\LoadClass[conference,a4paper]{IEEEtran}

% --- Pacotes adicionais necessários ---
\RequirePackage[utf8]{inputenc}
\RequirePackage[T1]{fontenc}
\RequirePackage{times}
\RequirePackage{graphicx}
\RequirePackage{amsmath}
\RequirePackage{amssymb}
\RequirePackage{setspace}
\RequirePackage{hyperref}
\RequirePackage{fancyhdr}
\RequirePackage{caption}

% --- Margens e layout (ajustes para SIINTEC) ---
\RequirePackage[
  a4paper,
  top=15mm,
  bottom=15mm,
  left=20mm,
  right=17.5mm,
  includehead,
  includefoot
]{geometry}

% --- Cabeçalho e rodapé personalizados ---
\fancypagestyle{siintecstyle}{%
    \fancyhf{}
    \fancyhead[C]{%
      \makebox[0pt][l]{%
        \begin{minipage}{\paperwidth}
          \vspace*{-2.5em}
          \includegraphics[width=\paperwidth]{siintec.png}
        \end{minipage}%
      }
    }
    \fancyfoot[L]{\fontsize{8}{10}\selectfont ISSN: 2357-7592}
    \fancyfoot[R]{\fontsize{8}{10}\selectfont XI INTERNATIONAL SYMPOSIUM ON INNOVATION AND TECHNOLOGY}
    \renewcommand{\headrulewidth}{0.4pt}
    \renewcommand{\footrulewidth}{0.4pt}
}
\fancypagestyle{plain}{%
  \fancyhf{}
  \fancyhead[C]{%
    \makebox[0pt][l]{%
      \begin{minipage}{\paperwidth}
        \vspace*{-2.5em}
        \includegraphics[width=\paperwidth]{siintec.png}
      \end{minipage}%
    }
  }
  \fancyfoot[L]{\fontsize{8}{10}\selectfont ISSN: 2357-7592}
  \fancyfoot[R]{\fontsize{8}{10}\selectfont XI INTERNATIONAL SYMPOSIUM ON INNOVATION AND TECHNOLOGY}
  \renewcommand{\headrulewidth}{0.4pt}
  \renewcommand{\footrulewidth}{0.4pt}
}

% --- Abstract, Keywords, Abbreviations (Times New Roman, 10pt, Bold label) ---
\newenvironment{siintecabstract}{%
  \par\vspace{1em}
  {\noindent\textbf{\fontfamily{ptm}\selectfont\fontsize{10}{12} Abstract:}}
  \par\noindent\fontfamily{ptm}\selectfont\fontsize{10}{12}\selectfont
}{\par\vspace{1em}}

\newenvironment{keywords}{%
  \par\vspace{1em}
  {\noindent\textbf{\fontfamily{ptm}\selectfont\fontsize{10}{12} Keywords:}}
  \par\noindent\fontfamily{ptm}\selectfont\fontsize{10}{12}\selectfont
}{\par\vspace{1em}}

\newenvironment{abbreviations}{%
  \par\vspace{1em}
  {\noindent\textbf{\fontfamily{ptm}\selectfont\fontsize{10}{12} Abbreviations:}}
  \par\noindent\fontfamily{ptm}\selectfont\fontsize{10}{12}\selectfont
}{\par\vspace{1em}}

% --- Legendas de figuras e tabelas ---
\captionsetup[table]{position=top, justification=justified, singlelinecheck=off, labelfont=bf, labelsep=period}
\captionsetup[figure]{position=bottom, justification=justified, singlelinecheck=off, labelfont=bf, labelsep=period}

% --- Bibliografia ---
\let\oldthebibliography\thebibliography
\let\endoldthebibliography\endthebibliography
\renewenvironment{thebibliography}[1]{%
  \oldthebibliography{#1}%
  \fontsize{10}{12}\selectfont
}{%
  \endoldthebibliography
}

\endinput