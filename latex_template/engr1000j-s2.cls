%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR1000J-S2.cls
% Custom LaTeX class for UM-SJTU ENGR1000J-S2 course
% Author: ENGR1000J-S2 Teaching Team (2025)
% Constructed by Zeyi Chen and revised by Xinchang Wang
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\ProvidesClass{engr1000j-s2}[2025/06/09, v1.1 Custom ENGR1000J Template]

\LoadClass[10pt]{article}

% --- Basic Encoding and Font  ---
\RequirePackage[T1]{fontenc}
\RequirePackage[utf8]{inputenc}
\RequirePackage{microtype}    
\RequirePackage{newtxtext,newtxmath} 
\RequirePackage{CJKutf8}    
\RequirePackage{graphicx}   
\RequirePackage{caption}    
\RequirePackage{textcase}
\RequirePackage{tocloft}    
\RequirePackage{parskip}    
\RequirePackage{booktabs}   
\RequirePackage{longtable}  
\RequirePackage{xcolor}     
\RequirePackage{fancyhdr}   
\RequirePackage[export]{adjustbox} 
\RequirePackage{setspace}   
\RequirePackage[numbib,nottoc]{tocbibind} 
\RequirePackage{array}
\RequirePackage{makecell}


% --- Page Geometry ---
\RequirePackage[letterpaper,top=1in,bottom=1in,left=1.25in,right=1.25in]{geometry}

% --- Table of Contents Customizations ---
\renewcommand{\contentsname}{Table of Contents}

\renewcommand{\cfttoctitlefont}{\Large\bfseries}
\renewcommand{\cftsecfont}{\normalsize\bfseries\MakeTextUppercase}
\renewcommand{\cftsubsecfont}{\normalsize\MakeTextUppercase}
\renewcommand{\cftsubsubsecfont}{\normalsize\MakeTextUppercase}

\setlength{\cftbeforetoctitleskip}{2em}  
\setlength{\cftaftertoctitleskip}{13pt} 
\setlength{\cftbeforesecskip}{12pt}     
\setlength{\cftbeforesubsecskip}{8pt}    
\setlength{\cftbeforesubsubsecskip}{8pt}  

% --- Bibliography Settings ---
\RequirePackage[sort&compress,numbers]{natbib}
\bibliographystyle{new-aiaa}
\renewcommand{\bibfont}{\small}
\RequirePackage[hyphens]{url}
\RequirePackage{hyperref}
\renewcommand{\bibname}{Reference} 


% --- Paragraph Formatting ---
\setlength{\parskip}{18pt}

% --- Line Spacing ---
\AtBeginDocument{
  \linespread{1}
  \setlength{\baselineskip}{13pt}
}

% --- Caption Formatting ---
\captionsetup[figure]{labelfont=bf,labelsep=space,justification=justified,font=small,skip=6pt}
\captionsetup[table]{labelfont=bf,labelsep=space,justification=justified,font=small,skip=6pt}
\RequirePackage[tableposition=top]{caption}
\renewcommand{\figurename}{Fig.}
\captionsetup*{font=bf,labelsep=quad}
\renewcommand{\arraystretch}{1.2}

% --- Section Title Formatting ---
\RequirePackage{titlesec}
\renewcommand{\thesection}{\Roman{section}}
\renewcommand{\thesubsection}{\thesection.\Alph{subsection}}
\renewcommand{\thesubsubsection}{\thesubsection.\arabic{subsubsection}}
\titleformat{\section}
  {\large\bfseries\singlespacing}
  {\thesection.\quad}{0pt}{}[]
\titlespacing{\section}{0pt}{0.5\baselineskip}{13pt}
\titleformat{\subsection}
  {\normalsize\bfseries\singlespacing}
  {\Alph{subsection}.\quad}{0pt}{}[]
\titlespacing{\subsection}{0pt}{0.5\baselineskip}{13pt}
\titleformat{\subsubsection}
  {\normalsize\itshape\singlespacing}
  {\arabic{subsubsection}.\quad}{0pt}{}[]
\titlespacing{\subsubsection}{0pt}{0.5\baselineskip}{13pt}

% --- Table of Contents Spacing ---
\setlength{\cftbeforesecskip}{4pt}       
\setlength{\cftbeforetoctitleskip}{0pt}  

% --- Page Styles ---
\fancypagestyle{firstpage}{
  \fancyhf{}
  \fancyfoot{
    \parbox{\textwidth}{\large\raggedright\textcolor{gray}{
      ${}^{1}$ Shanghai Jiao Tong University\\
      ${}^{2}$ Another Institute if applicable
    }}
  }
  \renewcommand{\footrulewidth}{0pt}
  \renewcommand{\headrulewidth}{0pt}
}

\fancypagestyle{mystyle}{
  \fancyhf{}
  \fancyfoot{
    \noindent
    \begin{tabular*}{\textwidth}{@{\extracolsep{\fill}}cccc@{}}
      \adjustbox{valign=c}{\includegraphics[height=0.4in]{figures/sjtubannerblue.png}} &
      \adjustbox{valign=c}{\includegraphics[height=0.4in]{figures/team logo.png}} &
      \adjustbox{valign=c}{\makecell[c]{\textcolor{gray}{Instructors:} \\ \textcolor{gray}{Dr. Yanfeng Shen} \\ \textcolor{gray}{Dr. Ting Sun}}} &
      \adjustbox{valign=c}{\raggedleft\small\textcolor{gray}{Page \textbf{\thepage} of 13}}
    \end{tabular*}
  }
  \renewcommand{\footrulewidth}{0pt}
  \renewcommand{\headrulewidth}{0pt}
}

% --- Other Settings ---
\raggedbottom

\RequirePackage{enumitem} 
\setlist{labelindent=\parindent,leftmargin=*,nosep} 
\setlist[enumerate]{label={\arabic*)}} 
\RequirePackage[symbol*]{footmisc}

% Table and Math Spacing 
\renewcommand{\arraystretch}{1.2} 
\setlength{\abovedisplayskip}{\baselineskip}
\setlength{\belowdisplayskip}{\baselineskip}
\setlength{\abovedisplayshortskip}{\baselineskip}
\setlength{\belowdisplayshortskip}{\baselineskip}

% --- Hyperref ---
\RequirePackage[hyphens]{url} 
\RequirePackage{hyperref}
\hypersetup{
    colorlinks=false,
    linkcolor=blue,
    citecolor=blue,
    filecolor=magenta,      
    urlcolor=cyan,
    pdftitle={ENGR1000J Report}, 
    pdfauthor={Author},
    bookmarksopen=true,
    bookmarksnumbered=true
}



\RequirePackage{lettrine}
\setlength{\DefaultNindent}{0pt}



