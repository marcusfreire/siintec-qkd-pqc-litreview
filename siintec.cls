% =============================================================================
% CLASSE LaTeX PARA ARTIGOS DO SIINTEC
% Versão 1.1 (Julho/2025) - Correção de erro na formatação de \section*
% Baseado no template "Cópia de SIINTEC TEMPLATE -2025.docx"
% =============================================================================

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{siintec}[2025/07/16 SIINTEC Article Template v1.1]

% --- Classe base e opções globais
% Página A4, formato de duas colunas
\LoadClass[a4paper, twocolumn]{article}

% --- Pacotes necessários para formatação
\RequirePackage[utf8]{inputenc}
\RequirePackage[T1]{fontenc}
\RequirePackage{times} % Para usar a fonte Times New Roman
\RequirePackage{graphicx}
\RequirePackage{amsmath}
\RequirePackage{amssymb}
\RequirePackage{setspace} % Para espaçamento duplo
\RequirePackage{hyperref} % Para links clicáveis (URLs, DOIs)

% --- Configuração de Margens
\RequirePackage[
  top=15mm,
  bottom=15mm,
  left=20mm,
  right=17.5mm,
  columnsep=15pt % Valor padrão que se aproxima de 1.93 caracteres
]{geometry}

% --- Configuração do Bloco de Título, Autores e Afiliações
\RequirePackage{titling}

% Fontes
\pretitle{\begin{center}\fontsize{12}{14}\bfseries}
\posttitle{\par\end{center}\vspace{2\baselineskip}} % Espaço duplo após o título
\preauthor{\begin{center}\fontsize{10}{12}\bfseries}
\postauthor{\par\end{center}\vspace{\baselineskip}} % Espaço simples após os autores

% Comandos customizados para afiliação e autor correspondente
\newcommand{\affiliation}[1]{{\centering\fontsize{10}{12}\itshape #1\par}}
\newcommand{\correspondingauthor}[1]{{\centering\fontsize{10}{12}\itshape *#1\par}}

% --- Configuração do Resumo (Abstract) e Palavras-chave (Keywords)
\renewenvironment{abstract}{%
  \par\noindent\fontsize{10}{12}\bfseries % Formato do corpo do resumo
  Abstract: \normalfont\bfseries % Prefixo e fonte
}{%
  \par\bigskip
}

\newenvironment{keywords}{%
  \par\noindent\fontsize{10}{12}\bfseries % Formato das palavras-chave
  Keywords: \normalfont\bfseries % Prefixo e fonte
}{%
  \par\bigskip
}

% --- Configuração dos Títulos de Seção
\RequirePackage[
  explicit
]{titlesec}

% Nível 1: Ex: 1. Introdução
\titleformat{\section}
  {\fontsize{12}{14}\bfseries}
  {\thesection.}
  {1em}
  {#1}

% Nível 2: Ex: 2.1. Layout
\titleformat{\subsection}
  {\fontsize{12}{14}\normalfont\underline}
  {\thesubsection}
  {1em}
  {#1}

% Nível 3: Ex: 2.1.1. Fonte do Texto
\titleformat{\subsubsection}
  {\fontsize{10}{12}\itshape}
  {\thesubsubsection}
  {1em}
  {#1}

% --- CORREÇÃO APLICADA AQUI ---
% Formatação para seções não numeradas (ex: \section*{Agradecimentos})
\titleformat{name=\section,numberless}
  {\fontsize{12}{14}\bfseries\centering}
  {}
  {0em}
  {#1}
% --- FIM DA CORREÇÃO ---


% --- Configuração de Legendas (Figuras e Tabelas)
\RequirePackage{caption}

% Legendas das Tabelas: acima, à esquerda, fonte 12pt
\captionsetup[table]{
  position=top,
  justification=justified,
  singlelinecheck=off,
  font={fontsize=12,rm},
  labelfont=rm,
  labelsep=period
}

% Legendas das Figuras: abaixo, fonte 12pt, rótulo em negrito
\captionsetup[figure]{
  position=bottom,
  font={fontsize=12,rm},
  labelfont={bf},
  labelsep=period,
  justification=justified, 
  singlelinecheck=off
}

% --- Configuração da Bibliografia
% Define a fonte como 10pt para as referências
\renewcommand{\bibfont}{\fontsize{10}{12}\selectfont}

\endinput
% =============================================================================
% FIM DA CLASSE siintec.cls
% =============================================================================