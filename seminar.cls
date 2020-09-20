\NeedsTeXFormat{LaTeX2e} % ??
\ProvidesClass{seminar}[2020/09/19 LaTeX class for seminar in math]
% initially created by Leonard Pauli, sep 2020

% !TEX options = -shell-escape -interaction=batchmode "%DOC%"
% ^above line: ensure eg. external programs like plotting works through vscode."latex workshop" - put this line in the top of the document + cmd-shift-p ("build project", then "view in tab")
% brew install gnuplot; gnuplot *.gnuplot # after each plot formula change

% class options
% \DeclareOption{onecolumn}{\OptionNotUsed}
% \DeclareOption{semNr}{\renewcommand{\semNr}{\color{green}}}
% \DeclareOption{red}{\renewcommand{\headlinecolor}{\color{slcolor}}}
% \DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
% \ProcessOptions\relax


% packages
\LoadClass[a4paper,10pt]{article} % base class/styling
\usepackage{iftex}
\ifxetex
  \usepackage{polyglossia} % modern babel like replacement for xelatex
  \setdefaultlanguage{english}
\else
  \usepackage[T1]{fontenc} % ensure 256 (vs 128) chars; eg. ability to copy ö and not have it split
  \usepackage[utf8]{inputenc} % ensure utf8 (vs ascii)
  \usepackage[english]{babel} % ensure not user-dependent
\fi
\usepackage{amsmath} % math symbols?
\usepackage{amsfonts} % math symbols?
\usepackage{amssymb} % \blacksquare
\usepackage{centernot} % allows eg. \centernot\implies
\usepackage[margin=1.86cm]{geometry} % sets margin
\usepackage[shortlabels]{enumitem} % ?
\usepackage{bbm} % enables \mathbb{Z} ?
\usepackage{pgfplots} % certain plot features
\pgfplotsset{compat=1.16} % ?
\usepackage{wrapfig} % enables floating figures with text wrapping around
\usepackage{graphicx} % ?
\usepackage{sidecap} % enables commands for caption to the side of figures, instead of below
\usepackage{caption} % ?
\usepackage{polynom} % for polynomial division
\usepackage{fancyhdr} % header + footer
\usepackage{footnote} % ?
\usepackage{lastpage} % enables \pageref{LastPage}
\makesavenoteenv{tabular} % footnotes in tabular env?

% no paragraph indentation
\setlength{\parindent}{0pt}

% use section format "1.2.a)"
\renewcommand{\thesubsubsection}{\thesubsection. \alph{subsubsection})}
\newcommand{\thesubsubsectionref}{\thesubsection.\alph{subsubsection}}

% make section nr to SeminarNr
\setcounter{section}{\SeminarNr}
\addtocounter{section}{-1}

% setup document vars from class vars
\title{Seminar \SeminarNr - \Course}
\author{\Author}
\date{\Date}

% header and footer
\pagestyle{fancy}
\fancyhf{}
\rhead{Seminar \SeminarNr, \Course, \Organization}
\lhead{\Author\ExtraHeaderLeft, \Date}
\rfoot{Page \thepage\;of \pageref{LastPage}}

% environment for quoting questions
\newenvironment{questionquote}%
{\begin{tabular}{|p{0.97\textwidth}}}%
{\end{tabular}\bigskip}

% additional math commands

% \newcommand*{\complement}{\ensuremath{\mathsf{c}}}
\newcommand*{\Rel}[1][R]{\ensuremath{\mathbin\mathcal{#1}}} % use \mathbin\mathcal{#1}?
\newcommand*{\Z}{\ensuremath{\mathbb{Z}}}
\newcommand*{\R}{\ensuremath{\mathbb{R}}}
\newcommand*{\N}{\ensuremath{\mathbb{N}}}


% scratchpad

% \newcommand{\headlinecolor}{\normalcolor}
% \LoadClass[twocolumn]{article}
% \RequirePackage{xcolor} % RequirePackage apparently preferred over usepackage for .cls files?
% \definecolor{slcolor}{HTML}{882B21}

% \makeatletter
% \makeatother

% \def\temp{asdfa}\ifx\temp\empty <EMPTY> \else <NON EMPTY> \fi
