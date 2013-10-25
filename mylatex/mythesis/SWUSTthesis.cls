
%% This is the configuration file of the SWUSTthesis package.
%% This program is a LaTeX cfg file for bachelor thesis template
%% of XiKe university , built with the CTeX 2.9.0, writen with
%% WinEdt 6.0.
%%
%% This program is free software; you can redistribute it and/or modify
%% it under the terms of the GNU General Public License as published by
%% the Free Software Foundation; either version 2 of the License, or
%% (at your option) any later version.
%%
%% This program is distributed in the hope that it will be useful,
%% but WITHOUT ANY WARRANTY; without even the implied warranty of
%% MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
%% GNU General Public License for more details.
%%
%% You should have received a copy of the GNU General Public License
%% along with this program; if not, write to the Free Software
%% Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.
%%
%% Copyright \copyright\ 2012 Tal-Nino @ MianYang
%% $Tal-Nino campermsn@gmail.com, v0.1, 2012/06/21$
%% ----------------------------------------------------------------------

\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesClass{SWUSTthesis}[2012/06/21 v0.1 SWUSTthesis document class]

\newif\ifSWUST@typeinfo \SWUST@typeinfotrue
\DeclareOption{notypeinfo}{\SWUST@typeinfofalse}
\newif\ifSWUST@dvips \SWUST@dvipsfalse
\DeclareOption{dvips}{\SWUST@dvipstrue}
\DeclareOption{dvipdfm}{\SWUST@dvipsfalse}
\DeclareOption{pdftex}{\SWUST@dvipsfalse}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{ctexbook}}
\ProcessOptions

\LoadClass[cs4size,a4paper,fancyhdr,fntef,hyperref]{ctexbook}[2005/11/25]

%% set line spacing 22pt,12pt*1.2*1.5=21.6
\renewcommand{\baselinestretch}{1.5}
%%extra
\RequirePackage{times}%����ȱʡ����Ϊ����������
\RequirePackage{ifthen}
\RequirePackage{titlesec}
\RequirePackage{mathptmx}%��ѧ��ʽ����
%%��������
\RequirePackage{CJKnumb}
%% check pdfTeX mode
\RequirePackage{ifpdf}
%% math packages
\RequirePackage{amsmath,amsthm,amsfonts,amssymb,bm}
%% modify caption
\RequirePackage{caption2}
%% modity tabs
\RequirePackage{booktabs,tabularx}
%% graphics packages
\RequirePackage{graphicx}
%% sort and compress citations
\RequirePackage[square,sort&compress,numbers,super]{natbib}
%% packages and settings depend on PDF mode
\ifpdf   % We're running pdfTeX in PDF mode
    \RequirePackage[pdftex]{hyperref}
    \DeclareGraphicsExtensions{.pdf}
\else    % We're not running pdfTeX, or running pdfTeX in DVI mode
    \ifSWUST@dvips
        \RequirePackage[dvips]{hyperref}
        \RequirePackage{psfrag}
        \AtBeginDvi{\special{pdf:tounicode GBK-EUC-UCS2}} % GBK -> Unicode
    \else
        \RequirePackage[dvipdfm]{hyperref}
    \fi
    \DeclareGraphicsExtensions{.eps,.ps}
\fi
\hypersetup{CJKbookmarks,%
       bookmarksnumbered,%
        linkcolor=black,%
          citecolor=blue,%
        plainpages=false,%
       pdfstartview=FitH }
\AtEndOfPackage{\makeatletter\input{SWUSTthesis.cfg}\makeatother}

%% set margin with left:3cm,right:3cm,up:3cm,down:2.5cm%%
%%�������ϿƼ���ѧ��������׫д������ҳü=2cm������û��˵���������ҳü�߶Ȼ��Ǿ���(�������Ļ��߱߾࣬����ʵ��)
%%���Ը���ʵ��Ч���޸��������
\voffset -1.54 true cm
\topmargin 0 true cm
\headheight 1  true cm
\headsep 0  true cm
\textheight 23.7 true cm
\textwidth 15.5 true cm
\footskip 1 true cm
\oddsidemargin 0.46 true cm

%%���õ�ҳ��ʽ
\setboolean{@twoside}{false}
\def\cleardoublepage{\clearpage\if@twoside \ifodd\c@page\else
    \hbox{}\newpage\if@twocolumn\hbox{}\newpage\fi\fi\fi}
\renewcommand{\floatpagefraction}{0.80}
%%�ο�����
\bibliographystyle{unsrt}%�ο����׸�ʽ
\setlength{\bibsep}{0.5ex}%�ο����׼��
\newcommand\SWUSTspace{\protect\CTEX@spaceChar\protect\CTEX@spaceChar}

\def\SWUST@getfileinfo#1 #2 #3\relax#4\relax{%
    \def\SWUSTfiledate{#1}%
    \def\SWUSTfileversion{#2}%
    \def\SWUSTfileinfo{#3}}%

%this paragraph maybe confused, i didn't understand
\expandafter\ifx\csname ver@SWUSTthesis.cls\endcsname\relax
    \edef\reserved@a{\csname ver@ctextemp_SWUSTthesis.cls\endcsname}
    \else
    \edef\reserved@a{\csname ver@SWUSTthesis.cls\endcsname}
\fi
\expandafter\SWUST@getfileinfo\reserved@a\relax? ? \relax\relax

%% define the underline
\def\SWUST@underline[#1]#2{%
  \CTEXunderline{\hbox to #1{\hfill#2\hfill}}}
\def\SWUSTunderline{\@ifnextchar[\SWUST@underline\CTEXunderline}

%% define the bookface
\newcommand\class[1]{\def\SWUST@value@class{#1}}
\newcommand\schoolnumber[1]{\def\SWUST@value@schoolnumber{#1}}
\renewcommand\title[1]{\def\SWUST@value@title{#1}}
\newcommand\college[1]{\def\SWUST@value@college{#1}}
\newcommand\major[1]{\def\SWUST@value@major{#1}}
\renewcommand\author[1]{\def\SWUST@value@author{#1}}
\newcommand\advisor[1]{\def\SWUST@value@advisor{#1}}
\newcommand\etitle[1]{\def\SWUST@value@etitle{#1}}




%%����
\renewcommand\maketitle{%
    \cleardoublepage
    \thispagestyle{empty}
    \begin{center}
        \vskip \stretch{2}
            \includegraphics[height=3cm]{xd1.pdf}
             \includegraphics[height=2.2cm]{xd2.pdf}\\
             \zihao{3}~~~~~~~~~~~~~~~~~~\textbf{Southwest university of science and technology}
        \vskip \stretch{1}
            {\heiti\zihao{-0}\ziju{0.25} \SWUST@label@thesis}
        \vskip \stretch{1}
            \heiti\zihao{2}\SWUST@value@title
        \vskip \stretch{2}
        \vskip \stretch{0.1}
            \heiti\zihao{-3}\ziju{0.5} \SWUST@label@college~
            \heiti\zihao{-3}\ziju{0.25}\SWUSTunderline[250pt]{~\SWUST@value@college~}
        \vskip \stretch{0.1}
            \heiti\zihao{-3}\ziju{0.5} \SWUST@label@major~
            \heiti\zihao{-3}\ziju{0.25}\SWUSTunderline[250pt]{~\SWUST@value@major~}
        \vskip \stretch{0.1}
            \heiti\zihao{-3}\ziju{0.5} \SWUST@label@author~
            \heiti\zihao{-3}\ziju{0.25}\SWUSTunderline[250pt]{~\SWUST@value@author~}
        \vskip \stretch{0.1}
            \heiti\zihao{-3}\ziju{0.5} \SWUST@label@schoolnumber~
            \heiti\zihao{-3}\ziju{0.25}\SWUSTunderline[250pt]{~\SWUST@value@schoolnumber~}
        \vskip \stretch{0.1}
            \heiti\zihao{-3}\ziju{0.5} \SWUST@label@advisor~
            \heiti\zihao{-3}\ziju{0.25}\SWUSTunderline[250pt]{~\SWUST@value@advisor~}
        \vskip \stretch{1}
       \CJKdigits{\the\year}��\CJKnumber{\the\month}��
    \end{center}
}
\fancypagestyle{plain}{%
    \fancyhf{}%
    \fancyhead{} % clear all header fields
%    \fancyhead[C]{\songti\zihao{5} \underline{\hspace{5.34cm}���ϿƼ���ѧ��������ҵ����\hspace{5.34cm}}}
%    \renewcommand{\headrulewidth}{1.5 pt}% ҳüҲ����ͨ���»��ߺ�ҳü����ϳ�˫��ҳü������֧�ֻ����п�
    \fancyhead[C]{\includegraphics{ym.pdf}}%%���ϿƼ���ѧͼ����ʽҳü
     \fancyfoot[C]{\songti\zihao{-5} ~\thepage~}
    \renewcommand{\headrulewidth}{0 pt}%
}

\fancypagestyle{swust}{%
    \fancyhf{}%
    \fancyhead{} % clear all header fields
    \fancyhead[R]{\songti\zihao{-5} ~\thepage~\\~~}
    \fancyhead[C]{\includegraphics{ym.pdf}}
    \renewcommand{\headrulewidth}{0 pt}%
}
\pagestyle{fancy}
    \fancyhf{}
    \fancyhead[C]{\includegraphics{ym.pdf}}
     \fancyfoot[C]{\songti\zihao{-5} ~\thepage~}
     \renewcommand{\headrulewidth}{0 pt}


%%%�½ڸ�ʽ
\titleformat{\chapter}{\centering\heiti\zihao{-2}}{��\,\thechapter\,��}{1em}{}
\titleformat{\section}{\flushleft\heiti\zihao{4}}{\,\thesection\,}{1em}{}
\titleformat{\subsection}{\flushleft\heiti\zihao{-4}}{\,\thesubsection\,}{1em}{}
\renewcommand{\thesubsubsection}{\@arabic\c@subsubsection}
\titleformat{\subsubsection}{\songti\zihao{-4}}{\thesubsubsection~��}{0.1em}{}%%%����subsubsectionΪ1��XX��ʽ
\renewcommand{\labelenumi}{(\theenumi)}%%����enumerate���Ϊ()��ʽ
\titlespacing{\chapter}{0pt}{*0}{*3}
\setcounter{tocdepth}{2}
%chapterĿ¼��ʾΪ����������
\renewcommand{\chaptername}{��~\@arabic\c@chapter~��}
\def\@chapter[#1]#2{\ifnum \c@secnumdepth >\m@ne
                       \if@mainmatter
                         \refstepcounter{chapter}%
                         \typeout{��~\thechapter~��}%
                         \addcontentsline{toc}{chapter}%
                                   {��~\expandafter\noexpand\thechapter~��\hspace{0.8em}#1}%

                       \else
                         \addcontentsline{toc}{chapter}{#1}%
                       \fi
                    \else
                      \addcontentsline{toc}{chapter}{#1}%
                    \fi
                    \chaptermark{#1}%
                    \addtocontents{lof}{\protect\addvspace{10\p@}}%
                    \addtocontents{lot}{\protect\addvspace{10\p@}}%
                    \if@twocolumn
                      \@topnewpage[\@makechapterhead{#2}]%
                    \else
                      \@makechapterhead{#2}%
                      \@afterheading
                    \fi}

%%��Ӣ��ժҪ
\newenvironment{abstract}
    {\NCSchapter{\heiti\zihao{-1}\SWUST@value@title}{\SWUST@label@abstract}}
    { \thispagestyle{swust}}
\newcommand\keywords[1]{%
    \vspace{2ex}\noindent{\heiti\zihao{-4} \SWUST@label@keywords} \songti\zihao{-4}#1}

\newenvironment{englishabstract}
    {\NCSchapter{\bf\zihao{-2} \SWUST@value@etitle}{\SWUST@label@englishabstract}}
    {\thispagestyle{swust}}
\newcommand\englishkeywords[1]{%
    \vspace{2ex}\noindent{\bf\zihao{-4} \SWUST@label@englishkeywords}\zihao{-4}#1}
\newcommand\conclusion

%%Ŀ¼
\renewcommand\tableofcontents{%
    \if@twocolumn
        \@restonecoltrue\onecolumn
    \else
        \@restonecolfalse
    \fi
   \NCchapter{\contentsname}{\contentsname}%
    \@mkboth{\contentsname}{\contentsname}%
   \thispagestyle{swust}
    \@starttoc{toc}%
    \if@restonecol\twocolumn\fi
    \thispagestyle{swust}
}

\addtocontents{toc}{\let\string\SWUST@spaceChar\relax}

\newcommand\NCSchapter[2]{%
\renewcommand{\chapter}{\if@openright\clearpage\else\clearpage\fi
\global\@topnum\z@ \@afterindentfalse \secdef\@chapter\@schapter}
    \if@mainmatter%
        \@mainmatterfalse%
        \chapter*{#1} \chaptermark{#2}%
        \@mainmattertrue%
  \else
        \chapter*{#1}\chaptermark{#2}%
  \fi
}

\newcommand\NCchapter[2]{%
    \if@mainmatter%
        \@mainmatterfalse%
        \chapter*{#1} \chaptermark{#2}%
        \@mainmattertrue%
  \else
        \chapter*{#1}\chaptermark{#2}%
  \fi
}
\newcommand\Nchapter[1]{%
    \if@mainmatter%
        \@mainmatterfalse%
        \chapter[#1]{#1}%
        \@mainmattertrue%
    \else
        \chapter[#1]{#1}%
    \fi
}

\def\@dottedtocline#1#2#3#4#5{%
    \ifnum #1>\c@tocdepth \else
        \vskip \z@ \@plus.2\p@
        {\leftskip #2\relax \rightskip \@tocrmarg \parfillskip -\rightskip
        \parindent #2\relax\@afterindenttrue
        \interlinepenalty\@M
        \leavevmode
        \@tempdima #3\relax
        \advance\leftskip \@tempdima \null\nobreak\hskip -\leftskip
        {#4}\nobreak
        \leaders\hbox{$\m@th\mkern 1.5mu\cdot\mkern 1.5mu$}\hfill
        \nobreak
        \hb@xt@\@pnumwidth{\hfil\normalfont \normalcolor #5}%
        \par}%
    \fi}
\renewcommand*\l@part[2]{%
    \ifnum \c@tocdepth >-2\relax
        \addpenalty{-\@highpenalty}%
        \addvspace{2.25em \@plus\p@}%
        \setlength\@tempdima{3em}%
        \begingroup
            \parindent \z@ \rightskip \@pnumwidth
            \parfillskip -\@pnumwidth
            {\leavevmode
            \large \bfseries #1
            \leaders\hbox{$\m@th\mkern 1.5mu\cdot\mkern 1.5mu$}
            \hfil \hb@xt@\@pnumwidth{\hss #2}}\par
            \nobreak
            \global\@nobreaktrue
            \everypar{\global\@nobreakfalse\everypar{}}%
        \endgroup
    \fi}
\renewcommand*\l@chapter[2]{%
    \ifnum \c@tocdepth >\m@ne
        \addpenalty{-\@highpenalty}%
        \vskip 1.0em \@plus\p@
        \setlength\@tempdima{1.5em}%
        \begingroup
            \parindent \z@ \rightskip \@pnumwidth
            \parfillskip -\@pnumwidth
            \leavevmode \bf\songti\zihao{-4}
            \advance\leftskip\@tempdima
            \hskip -\leftskip
            #1\nobreak
            \leaders\hbox{$\m@th\mkern 1.5mu\cdot\mkern 1.5mu$}
            \hfil \nobreak\hb@xt@\@pnumwidth{\hss #2}\par
            \penalty\@highpenalty
        \endgroup
    \fi}

\renewenvironment{thebibliography}[1]
     {\Nchapter{\bibname}%
      \@mkboth{\MakeUppercase\bibname}{\MakeUppercase\bibname}%
      \list{\@biblabel{\@arabic\c@enumiv}}%
           {\settowidth\labelwidth{\@biblabel{#1}}%
            \leftmargin\labelwidth
            \advance\leftmargin\labelsep
            \@openbib@code
            \usecounter{enumiv}%
            \let\p@enumiv\@empty
            \renewcommand\theenumiv{\@arabic\c@enumiv}}%
      \sloppy
      \clubpenalty4000
      \@clubpenalty \clubpenalty
      \widowpenalty4000%
      \sfcode`\.\@m}
     {\def\@noitemerr
       {\@latex@warning{Empty `thebibliography' environment}}%
      \endlist}


\renewenvironment{thanks}
    {\Nchapter{\SWUST@label@thanks}}
    {}
\setcounter{secnumdepth}{3}
\newtheoremstyle{break}% name
    {}%      Space above, empty = `usual value'
    {}%      Space below
    {\itshape}% Body font
    {}%         Indent amount (empty = no indent, \parindent = para indent)
    {\bfseries}% Thm head font
    {.}%        Punctuation after thm head
    {\newline}% Space after thm head: \newline = linebreak
    {}%         Thm head spec

%%%%������ʽ
\newcommand\jielun[1]{\chapter*{#1}\setcounter{chapter}{5}\addcontentsline{toc}{chapter}{��~~~~��}}
%%ͼ������ʽ
\renewcommand{\captionlabeldelim}{}%�ָ�������Ϊ��
\renewcommand{\captionfont}{\normalsize}%��ע����Ϊ���
\renewcommand{\thefigure}{\thechapter-\arabic{figure}}%�޸�ͼ1.1Ϊͼ1-1
\renewcommand{\thetable}{\thechapter-\arabic{table}}%%�޸ı�1.1Ϊ��1-1
\renewcommand{\theequation}{\thechapter-\arabic{equation}}
%%�м�ࡢ�����С
\zihao{-4}
\linespread{1.5}%����12pt*1.2*1.5��22


%%�Զ���cnlist�б�����
\newcounter{newlist} %�Զ����¼�����
\newenvironment{cnlist}[1][]{%%%%%�����»���
\begin{list}{(#1\arabic{newlist})} %%��ǩ��ʽ
{
\usecounter{newlist}
\setlength{\topsep}{0cc}
\setlength{\labelwidth}{1cc} %��ǩ���ӿ���
\setlength{\labelsep}{0.5cc} %��ǩ���б��ı�����
\setlength{\leftmargin}{0cm} %���ұ߽�
\setlength{\rightmargin}{0cm}
\setlength{\parsep}{0ex} %������
\setlength{\itemsep}{0ex} %��ǩ���
\setlength{\itemindent}{3.5cc} %��ǩ������
\setlength{\listparindent}{2cc} %����������
}}
{\end{list}}%%%%%

\endinput

%%
%% End of file `SWUSTthesis.cls'.