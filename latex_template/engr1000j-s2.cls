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
\RequirePackage{float}
\RequirePackage{threeparttable}
\RequirePackage{etoolbox}


% --- Page Geometry ---
\RequirePackage[letterpaper,top=1in,bottom=1in,left=1.25in,right=1.25in]{geometry}

% --- Table of Contents Customizations (Definitive Final Version) ---

% 1. 标题样式: 变大、居中、不加粗
\renewcommand{\contentsname}{Table of Contents}
\renewcommand{\cfttoctitlefont}{\huge\normalfont}

\setlength{\cftaftertoctitleskip}{2em}

% 2. Section 级别条目的基础样式
%    字体设为常规，不再尝试在这里进行大小写转换
\renewcommand{\cftsecfont}{\normalfont}
%    设置引导线为点状
\renewcommand{\cftsecleader}{\cftdotfill{\cftdotsep}} 
%    设置页码字体
\renewcommand{\cftsecpagefont}{\normalfont} 
%    在章节编号后加上点
\renewcommand{\cftsecaftersnum}{.} 
%    为编号（如 "VIII."）预留足够宽度以对齐
\setlength{\cftsecnumwidth}{3em} 
%    设置条目之间的垂直间距
\setlength{\cftbeforesecskip}{18pt} 

% 3. 【核心修正】使用 etoolbox 对 tocloft 内部命令进行精确修补
%    这会在 hyperref 处理之后，安全地将目录条目标题转换为大写
\makeatletter
\patchcmd{\l@section}{#1}{\MakeUppercase{#1}}{}{}
\makeatother

% --- Subsection & Subsubsection Formatting ---
% Also add \protect here for safety
\renewcommand{\cftsubsecfont}{\normalsize\protect\MakeTextUppercase}
\renewcommand{\cftsubsubsecfont}{\normalsize\protect\MakeTextUppercase}
\setlength{\cftbeforesubsecskip}{8pt}
\setlength{\cftbeforesubsubsecskip}{8pt}

% --- Subsection & Subsubsection Formatting (kept from original for consistency) ---
\renewcommand{\cftsubsecfont}{\normalsize\MakeTextUppercase}
\renewcommand{\cftsubsubsecfont}{\normalsize\MakeTextUppercase}
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
\setlength{\parskip}{13pt}
\setlength{\textfloatsep}{18pt} 
\setlength{\intextsep}{13pt}

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
      \adjustbox{valign=c}{\raggedleft\small\textcolor{gray}{Page \textbf{\thepage} of 10}}
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



