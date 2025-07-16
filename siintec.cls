% =============================================================================
% CLASSE LaTeX PARA ARTIGOS DO SIINTEC
% Versão 1.0 (Julho/2025)
% Baseado no template "Cópia de SIINTEC TEMPLATE -2025.docx"
% =============================================================================

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{siintec}[2025/07/16 SIINTEC Article Template]

% --- Classe base e opções globais
% Página A4 [cite: 22], formato de duas colunas [cite: 24]
\LoadClass[a4paper, twocolumn]{article}

% --- Pacotes necessários para formatação
\RequirePackage[utf8]{inputenc}
\RequirePackage[T1]{fontenc}
\RequirePackage{times} % Para usar a fonte Times New Roman
\RequirePackage{graphicx}
\RequirePackage{amsmath}
\RequirePackage{amssymb}
\RequirePackage{setspace} % Para espaçamento duplo [cite: 32]
\RequirePackage{hyperref} % Para links clicáveis (URLs, DOIs)

% --- Configuração de Margens [cite: 23]
\RequirePackage[
  top=15mm,
  bottom=15mm,
  left=20mm,
  right=17.5mm,
  columnsep=1.93\ccwd % Aproximação para "1.93 caracteres" [cite: 24]
]{geometry}

% --- Configuração do Bloco de Título, Autores e Afiliações
\RequirePackage{titling}

% Fontes
\pretitle{\begin{center}\fontsize{12}{14}\bfseries}
\posttitle{\par\end{center}\vspace{2\baselineskip}} % Espaço duplo após o título [cite: 27]
\preauthor{\begin{center}\fontsize{10}{12}\bfseries}
\postauthor{\par\end{center}\vspace{\baselineskip}} % Espaço simples após os autores [cite: 30]

% Commandos customizados para afiliação e author correspondente
\newcommand{\affiliation}[1]{{\centering\fontsize{10}{12}\itshape #1\par}}
\newcommand{\correspondingauthor}[1]{{\centering\fontsize{10}{12}\itshape *#1\par}}

% --- Configuração do Resumo (Abstract) e Palavras-chave (Keywords)
\renewenvironment{abstract}{%
  \par\noindent\fontsize{10}{12}\bfseries % Formato do corpo do resumo [cite: 9]
  Abstract: \normalfont\bfseries % Prefixo e fonte
}{%
  \par\bigskip
}

\newenvironment{keywords}{%
  \par\noindent\fontsize{10}{12}\bfseries % Formato das palavras-chave [cite: 10]
  Keywords: \normalfont\bfseries % Prefixo e fonte
}{%
  \par\bigskip
}

% --- Configuração dos Títulos de Seção
\RequirePackage[
  explicit
]{titlesec}

% Nível 1: Ex: 1. Introdução [cite: 35]
\titleformat{\section}
  {\fontsize{12}{14}\bfseries}
  {\thesection.}
  {1em}
  {#1}

% Nível 2: Ex: 2.1. Layout [cite: 35]
% Nota: O doc original tem instruções contraditórias. Segui a instrução de "underline".
\titleformat{\subsection}
  {\fontsize{12}{14}\normalfont\underline}
  {\thesubsection}
  {1em}
  {#1}

% Nível 3: Ex: 2.1.1. Fonte do Texto [cite: 36]
\titleformat{\subsubsection}
  {\fontsize{10}{12}\itshape}
  {\thesubsubsection}
  {1em}
  {#1}

% Remove numeração da seção de Referências e Agradecimentos [cite: 65, 100]
\titleformat{\section*}
  {\fontsize{12}{14}\bfseries\centering}
  {}
  {0em}
  {#1}

% --- Configuração de Legendas (Figuras e Tabelas)
\RequirePackage{caption}

% Legendas das Tabelas: acima, à esquerda, fonte 12pt [cite: 61, 62, 63]
\captionsetup[table]{
  position=top,
  justification=justified,
  singlelinecheck=off,
  font={fontsize=12,rm},
  labelfont=rm,
  labelsep=period
}

% Legendas das Figuras: abaixo, fonte 12pt, rótulo em negrito [cite: 51, 54]
% Nota: O doc dizia para colocar a descrição acima [cite: 50] e o número abaixo[cite: 54].
% Isso é muito incomum. Segui o padrão e o exemplo visual (legenda inteira abaixo).
\captionsetup[figure]{
  position=bottom,
  font={fontsize=12,rm},
  labelfont={bf},
  labelsep=period,
  justification=justified, % Justificado para múltiplas linhas [cite: 53]
  singlelinecheck=off % Garante alinhamento à esquerda para linha única
}

% --- Configuração da Bibliografia
% Define a fonte como 10pt para as referências [cite: 65]
\renewcommand{\bibfont}{\fontsize{10}{12}\selectfont}

\endinput
% =============================================================================
% FIM DA CLASSE siintec.cls
% =============================================================================