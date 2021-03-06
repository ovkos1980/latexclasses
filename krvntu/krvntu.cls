%% This is file `krvntu.cls', based on `extreport.cls' 
%% generated by Ovchinnikov Konstantin,
%%              Vinnitsa State Technical University, Ukraine.
%%
%%              Harmonized with DSTU 3008-95
%%              by Konstantin Ovchinnikov.
%%              k_ovchinnikov@mail.ru % 
%% 
%% The original source files were:
%% Copyright 1993 1994 1995 1996 1999
%% The LaTeX3 Project and any individual authors listed elsewhere 
%% in this file. 
%% 
%% This file may be distributed under the terms of the Latex Project
%% public licence
%% 
%% This system is distributed in the hope that it will be useful, 
%% but WITHOUT ANY WARRANTY; without even the implied warranty of 
%% MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. 
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{krvntu}[2016/11/23 v1.0 Non Standard LaTeX class]

\LoadClass[14pt]{extreport}
\RequirePackage[utf8]{inputenc}
\RequirePackage[T2A,T1]{fontenc}
\RequirePackage[english,russian,ukrainian]{babel}
\RequirePackage[a4paper,margin=2cm,right=1cm,layoutvoffset=0.5cm]{geometry}
\RequirePackage{eso-pic}
\RequirePackage{tikz}
%\RequirePackage{eskd}

%common definitions
\newcommand\educational[1]{\renewcommand\@educational{#1}}
\newcommand\@educational{{\cyr\CYRV\cyrii\cyrn\cyrn\cyri\cyrc\cyrsftsn\cyrk\cyri\cyrishrt 
                          \ \cyrn\cyra\cyrc\cyrii\cyro\cyrn\cyra\cyrl\cyrsftsn\cyrn\cyri\cyrishrt 
                          \ \cyrt\cyre\cyrh\cyrn\cyrii\cyrch\cyrn\cyri\cyrishrt 
                          \ \cyru\cyrn\cyrii\cyrv\cyre\cyrr\cyrs\cyri\cyrt\cyre\cyrt}}
\newcommand\educationalabbr[1]{\renewcommand\@educationalabbr{#1}}
\newcommand\@educationalabbr{{\cyr\CYRV\CYRN\CYRT\CYRU}}
\newcommand\department[1]{\renewcommand\@department{#1}}
\newcommand\@department{{\cyr\cyrm\cyre\cyrt\cyrr\cyro\cyrl\cyro\cyrg\cyrii\cyryi \ \cyrt\cyra \ \cyrp\cyrr\cyro\cyrm\cyri\cyrs\cyrl\cyro\cyrv\cyro\cyryi \ \cyra\cyrv\cyrt\cyro\cyrm\cyra\cyrt\cyri\cyrk\cyri}}
\newcommand\departmentabbr[1]{\renewcommand\@departmentabbr{#1}}
\newcommand\@departmentabbr{{\cyr\CYRM\CYRP\CYRA}}
\newcommand\departmentcode[1]{\renewcommand\@departmentcode{#1}}
\newcommand\@departmentcode{08-03}
\newcommand\category[1]{\renewcommand\@category{#1}}
\newcommand\@category{{\cyr\CYRK\CYRU\CYRR\CYRS\CYRO\CYRV\CYRA \ \CYRR\CYRO\CYRB\CYRO\CYRT\CYRA}}
\newcommand\categorycode[1]{\renewcommand\@categorycode{#1}}
\newcommand\@categorycode{{\cyr\CYRK\CYRR}}
\newcommand\optioncode[1]{\renewcommand\@optioncode{#1}}
\newcommand\@optioncode{000}
\newcommand\discipline[1]{\renewcommand\@discipline{#1}}
\newcommand\@discipline{\textbackslash discipline}
\renewcommand\title[1]{\renewcommand\@title{#1}}
\renewcommand\@title{\textbackslash title}
\newcommand\parttitle[1]{\renewcommand\@parttitle{#1}}
\newcommand\@parttitle{\@title}
\newcommand\partdes[1]{\renewcommand\@partdes{#1}}
\newcommand\@partdes{{\cyr\CYRP\cyro\cyrya\cyrs\cyrn\cyryu\cyrv\cyra\cyrl\cyrsftsn\cyrn\cyra 
                      \ \cyrz\cyra\cyrp\cyri\cyrs\cyrk\cyra}}
\newcommand\partcode[1]{\renewcommand\@partcode{#1}}
\newcommand\@partcode{{\cyr\CYRP\CYRZ}}
\newcommand\course[1]{\renewcommand\@course{#1}}
\newcommand\@course{\textbackslash course}
\newcommand\group[1]{\renewcommand\@group{#1}}
\newcommand\@group{\textbackslash group}
\newcommand\direction[1]{\renewcommand\@direction{#1}}
\newcommand\@direction{\textbackslash direction}
\newcommand\speciality[1]{\renewcommand\@speciality{#1}}
\newcommand\@speciality{\textbackslash speciality}
\renewcommand\author[1]{\renewcommand\@author{#1}}
\renewcommand\@author{\textbackslash author}
\newcommand\degree[1]{\renewcommand\@degree{#1}}
\newcommand\@degree{\textbackslash degree}
\newcommand\position[1]{\renewcommand\@position{#1}}
\newcommand\@position{\textbackslash position}
\newcommand\leader[1]{\renewcommand\@leader{#1}}
\newcommand\@leader{\textbackslash leader}
\newcommand\city[1]{\renewcommand\@city{#1}}
\newcommand\@city{{\cyr\CYRV\cyrii\cyrn\cyrn\cyri\cyrc\cyrya}}
\newcommand\annum[1]{\renewcommand\@annum{#1}}
\newcommand\@annum{\the\year}
\newcommand\developer[1]{\renewcommand\@developer{#1}}
\newcommand\@developer{\@author}
\newcommand\supervisor[1]{\renewcommand\@supervisor{#1}}
\newcommand\@supervisor{\@leader}
\newcommand\reviewer[1]{\renewcommand\@reviewer{#1}}
\newcommand\@reviewer{\textbackslash reviewer}
\newcommand\controller[1]{\renewcommand\@controller{#1}}
\newcommand\@controller{\textbackslash controller}
\newcommand\approver[1]{\renewcommand\@approver{#1}}
\newcommand\@approver{\textbackslash approver}

%redefinition common names defined in ukraine babel package
\addto\captionsukrainian{%
  \def\abstractname{{\cyr\CYRA\cyrn\cyro\cyrt\cyra\cyrc\cyrii\cyrya}}%
  \def\prefacename{{\cyr\CYRV\cyrs\cyrt\cyru\cyrp}}%
  \def\refname{{\cyr\CYRL\cyrii\cyrt\cyre\cyrr\cyra\cyrt\cyru\cyrr\cyra}}%
  \def\bibname{{\cyr\CYRP\cyre\cyrr\cyre\cyrl\cyrii\cyrk\ 
         \ \cyrp\cyro\cyrs\cyri\cyrl\cyra\cyrn\cyrsftsn}}%
  \def\chaptername{{\cyr\CYRR\cyro\cyrz\cyrd\cyrii\cyrl}}%
  \def\appendixname{{\cyr\CYRD\cyro\cyrd\cyra\cyrt\cyro\cyrk}}%
  \def\contentsname{{\cyr\CYRZ\cyrm\cyrii\cyrs\cyrt}}%
  \def\listfigurename{{\cyr\CYRP\cyre\cyrr\cyre\cyrl\cyrii\cyrk
         \ \cyrii\cyrl\cyryu\cyrs\cyrt\cyrr\cyra\cyrc\cyrii\cyrishrt}}%
  \def\listtablename{{\cyr\CYRP\cyre\cyrr\cyre\cyrl\cyrii\cyrk
         \ \cyrt\cyra\cyrb\cyrl\cyri\cyrc\cyrsftsn}}%
  \def\indexname{{\cyr\CYRP\cyro\cyrk\cyra\cyrzh\cyrch\cyri\cyrk}}%
  \def\authorname{{\cyr\CYRII\cyrm\cyre\cyrn\cyrn\cyri\cyrishrt
         \ \cyrp\cyro\cyrk\cyra\cyrzh\cyrch\cyri\cyrk}}%
  \def\figurename{{\cyr\CYRR\cyri\cyrs\cyru\cyrn\cyro\cyrk}}%
  \def\tablename{{\cyr\CYRT\cyra\cyrb\cyrl\cyri\cyrc\cyrya}}%
  \def\partname{{\cyr\CYRCH\cyra\cyrs\cyrt\cyri\cyrn\cyra}}%
  \def\enclname{{\cyr\cyrv\cyrk\cyrl\cyra\cyrd\cyrk\cyra}}%
  \def\ccname{{\cyr\cyrk\cyro\cyrp\cyrii\cyrya}}%
  \def\headtoname{{\cyr\CYRD\cyro}}%
  \def\pagename{{\cyr\cyrs.}}%
  \def\seename{{\cyr\cyrd\cyri\cyrv.}}%
  \def\alsoname{{\cyr\cyrd\cyri\cyrv.\ \cyrt\cyra\cyrk\cyro\cyrzh}}
  \def\proofname{{\cyr\CYRD\cyro\cyrv\cyre\cyrd\cyre\cyrn\cyrn\cyrya}}%
  \def\glossaryname{{\cyr\CYRS\cyrl\cyro\cyrv\cyrn\cyri\cyrk\ %
                   \cyrt\cyre\cyrr\cyrm\cyrii\cyrn\cyrii\cyrv}}}

%cyrillic symbols for list and appendix mark use (only allowed symbols acording DSTU 3008-95)
\newcommand*{\Abetka}[1]{\@Abetka{\@nameuse{c@#1}}}
\newcommand*{\@Abetka}[1]%
{\ifcase #1\or \CYRA\or \CYRB\or \CYRV\or \CYRG\or \CYRD\or \CYRE\or \CYRZH\or \CYRI\or \CYRK\or \CYRL\or \CYRM\or \CYRN\or \CYRP\or \CYRR\or \CYRS\or \CYRT\or \CYRU\or \CYRF\or \CYRH\or \CYRC\or \CYRSH\or \CYRSHCH\or \CYRYU\or \CYRYA\else\@ctrerr \fi}
\newcommand*{\abetka}[1]{\@abetka{\@nameuse{c@#1}}}
\newcommand*{\@abetka}[1]%
{\ifcase #1\or \cyra\or \cyrb\or \cyrv\or \cyrg\or \cyrd\or \cyre\or \cyrzh\or \cyri\or \cyrk\or \cyrl\or \cyrm\or \cyrn\or \cyrp\or \cyrr\or \cyrs\or \cyrt\or \cyru\or \cyrf\or \cyrh\or \cyrc\or \cyrsh\or \cyrshch\or \cyryu\or \cyrya\else\@ctrerr \fi}





\g@addto@macro\normalsize{
\setlength\abovedisplayskip{20\p@ plus 3\p@ minus 1\p@} % было: 8 + 2 - 4
\setlength\belowdisplayskip{20\p@ plus 3\p@ minus 1\p@} % было: 8 + 2 - 4
\setlength\abovedisplayshortskip{0\p@ plus 3\p@ minus 0\p@}
\setlength\belowdisplayshortskip{20\p@ plus 3\p@ minus 1\p@}
}


\renewcommand{\labelitemi}{--~}
\renewcommand{\labelitemii}{--~}
\renewcommand{\labelitemiii}{--~}
\renewcommand{\labelenumi}{\@abetka\theenumi)}
\renewcommand{\labelenumii}{\arabic{enumii})}
\renewcommand{\labelenumiii}{\Roman{enumiii})}

\renewcommand{\@listI}{%
              \leftmargin=\parindent
               \addtolength{\leftmargin}{1.5em}
              \rightmargin=0\p@
              \labelsep=0.5em
              \labelwidth=0\p@ 
              \itemindent=0em
              \listparindent=0pt
              \topsep=0\p@ plus 2\p@ minus 4\p@
              \partopsep=0\p@ plus 1\p@ minus 1\p@ 
              \parsep=0\p@ plus 1\p@
              \itemsep=\parsep}
\def\@listii {\leftmargin\leftmarginii
              \labelwidth\leftmarginii
              \advance\labelwidth-\labelsep
              \topsep  0\p@ \@plus 3\p@ \@minus \p@
              \parsep  0\p@ \@plus  \p@ \@minus \p@
              \itemsep \parsep}
\def\@listiii{\leftmargin\leftmarginiii
              \labelwidth\leftmarginiii
              \advance\labelwidth-\labelsep
              \topsep  0\p@ \@plus  \p@ \@minus \p@
              \parsep  \z@
              \partopsep \p@\@plus  \z@ \@minus \p@
              \itemsep \topsep}

\AtBeginDocument{\oneandhalfspace}

%\newcommand{\showfont}{encoding: \f@encoding{},
%  family: \f@family{},
%  series: \f@series{},
%  shape: \f@shape{},
%  size: \f@size{}
%}


\IfFileExists{t2aiso.fd}{
    \newcommand*{\gostfamily}{\fontencoding{T2A}\fontfamily{iso}\selectfont\slshape}
}{
    \newcommand*{\gostfamily}{\sffamily\slshape} % no "\selectfont" needed here
}


\def\x@offset{0.0}
\def\y@offset{0.0}
\newdimen\thick
\newdimen\thin
\thick=0.5mm
\thin=0.2mm

\def\FormTwo{
\pagestyle{empty}
\ClearShipoutPicture
{\AddToShipoutPicture{%
\begin{tikzpicture}[overlay]
%\coordinate (ref) at (0,0);
%\draw[step=5mm,gray,very thin] (0,0) grid (29,29);
\draw[black, line  width=\thick] ( 2.0,          0.5) rectangle (20.5+\x@offset,29.2+\y@offset);
\draw[black, line  width=\thick] ( 2.0+\x@offset, 0.5) rectangle (20.5+\x@offset,4.5);
\draw[black, line  width=\thick] ( 2.0+\x@offset, 4.5) -- (20.5+\x@offset, 4.5);
\draw[black, line  width=\thick] ( 2.0+\x@offset, 3.0) -- (20.5+\x@offset, 3.0);
\draw[black, line  width=\thick] ( 3.7+\x@offset, 0.5) -- ( 3.7+\x@offset, 4.5);
\draw[black, line  width=\thick] ( 6.0+\x@offset, 0.5) -- ( 6.0+\x@offset, 4.5);
\draw[black, line  width=\thick] ( 7.5+\x@offset, 0.5) -- ( 7.5+\x@offset, 4.5);
\draw[black, line  width=\thick] ( 8.5+\x@offset, 0.5) -- ( 8.5+\x@offset, 4.5);
\draw[black, line  width=\thick] (15.5+\x@offset, 0.5) -- (15.5+\x@offset, 3.0);
\draw[black, line  width=\thick] ( 2.7+\x@offset, 3.0) -- ( 2.7+\x@offset, 4.5);
%\draw[black, line  width=\thick] (5.0+\x@offset, 3.0) -- (5.0+\x@offset,  4.5);
\draw[black, line  width=\thick] ( 2.0+\x@offset, 3.5) -- ( 8.5+\x@offset, 3.5);
\draw[black, line  width=\thick] (15.5+\x@offset, 2.0) -- (20.5+\x@offset, 2.0);
\draw[black, line  width=\thick] (15.5+\x@offset, 2.5) -- (20.5+\x@offset, 2.5);
\draw[black, line  width=\thick] (17.0+\x@offset, 2.0) -- (17.0+\x@offset, 3.0);
\draw[black, line  width=\thick] (18.5+\x@offset, 2.0) -- (18.5+\x@offset, 3.0);
\draw[black, line  width=\thin]  ( 2.0+\x@offset, 1.0) -- ( 8.5+\x@offset, 1.0);
\draw[black, line  width=\thin]  ( 2.0+\x@offset, 1.5) -- ( 8.5+\x@offset, 1.5);
\draw[black, line  width=\thin]  ( 2.0+\x@offset, 2.0) -- ( 8.5+\x@offset, 2.0);
\draw[black, line  width=\thin]  ( 2.0+\x@offset, 2.5) -- ( 8.5+\x@offset, 2.5);
\draw[black, line  width=\thin]  ( 2.0+\x@offset, 4.0) -- ( 8.5+\x@offset, 4.0);
\draw[black, line  width=\thin]  (16.0+\x@offset, 2.0) -- (16.0+\x@offset, 2.5);
\draw[black, line  width=\thin]  (16.5+\x@offset, 2.0) -- (16.5+\x@offset, 2.5);
%\sffamily\slshape\selectfont
\gostfamily
\draw (2.35+\x@offset,3.25) node        {\footnotesize {\cyr\CYRZ\cyrm.}};
\draw (3.2+\x@offset, 3.21) node        {\footnotesize {\cyr\CYRA\cyrr\cyrk.}};
\draw (1.9+\x@offset, 2.71) node[right] {\footnotesize {\cyr\CYRR\cyro\cyrz\cyrr\cyro\cyrb.}};
\draw (1.9+\x@offset, 2.21) node[right] {\footnotesize {\cyr\CYRP\cyrr\cyro\cyrv.}};
\draw (1.9+\x@offset, 1.71) node[right] {\footnotesize {\cyr\CYRR\cyre\cyrc\cyre\cyrn\cyrz.}};
\draw (1.9+\x@offset, 1.21) node[right] {\footnotesize {\cyr\CYRN.\ \cyrk\cyro\cyrn\cyrt\cyrr.}};
\draw (1.9+\x@offset, 0.71) node[right] {\footnotesize {\cyr\CYRZ\cyra\cyrt\cyrv\cyre\cyrr\cyrd.}};

\draw (3.6+\x@offset, 2.71) node[right] {\footnotesize \@developer};
\draw (3.6+\x@offset, 2.21) node[right] {\footnotesize \@supervisor};
\draw (3.6+\x@offset, 1.71) node[right] {\footnotesize \@reviewer};
\draw (3.6+\x@offset, 1.21) node[right] {\footnotesize \@controller};
\draw (3.6+\x@offset, 0.71) node[right] {\footnotesize \@approver};

\draw (4.9+\x@offset,   3.21) node      {\footnotesize {\cyr\No \ \cyrd\cyro\cyrk\cyru\cyrm.}};
\draw (6.7+\x@offset,   3.21) node      {\footnotesize {\cyr\CYRP\cyrii\cyrd\cyrp\cyri\cyrs}};
\draw (8.0+\x@offset,   3.21) node      {\footnotesize {\cyr\CYRD\cyra\cyrt\cyra}};
\draw (16.25+\x@offset, 2.71) node      {\footnotesize {\cyr\CYRL\cyrii\cyrt\cyre\cyrr\cyra}};
%\draw (16.25+\x@offset, 2.21) node      {\footnotesize {\cyr\CYRN}};
\draw (17.8+\x@offset,  2.71) node      {\footnotesize {\cyr\CYRA\cyrr\cyrk\cyru\cyrsh}};
\draw (19.5+\x@offset,  2.71) node      {\footnotesize {\cyr\CYRA\cyrr\cyrk\cyru\cyrsh\cyrii\cyrv}};
\draw (17.8+\x@offset,  2.21) node      {\footnotesize \thepage};
\draw (19.5+\x@offset,  2.21) node      {\footnotesize \pageref{LastPage}};
\draw (14.0+\x@offset,  3.7)  node      {\Large\MakeUppercase{\@departmentcode.\@categorycode.\@optioncode.00.000.\@partcode}};
\draw (18.0+\x@offset,  1.3)  node      {\@educationalabbr, {\cyr\cyrg\cyrr.} \@group};
\underonespace
\draw (12.0+\x@offset,  1.71) node[align=center, text width=6.8cm] {\small{\@parttitle\\ \@partdes}};
\oneandhalfspace
%\normalfont
%\draw (1.6+\x@offset,  28.5)  node[rotate=90] {\LaTeX};
\end{tikzpicture}}
}
}

\def\FormTwoA{
\pagestyle{empty}
\ClearShipoutPicture
{\AddToShipoutPicture{%
\begin{tikzpicture}[remember picture, overlay]
%\coordinate (ref) at (0,0);
%\draw[black, line  width=0.1mm] (0.0,  0.0) rectangle (2.0, 2.0);
%\draw[black, line  width=\thick] (2.0+\x@offset, 0.5) rectangle (20.5+\x@offset,29.2);
\draw[black, line  width=\thick] ( 2.0,          0.5) rectangle (20.5+\x@offset,29.2+\y@offset);
\draw[black, line  width=\thick] ( 2.0+\x@offset,0.5) rectangle (20.5+\x@offset,2.0);
\draw[black, line  width=\thick] ( 8.5+\x@offset, 0.5) -- ( 8.5+\x@offset, 2.0);
\draw[black, line  width=\thick] (19.5+\x@offset, 0.5) -- (19.5+\x@offset, 2.0);
\draw[black, line  width=\thick] ( 2.7+\x@offset, 0.5) -- ( 2.7+\x@offset, 2.0);
\draw[black, line  width=\thick] ( 3.7+\x@offset, 0.5) -- ( 3.7+\x@offset, 2.0);
\draw[black, line  width=\thick] ( 6.0+\x@offset, 0.5) -- ( 6.0+\x@offset, 2.0);
\draw[black, line  width=\thick] ( 7.5+\x@offset, 0.5) -- ( 7.5+\x@offset, 2.0);
\draw[black, line  width=\thick] (19.5+\x@offset, 1.3) -- (20.5+\x@offset, 1.3);
\draw[black, line  width=\thin]  ( 2.0+\x@offset, 1.5) -- ( 8.5+\x@offset, 1.5);
\draw[black, line  width=\thick] ( 2.0+\x@offset, 1.0) -- ( 8.5+\x@offset, 1.0);
%\sffamily\slshape\selectfont
\gostfamily
\draw (20.00+\x@offset, 1.6 ) node {\footnotesize {\cyr\CYRA\cyrr\cyrk.}};
\draw ( 2.35+\x@offset, 0.75) node {\footnotesize {\cyr\CYRZ\cyrm.}};
\draw ( 3.20+\x@offset, 0.72) node {\footnotesize {\cyr\CYRA\cyrr\cyrk.}};
\draw ( 4.90+\x@offset, 0.72) node {\footnotesize {\cyr\No \ \cyrd\cyro\cyrk\cyru\cyrm.}};
\draw ( 6.70+\x@offset, 0.72) node {\footnotesize {\cyr\CYRP\cyrii\cyrd\cyrp\cyri\cyrs}};
\draw ( 8.00+\x@offset, 0.72) node {\footnotesize {\cyr\CYRD\cyra\cyrt\cyra}};
\draw (20.00+\x@offset, 0.9 ) node {              \thepage};
\draw (14.00+\x@offset, 1.2 ) node {\Large\MakeUppercase{\@departmentcode.\@categorycode.\@optioncode.00.000.\@partcode}};
\end{tikzpicture}}
}
}



\newcommand{\appheadinhibit}{\let\@makechapterhead\relax}
\newcommand{\pgbreakinhibit}{\vspace{50pt}\let\clearpage\relax}

\newenvironment{a3paperl}[1]
{
\clearpage
\advance\textwidth\pdfpagewidth
\pdfpagewidth=2\pdfpagewidth
\hsize=\textwidth
\linewidth=\hsize
\columnwidth=\hsize
\def\x@offset{21.0}
#1}
{\clearpage \pdfpagewidth=\paperwidth \pdfpageheight=\paperheight \ClearShipoutPicture}

\newenvironment{a3paperp}[1]
{
\clearpage
\advance\textwidth 87mm
%\pdfpagewidth = 297mm \paperwidth = \pdfpagewidth
\pdfpageheight = 420mm \paperheight = \pdfpageheight
\hsize=\textwidth
\linewidth=\hsize
\columnwidth=\hsize
\def\x@offset{8.7}
\def\y@offset{12.3}
#1}
{\clearpage \pdfpagewidth=210mm \pdfpageheight=297mm \ClearShipoutPicture}





\renewcommand{\@biblabel}[1]{#1.}

\renewenvironment{thebibliography}[1]
     {\chapter*{\bibname\@mkboth%
     {\bibname}{\bibname}}
      \list{\@biblabel{\@arabic\c@enumiv}}%
           {\settowidth\labelwidth{\@biblabel{#1}}%
            \leftmargin\labelwidth
            \advance\leftmargin \labelsep\itemsep=0pt\parsep=0pt\relax
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




\setlength\abovecaptionskip{20\p@}
\setlength\belowcaptionskip{10\p@}

\long\def\@makecaption#1#2{%
  \vskip\abovecaptionskip
  \sbox\@tempboxa{#1~--~#2}%
  \def\@tempa{figure}
  \ifx\@captype\@tempa
      \centering
      #1~--~#2
      %\ifdim \wd\@tempboxa > \hsize
      %  #1~--~#2\par
      %\else
      %  \global \@minipagefalse
      %  \hb@xt@\hsize{\hfil\box\@tempboxa\hfil}%
      %\fi
  \else
    #1~--~#2\par
  \fi
  \vskip\belowcaptionskip}

\def\caption{%
   \ifx\@captype\@undefined
     \@latex@error{\noexpand\caption outside float}\@ehd
     \expandafter\@gobble
   \else
     \refstepcounter\@captype
     \expandafter\@firstofone
   \fi
   {\@dblarg{\@caption\@captype}}%
}

\long\def\@caption#1[#2]#3{%
  \par
  \addcontentsline{\csname ext@#1\endcsname}{#1}%
    {\protect\numberline{\csname the#1\endcsname}{\ignorespaces #2}}%
  \begingroup
    %\@parboxrestore
    \if@minipage
      \@setminipage
    \fi
    \normalsize
    \@makecaption{\csname fnum@#1\endcsname}{\ignorespaces #3}\par
  \endgroup}


%\long\def\@makecaption#1#2{%
%  \vskip\abovecaptionskip
%  \onespace
%  \ifx\@captype\capfigure
%      \centering #1~--~#2 \par
%  \else
%      #1~--~#2 \par
%  \fi
%  \vskip\belowcaptionskip}

%\long\def\@makecaption#1#2{%
%  \vskip\abovecaptionskip
%  \sbox\@tempboxa{#1~--~#2}%
%  \ifx\@captype\capfigure
%    \centering #1~--~#2 \par
%  \else
%  %  \ifdim \wd\@tempboxa >\hsize
%      #1~--~#2\par
%  %  \else
%  %    \global \@minipagefalse
%  %    \hb@xt@\hsize{\hfil\box\@tempboxa\hfil}%
%  %  \fi
%  \fi
%  \vskip\belowcaptionskip}



\newif\if@mainmatter \@mainmattertrue
\newcommand\mainmatter{\@mainmattertrue}
\newcommand\frontmatter{\@mainmatterfalse}
\newcommand\aftermatter{\@mainmatterfalse}

\newcommand\n{\protect\\}

\newcommand{\underonespace}{\linespread{0.8}\selectfont}
\newcommand{\onespace}{\linespread{1}\selectfont}
\newcommand{\oneandhalfspace}{\linespread{1.36}\selectfont}

\setlength{\parindent}{2.5em}

\newcommand\emp{}
\renewcommand\maketitle{
\frontmatter
\onespace
\begin{titlepage}
  {\centering\@educational\\*Кафедра \@department\\*}
  \vfill
  {\centering\Large\@category\\}
  \vspace{2em}
  {\centering з дисципліни: <<\@discipline>>\\на тему: \@title\\}
  \vfill
  \hfill\begin{minipage}{0.6\textwidth}
  Студента(ки)\hfill\@course\hfill курсу \hfill\@group\hfill групи\\
  напряму підготовки: \@direction\\
  спеціальності: \@speciality, %\rightskip 0em plus 5em
  \@author\\\\
  Керівник: \ifx \@degree \emp \@position~\@leader\\\\
            \else              \@degree, \@position~\@leader\\\\
            \fi
  \hrulefill
  Національна шкала \hrulefill \\\\
  Кількість балів: \hrulefill~Оцінка: ECTS~\hrulefill \\
  \end{minipage}
  \hangindent=3.5cm \hangafter=0 \noindent
  \begin{tabular}{rcc}
  Члени комісі: & \underline{\hspace{4cm}} &  \underline{\hspace{6.5cm}}\\
  ~ & \small (підпис) & \small (прізвище та ініціали)\\\\
  ~ & \underline{\hspace{4cm}} & \underline{\hspace{6.5cm}}\\
  ~ & \small (підпис) & \small (прізвище та ініціали)\\\\
  ~ & \underline{\hspace{4cm}} & \underline{\hspace{6.5cm}}\\
  ~ & \small (підпис) & \small (прізвище та ініціали)\\
  \end{tabular}
  \vfill
  {\centering м.~\@city~--~{\@annum}~р.\\}
\end{titlepage}
\oneandhalfspace
\setcounter{page}{2}
\mainmatter}


\renewcommand{\@evenhead}{\hfill\thepage}
\renewcommand{\@oddhead}{\hfill\thepage}
\renewcommand{\@evenfoot}{}
\renewcommand{\@oddfoot}{}

\renewcommand\tableofcontents{%
    \frontmatter%
    \chapter*{\contentsname}%
    \@starttoc{toc}%
    \mainmatter%
}

\def\@starttoc#1{%
  \begingroup
  %\enlargethispage{-5\baselineskip}
  %\renewcommand{\@evenfoot}{\hfill\small Typeset by \LaTeX}
  %\renewcommand{\@oddfoot}{\hfill\small Typeset by \LaTeX}
    \makeatletter
    \@input{\jobname.#1}%
    \if@filesw
      \expandafter\newwrite\csname tf@#1\endcsname
      \immediate\openout \csname tf@#1\endcsname \jobname.#1\relax
    \fi
    \@nobreakfalse
  \endgroup}


\def\@dottedtocline#1#2#3#4#5{%
  \ifnum #1>\c@tocdepth 
  \else
    \vskip \z@ \@plus.2\p@
    {\leftskip #2\relax \rightskip \@tocrmarg plus 15em \parfillskip -\rightskip %mode <plus 15em> for avoid hyph. in TOC
     \parindent #2\relax\@afterindenttrue
     \interlinepenalty\@M
     \leavevmode
     \@tempdima #3\relax
     \advance\leftskip \@tempdima \null\nobreak\hskip -\leftskip
     {#4}\nobreak
     \leaders\hbox{$\m@th
        \mkern \@dotsep mu\hbox{.}\mkern \@dotsep
        mu$}\hfill
     \nobreak
     \hb@xt@\@pnumwidth{\hfil \normalcolor #5}%   \hfil\normalfont   |||
     \par}%
  \fi}

\newcommand\chaptindent{\advance\leftskip 1.0em \hskip -\leftskip}
\newcommand\appenindent{\advance\leftskip 6.0em \hskip -\leftskip}

\renewcommand*\l@chapter[2]{%
  \ifnum \c@tocdepth >\m@ne
    \addpenalty{-\@highpenalty}%
    \vskip 0.0em \@plus\p@
    \setlength\@tempdima{1.0em}%
    \begingroup
      \parindent \z@ \rightskip \@pnumwidth plus 15em %mode <plus 15em> for avoid hyph. in TOC
      \parfillskip -\@pnumwidth
      \leavevmode
      %\advance\leftskip\@tempdima 
      %\hskip -\leftskip
       #1 \nobreak
          \leaders\hbox{$\m@th
          \mkern \@dotsep mu\hbox{.}\mkern \@dotsep
          mu$}\hfill% 
        \nobreak\hb@xt@\@pnumwidth{\hss #2}\par
      \penalty\@highpenalty
    \endgroup
  \fi}

\def\l@section{\@dottedtocline{1}{1.0em}{2.0em}}



\renewcommand\chapter{\clearpage
                      \global\@topnum\z@
                      \@afterindenttrue
                      \secdef\@chapter\@schapter}


\def\@chapter[#1]#2{\ifnum \c@secnumdepth > \m@ne
                      \if@mainmatter                 
                         \refstepcounter{chapter}%
                         \addcontentsline{toc}{chapter}%
                          {\chaptindent\protect\numberline{\thechapter}\MakeUppercase{#1}}%
                      \else
                         \refstepcounter{chapter} 
                         \addcontentsline{toc}{chapter}%
                          {\appenindent\nobreak\@chapapp\space\protect\numberline{\thechapter}\space{ #1}}%
                      \fi
                    \else
                       \addcontentsline{toc}{chapter}\MakeUppercase{#1}%
                    \fi
                    \chaptermark{#1}%
                    \addtocontents{lof}{\protect\addvspace{10\p@}}%
                    \addtocontents{lot}{\protect\addvspace{10\p@}}%
                      \@makechapterhead{#2}%
                      \@afterheading}


%\def\@chapter[#1]#2{\ifnum \c@secnumdepth > \m@ne
%                      \if@mainmatter                 
%                         \refstepcounter{chapter}%
%                         \addcontentsline{toc}{chapter}%
%                          {\chaptindent\protect\numberline{\thechapter}\MakeUppercase{#1}}%
%                      \else
%                        \ifnum \value{chapter}=26 \setcounter{chapter}{28} 
%                          \else 
%                           \ifnum \value{chapter}=17 \setcounter{chapter}{19} 
%                             \else 
%                              \ifnum \value{chapter}=10 \setcounter{chapter}{14} 
%                                \else 
%                                 \ifnum \value{chapter}=8 \setcounter{chapter}{10} 
%                                   \else 
%                                    \ifnum \value{chapter}=6 \setcounter{chapter}{8} 
%                                      \else \refstepcounter{chapter} 
%                                    \fi
%                                 \fi
%                              \fi
%                           \fi
%                        \fi 
%                         \addcontentsline{toc}{chapter}%
%                          {\appenindent \nobreak\@chapapp\space\protect\numberline{\thechapter}\space{ #1}}%
%                      \fi
%                    \else
%                       \addcontentsline{toc}{chapter}\MakeUppercase{#1}%
%                    \fi
%                    \chaptermark{#1}%
%                    \addtocontents{lof}{\protect\addvspace{10\p@}}%
%                    \addtocontents{lot}{\protect\addvspace{10\p@}}%
%                      \@makechapterhead{#2}%
%                      \@afterheading}



\def\@makechapterhead#1{%
  \begin{center} 
   \parindent \z@% \normalfont                             
   \ifnum \c@secnumdepth >\m@ne
     \if@mainmatter 
         \thechapter\hspace{1.0ex} 
     \else \@chapapp\space 
         \thechapter\space\par\nobreak 
     \fi
     \nobreak 
   \fi
   \interlinepenalty\@M
   \if@mainmatter \MakeUppercase{#1} \par\nobreak \else {#1} \par\nobreak \fi
   \vskip 20\p@
  \end{center}}

\def\@schapter#1{\if@mainmatter
                   \addcontentsline{toc}{chapter}{\MakeUppercase{#1}}%  
                 \fi
                 \@makeschapterhead{#1}%
                 \@afterheading}

\def\@makeschapterhead#1{%
  %\vspace*{50\p@}%
  {\parindent \z@ \centering %\normalfont
    \interlinepenalty \@M
    \MakeUppercase{#1} \par\nobreak
    \vskip 20\p@
  }}

\def\@startsection#1#2#3#4#5#6{
                  \if@noskipsec 
                    \leavevmode 
                  \fi \par 
                  \@tempskipa #4\relax
                  \@afterindenttrue 
                  %\ifdim \@tempskipa <\z@ 
                  %  \@tempskipa -\@tempskipa \@afterindentfalse 
                  %\fi
                  \if@nobreak 
                    \everypar {}
                  \else
                    \addpenalty \@secpenalty \addvspace \@tempskipa 
                  \fi
                  \@ifstar {\@ssect {#3}{#4}{#5}{#6}}
                  {\@dblarg {\@sect {#1}{#2}{#3}{#4}{#5}{#6}}}}


\def\@sect#1#2#3#4#5#6[#7]#8{%
  \rightskip \z@ plus 15em             %avoid hyphenation in section name
  \ifnum #2>\c@secnumdepth
    \let\@svsec\@empty
  \else
    \refstepcounter{#1}%
    \protected@edef\@svsec{\@seccntformat{#1}\relax}%
  \fi
  \@tempskipa #5\relax
  \ifdim \@tempskipa>\z@
    \begingroup
      #6{%
        \@hangfrom{\hskip #3\relax\@svsec}%
          %\interlinepenalty \@M #8\@@par}%
          \interlinepenalty \@M #8}%          %
    \endgroup
    \csname #1mark\endcsname{#7}%
    \addcontentsline{toc}{#1}{%
      \ifnum #2>\c@secnumdepth \else
        \protect\numberline{\csname the#1\endcsname}%
      \fi
      #7}%
  \else
    \def\@svsechd{%
      #6{\hskip #3\relax
      \@svsec #8}%
      \csname #1mark\endcsname{#7}%
      \addcontentsline{toc}{#1}{%
        \ifnum #2>\c@secnumdepth \else
          \protect\numberline{\csname the#1\endcsname}%
        \fi
        #7}}%
  \fi
  \@xsect{#5}
  \rightskip\z@}                    %cancel avoid hyphenation in section name

\def\@xsect#1{%
  \@tempskipa #1\relax
  \ifdim \@tempskipa>\z@
    \par \nobreak
    \vskip \@tempskipa
    \@afterheading
  \else
    \@nobreakfalse
    \global\@noskipsectrue
    \everypar{%
      \if@noskipsec
        \global\@noskipsecfalse
       {\setbox\z@\lastbox}%
        \clubpenalty\@M
        \begingroup \@svsechd \endgroup
        \unskip
        \@tempskipa #1\relax
        \hskip -\@tempskipa
      \else
        \clubpenalty \@clubpenalty
        \everypar{}%
      \fi}%
  \fi
  \ignorespaces}


\renewcommand\section{\@startsection{section}{1}{\parindent}%
                                    {4.5ex \@plus 1ex \@minus .2ex}%
                                    {4.5ex \@plus .2ex}%
                                    {}}
\renewcommand\appendix{\par
  \aftermatter
  \setcounter{chapter}{0}%
  \setcounter{section}{0}%
  \gdef\@chapapp{\appendixname}%
  \gdef\thechapter{\@Abetka\c@chapter}
}




\newcommand\explmark[1]{\renewcommand\@explmark{#1}}
\newcommand\@explmark{{\cyr\cyrd\cyre\ \ }}

\newlength{\explanwidth}
%\settowidth{\explanwidth}{\@explmark}

\newcommand{\fitem}{\refstepcounter{enumi}\item[\@explmark]}

%\setlength{\explanwidth}{1.8em}
\newlength{\explanindent} 
\setlength{\explanindent}{0pt}
\newenvironment{explanation}{%
  \begin{list}{}{\setlength{\parsep}{0pt}%
  \setlength{\topsep}{0pt}%
  \setlength{\itemsep}{0pt}%
  \setlength{\labelsep}{0pt}%
  \settowidth{\explanwidth}{\@explmark}%
  \setlength{\labelwidth}{\explanwidth}%
  \setlength{\leftmargin}{\explanwidth}%
  \addtolength{\leftmargin}{\explanindent}}}{%
  \end{list}}
