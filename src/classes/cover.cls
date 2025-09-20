\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{report}[2025/08/01 Custom cover letter class]

\LoadClass[a4paper,11pt]{extarticle}

\RequirePackage[utf8]{inputenc}
\RequirePackage[T1]{fontenc}
\RequirePackage[french]{babel}
\RequirePackage{geometry}
\RequirePackage{setspace}
\RequirePackage{parskip}
\RequirePackage{lmodern}

\geometry{margin=1.5cm}

\newcommand{\postName}{}
\newcommand{\setpostname}[1]{\renewcommand{\postName}{#1}}
\newcommand{\supervisorName}{}
\newcommand{\setsupervisorname}[1]{\renewcommand{\supervisorName}{#1}}
\newcommand{\labName}{}
\newcommand{\setlabname}[1]{\renewcommand{\labName}{#1}}
\newcommand{\researchTopic}{}
\newcommand{\setreshearchtopic}[1]{\renewcommand{\researchTopic}{#1}}
\newcommand{\companyName}{}
\newcommand{\setcompanyname}[1]{\renewcommand{\companyName}{#1}}
% \newcommand{\name}{}
% \newcommand{\setlower}[1]{\renewcommand{\name}{#1}}
