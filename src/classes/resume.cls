\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{report}[2025/07/09 Custom resume class]

% \LoadClass[a4paper,10pt]{article}
\LoadClass[a4paper,10pt]{extarticle}

\RequirePackage[utf8]{inputenc}
\RequirePackage[T1]{fontenc}
\RequirePackage[margin=0.7cm]{geometry}
\RequirePackage{enumitem}
\RequirePackage{titlesec}
\RequirePackage{url}
\RequirePackage{parskip}
\RequirePackage{amssymb}
\RequirePackage{changepage}
\RequirePackage[hidelinks]{hyperref}
\RequirePackage{titlesec}
\RequirePackage{ifthen}


\setlist{leftmargin=2em,labelsep=0.5em,nosep,itemsep=0.25\baselineskip,after=\vskip0.25\baselineskip}
\raggedbottom
\raggedright
\titleformat{\section}{\large\bfseries\uppercase}{}{0em}{}[\titlerule]
% \titlespacing*{\section}
%   {0pt}    % left margin
%   {1.0ex plus 1.0ex minus 1.0ex}    % space *before* the section
%   {1.0ex plus 1.0ex minus 1.0ex}    % space *after* the section

% Remove page numbers
\pagestyle{empty}
% Reduce parskip
\setlength{\parskip}{0pt}
\setlength{\parindent}{0pt}

\newcommand{\candidateName}{}
\newcommand{\setcandidatename}[1]{\renewcommand{\candidateName}{#1}}
\newcommand{\candidateEmail}{}
\newcommand{\setcandidateemail}[1]{\renewcommand{\candidateEmail}{\texttt{\href{mailto:#1}{#1}}}}
\newcommand{\candidateTelephone}{}
\newcommand{\setcandidatetelephone}[1]{\renewcommand{\candidateTelephone}{#1}}
\newcommand{\candidateGithub}{}
\newcommand{\setcandidategithub}[1]{\renewcommand{\candidateGithub}{#1}}
\newcommand{\candidateLinkedin}{}
\newcommand{\setcandidatelinkedin}[1]{\renewcommand{\candidateLinkedin}{#1}}
\newcommand{\candidatePresentation}{}
\newcommand{\setcandidatepresentation}[1]{\renewcommand{\candidatePresentation}{#1}}

\makeatletter

% Keys for titlepage
\define@key{makexpargs}{post}{\def\makexpargs@post{#1}}
\define@key{makexpargs}{company}{\def\makexpargs@company{#1}}
\define@key{makexpargs}{location}{\def\makexpargs@location{#1}}
\define@key{makexpargs}{duration}{\def\makexpargs@duration{#1}}
\define@key{makexpargs}{desc}{\def\makexpargs@desc{#1}}
\define@key{makeeduargs}{diploma}{\def\makeeduargs@diploma{#1}}
\define@key{makeeduargs}{school}{\def\makeeduargs@school{#1}}
\define@key{makeeduargs}{location}{\def\makeeduargs@location{#1}}
\define@key{makeeduargs}{duration}{\def\makeeduargs@duration{#1}}
\define@key{makeeduargs}{desc}{\def\makeeduargs@desc{#1}}
\define@key{makeprojectargs}{title}{\def\makeprojectargs@title{#1}}
\define@key{makeprojectargs}{desc}{\def\makeprojectargs@desc{#1}}

\newcommand{\makexp}[1]{
    \setkeys{makexpargs}{#1}
    % \noindent\textbf{\makexpargs@post}, \makexpargs@company, \makexpargs@location \hfill \makexpargs@duration\par
    \noindent\makexpargs@post, \makexpargs@company, \makexpargs@location \hfill \makexpargs@duration\par
    \makexpargs@desc\par
    \vspace{0.3em}
}

\newcommand{\makeedu}[1]{
    \setkeys{makeeduargs}{#1}
    % \noindent\textbf{\makeeduargs@diploma}, \makeeduargs@school, \hfill \makeeduargs@duration\par
    \noindent\makeeduargs@diploma, \makeeduargs@school \hfill \makeeduargs@duration\par
    \textit{\makeeduargs@desc}\par
    \vspace{0.3em}
}

\newcommand{\makeproject}[1]{
    \setkeys{makeprojectargs}{#1}
    % \noindent\textbf{\makeprojectargs@title}\par
    \noindent\makeprojectargs@title\par
    \makeprojectargs@desc\par
    \vspace{0.3em}
}

\newcommand{\candidateheader}[1]{
    \begin{center}
        {\Huge\bfseries \candidateName}\\[0.3em]
        \begingroup
        \hypersetup{hidelinks}
        \ifthenelse{\equal{#1}{has-git}}{
            \candidateTelephone\ | \candidateEmail\ | \candidateGithub\ | \url{\candidateLinkedin}\\[0.3em]
        }{
            \candidateTelephone\ | \candidateEmail\ | \url{\candidateLinkedin}\\[0.3em]
        \endgroup
    }
    \end{center}
}

\newcommand{\candidatepresentation}{
    {\itshape \candidatePresentation}
    \vspace{0.5em}
}

\newcommand{\cvsection}[1]{
    \bigskip
    {\large\bfseries\MakeUppercase{#1}}\\[-1ex]
    \rule{\linewidth}{1pt}\par
    \medskip
}

\newcommand{\cvskill}[2]{%
\noindent\textbf{\makebox[4cm][l]{#1}}#2\par
}


\makeatother

