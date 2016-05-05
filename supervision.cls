\def\fileversion{1.0}
\def\filedate{2015/04/17}

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{supervision}[\filedate\space LaTeX Supervision Class \fileversion\space by Michael B. Gale]

\DeclareOption*{
	\ClassWarning{myclass}{Unknown option '\CurrentOption'}
	\PassOptionsToClass{\CurrentOption}{exam}
}

\ExecuteOptions{10pt}

% stop processing options
\ProcessOptions\relax

\LoadClass[10pt,a4paper]{exam}

\RequirePackage[latin1]{inputenc}
\usepackage{amsmath}
\usepackage{amsfonts}
\usepackage{amssymb}
\usepackage[dvipsnames]{xcolor}
\usepackage{graphicx}
\usepackage{titlesec}
\usepackage{hyperref}
\usepackage{fancyeq}
\usepackage{tikz}
%\usepackage{tikz-uml}
\usepackage{mathpartir}
\usetikzlibrary{matrix,decorations.pathmorphing,shapes,arrows,backgrounds,positioning}

\usepackage{geometry}
\usepackage{everysel}
\usepackage[normalem]{ulem}
\usepackage{natbib}

\usepackage[sc]{mathpazo}
\linespread{1.05}         % Palatino needs more leading (space between lines)
\usepackage[T1]{fontenc}

% some format settings
% for hard-bound final submission, use:
%\setlength{\oddsidemargin}{4.6mm}     % 30 mm left margin - 1 in
% for soft-bound version and techreport, use instead:

\setlength{\oddsidemargin}{-0.4mm}    % 25 mm left margin - 1 in
\setlength{\evensidemargin}{\oddsidemargin}
\setlength{\topmargin}{-5.4mm}        % 20 mm top margin - 1 in
\setlength{\textwidth}{160mm}         % 20/25 mm right margin
\setlength{\textheight}{237mm}        % 20 mm bottom margin
\setlength{\headheight}{5mm}
\setlength{\headsep}{5mm}
\setlength{\parindent}{0mm}
\setlength{\parskip}{\medskipamount}
\renewcommand\baselinestretch{1.2} % thesis format (not needed for techreport)
% don't let large figures hijack entire pages
\renewcommand\topfraction{.9}
\renewcommand\textfraction{.1}
\renewcommand\floatpagefraction{.8}

\pagestyle{headandfoot}
%\pointsinrightmargin
%\pointname{ marks}
%\marginpointname{ marks}

\marksnotpoints 

\definecolor{campurple}{HTML}{862D91} 
\definecolor{campurpledark}{HTML}{2A185C}

\hypersetup{  
	urlcolor=campurple,
	linkcolor=campurple,
	colorlinks=true  
}

\titlelabel{\llap{\thetitle\quad}}

\newcommand {\lbrac} {\makebox[0pt]{[\kern-1ex[}}
\newcommand {\rbrac} {\makebox[0pt]{]\kern-1ex]}}
\newcommand{\denote}[1]{\lbrac~#1~\rbrac}


\def\mystrut(#1,#2){\vrule height #1pt depth #2pt width 0pt} 

\titlespacing*{\section}{0pt}{0pt}{0pt}

\everymath{\color{campurpledark}}
\everydisplay{\color{campurpledark}}

\marksnotpoints
\pointsdroppedatright
\marksnotpoints
\marginpointname{ \points}

\immediate\write18{git rev-parse --short HEAD > commit.tex}
\immediate\write18{date > date.tex}

\endinput
