%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR1000J-S2.cls
% Modified based on ENGR1000J template main.tex preamble
% Original base: new-aiaa.cls, v1.2, 2018/01/10
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\ProvidesClass{engr1000j-s2}[2025/05/21, v1.0 Custom ENGR1000J Template]

\LoadClass[10pt]{article}

% --- Basic Encoding and Font (Times-like) ---
\RequirePackage[T1]{fontenc}
\RequirePackage[utf8]{inputenc} % For UTF-8 input, compatible with CJKutf8
\RequirePackage{microtype}    % Improves typography
\RequirePackage{newtxtext,newtxmath} % Times Roman clone for text and math
% --- Packages required by main.tex preamble ---
\RequirePackage{CJKutf8}    % For Chinese text (using pdfLaTeX)
\RequirePackage{graphicx}   % For including images
\RequirePackage{caption}    % For customizing captions
\RequirePackage{textcase}
\RequirePackage{tocloft}    % For customizing Table of Contents
\RequirePackage{parskip}    % For zero paragraph indentation and space between paragraphs
\RequirePackage{booktabs}   % For professional quality tables
\RequirePackage{longtable}  % For tables that span multiple pages
\RequirePackage{xcolor}     % For using colors
\RequirePackage{fancyhdr}   % For custom headers and footers
\RequirePackage[export]{adjustbox} % For \adjustbox command
\RequirePackage{setspace}   % For line spacing control (e.g., \setstretch)
\RequirePackage[numbib,nottoc]{tocbibind} % To include bibliography in ToC

% --- Page Geometry ---
\RequirePackage[letterpaper,top=1in,bottom=1in,left=1.25in,right=1.25in]{geometry}




% --- Table of Contents Customizations ---
% Change ToC title from "Contents" to "Table of Contents"
\renewcommand{\contentsname}{Table of Contents}

% Customize ToC title font (e.g., Large, bold)
\renewcommand{\cfttoctitlefont}{\Large\bfseries}

% Customize font for section entries in ToC (e.g., normalsize, bold, ALL CAPS)
\renewcommand{\cftsecfont}{\normalsize\bfseries\MakeTextUppercase}
% Customize font for subsection entries in ToC (e.g., normalsize, ALL CAPS)
\renewcommand{\cftsubsecfont}{\normalsize\MakeTextUppercase}
% Customize font for subsubsection entries in ToC (e.g., normalsize, ALL CAPS)
\renewcommand{\cftsubsubsecfont}{\normalsize\MakeTextUppercase}

% Spacing for ToC entries
\setlength{\cftbeforetoctitleskip}{2em}  % Space before ToC title itself (remains 0pt)
\setlength{\cftaftertoctitleskip}{13pt} % Space after ToC title (optional, adjust as needed)

% Add space between ToC entries to simulate "empty one line"
% The document's \baselineskip is 13pt. We'll add noticeable space.
\setlength{\cftbeforesecskip}{12pt}       % Increased space before section titles in ToC (was 4pt)
\setlength{\cftbeforesubsecskip}{8pt}     % Space before subsection titles in ToC
\setlength{\cftbeforesubsubsecskip}{8pt}  % Space before subsubsection titles in ToC


% --- Bibliography Settings (from main.tex) ---
\RequirePackage[sort&compress,numbers]{natbib}
\bibliographystyle{new-aiaa}
\renewcommand{\bibfont}{\small}
\renewcommand{\bibname}{Reference} % Change "Bibliography" to "Reference"

% --- Paragraph Formatting (from main.tex and user prompt) ---
% The parskip package sets \parindent to 0pt and adds some space between paragraphs.
% We explicitly set \parskip to 10pt as per a previous user request for "段后 10磅".
% main.tex had \setlength{\parskip}{18pt}, if that's preferred, change 10pt to 18pt.
\setlength{\parskip}{18pt}

% --- Line Spacing (Fixed baselineskip from main.tex) ---
\AtBeginDocument{
  \linespread{1}% Equivalent to \setstretch{1}
  \setlength{\baselineskip}{13pt}% Fixed line height of 13pt
}

% --- Caption Formatting (from main.tex) ---
\captionsetup[figure]{labelfont=bf,labelsep=space,justification=justified,font=small,skip=6pt}
\captionsetup[table]{labelfont=bf,labelsep=space,justification=justified,font=small,skip=6pt}
\RequirePackage[tableposition=top]{caption}
\renewcommand{\figurename}{Fig.}
\captionsetup*{font=bf,labelsep=quad}
\renewcommand{\arraystretch}{1.2}

% --- Section Title Formatting (from main.tex) ---
% Uses standard Arabic numbering for sections.
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

% --- Table of Contents Spacing (from main.tex) ---
\setlength{\cftbeforesecskip}{4pt}       % Space before section titles in ToC
\setlength{\cftbeforetoctitleskip}{0pt}  % Space before ToC title itself

% --- Page Styles (defined in main.tex, now part of the class) ---
\fancypagestyle{firstpage}{%
  \fancyhf{}% Clear header and footer
  \fancyfoot{%
    \parbox{\textwidth}{\large\raggedright\textcolor{gray}{%
      ${}^{1}$ University of Michigan -- Shanghai Jiao Tong University Joint Institute\\
      ${}^{2}$ Another Institute if applicable%
    }}%
  }%
  \renewcommand{\footrulewidth}{0pt}% No footer rule
  \renewcommand{\headrulewidth}{0pt}% No header rule
}

\fancypagestyle{mystyle}{%
  \fancyhf{}% Clear header and footer
  \fancyfoot{%
    \noindent
    \begin{tabular*}{\textwidth}{@{\extracolsep{\fill}}cccc@{}}
      \adjustbox{valign=c}{\includegraphics[height=0.3in]{figures/JI logo.png}} &
      \adjustbox{valign=c}{\includegraphics[height=0.4in]{figures/team logo.png}} &
      \adjustbox{valign=c}{\small\textcolor{gray}{\begin{tabular}{@{}l@{}}Instructors: \\ Dr. Yanfeng Shen \\ Dr. Ting Sun\end{tabular}}} &
      \adjustbox{valign=c}{\raggedleft\small\textcolor{gray}{Page \textbf{\thepage} of 13}} % Note: "13" is hardcoded
    \end{tabular*}%
  }%
  \renewcommand{\footrulewidth}{0pt}% No footer rule
  \renewcommand{\headrulewidth}{0pt}% No header rule
}

% --- Other Settings from main.tex ---
\raggedbottom % Avoids extra vertical space at the bottom of pages, allowing them to be short.

% --- Useful defaults from original new-aiaa.cls (modified or kept if non-conflicting) ---
\RequirePackage{enumitem} % For list customization
\setlist{labelindent=\parindent,leftmargin=*,nosep} % Default list style
\setlist[enumerate]{label={\arabic*)}} % Enumerated lists as 1), 2)

\RequirePackage[symbol*]{footmisc} % For footnote symbols (e.g., *, †, ‡)

% Table and Math Spacing (reasonable defaults from original cls)
\renewcommand{\arraystretch}{1.2} % Slightly more space in table rows
\setlength{\abovedisplayskip}{\baselineskip}
\setlength{\belowdisplayskip}{\baselineskip}
\setlength{\abovedisplayshortskip}{\baselineskip}
\setlength{\belowdisplayshortskip}{\baselineskip}

% --- Hyperref (load towards the end) ---
\RequirePackage[hyphens]{url} % For better URL line breaking
\RequirePackage{hyperref}
\hypersetup{
    colorlinks=true,
    linkcolor=blue,
    citecolor=blue, % Added for consistency
    filecolor=magenta,      
    urlcolor=cyan,
    pdftitle={ENGR1000J Report}, % Generic title, can be overridden in .tex
    pdfauthor={Author},         % Generic author
    % pdfpagemode=FullScreen,   % Can be distracting
    bookmarksopen=true,
    bookmarksnumbered=true
}



\RequirePackage{lettrine}
\setlength{\DefaultNindent}{0pt}



