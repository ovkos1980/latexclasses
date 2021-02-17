%% This is file `kkrvntu.cls', based on `extreport.cls' 
%% generated by Ovchinnikov Konstantin,
%%              Vinnitsa State Technical University, Ukraine.
%%
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
\ProvidesClass{kkrvntu}[2016/11/29 v1.0a Non Standard LaTeX class]

\LoadClass[14pt]{extreport}
\RequirePackage[T1,T2A]{fontenc}              
\RequirePackage[ukrainian]{babel}             
\RequirePackage[utf8]{inputenc}
\RequirePackage{forloop}
\RequirePackage{ulem}
\RequirePackage[paper=A4,pagesize]{typearea}
\RequirePackage[a4paper,left=2cm,right=1.5cm,top=1cm,bottom=2cm,layoutvoffset=0.5cm]{geometry}
\RequirePackage{tikz}
\RequirePackage{etoolbox}
\RequirePackage{enumitem}
\RequirePackage{setspace}
\RequirePackage{longtable}
\RequirePackage{multirow}
\RequirePackage{multibib}
\RequirePackage{titlesec}

\newcommand\ProtocolNumber[1]{\renewcommand\@ProtocolNumber{#1}}
\newcommand\@ProtocolNumber{7}
\newcommand\ProtocolDay[1]{\renewcommand\@ProtocolDay{#1}}
\newcommand\@ProtocolDay{22}
\newcommand\ProtocolMonth[1]{\renewcommand\@ProtocolMonth{#1}}
\newcommand\@ProtocolMonth{листопада}
\newcommand\ProtocolDMonth[1]{\renewcommand\@ProtocolDMonth{#1}}
\newcommand\@ProtocolDMonth{11}
\newcommand\ProtocolYear[1]{\renewcommand\@ProtocolYear{#1}}
\newcommand\@ProtocolYear{2017}

\newcommand\ChiefName[1]{\renewcommand\@ChiefName{#1}}
\newcommand\@ChiefName{Кучерук~В.~Ю.}
\newcommand\ChiefRName[1]{\renewcommand\@ChiefRName{#1}}
\newcommand\@ChiefRName{В.~Ю.~Кучерук}
\newcommand\ChiefDegree[1]{\renewcommand\@ChiefDegree{#1}}
\newcommand\@ChiefDegree{д.т.н.}
\newcommand\ChiefRank[1]{\renewcommand\@ChiefRank{#1}}
\newcommand\@ChiefRank{проф.}
\newcommand\ChiefDepartment[1]{\renewcommand\@ChiefDepartment{#1}}
\newcommand\@ChiefDepartment{метрології та \mbox{промислової} автоматики}
\newcommand\ChiefDepartmentAbbr[1]{\renewcommand\@ChiefDepartmentAbbr{#1}}
\newcommand\@ChiefDepartmentAbbr{МПА}

\newcommand\DeveloperName[1]{\renewcommand\@DeveloperName{#1}}
\newcommand\@DeveloperName{Овчинников~К.~В.}
\newcommand\DeveloperDegree[1]{\renewcommand\@DeveloperDegree{#1}}
\newcommand\@DeveloperDegree{к.т.н.}
\newcommand\DeveloperRank[1]{\renewcommand\@DeveloperRank{#1}}
\newcommand\@DeveloperRank{доц.}
\newcommand\DeveloperDepartment[1]{\renewcommand\@DeveloperDepartment{#1}}
\newcommand\@DeveloperDepartment{метрології та \mbox{промислової} автоматики}
\newcommand\DeveloperDepartmentAbbr[1]{\renewcommand\@DeveloperDepartmentAbbr{#1}}
\newcommand\@DeveloperDepartmentAbbr{МПА}
\newcommand\DeveloperFaculty[1]{\renewcommand\@DeveloperFaculty{#1}}
\newcommand\@DeveloperFaculty{комп'ютерних систем і автоматики}
\newcommand\DeveloperUniversity[1]{\renewcommand\@DeveloperUniversity{#1}}
\newcommand\@DeveloperUniversity{Вінницький національний технічний університет}
\newcommand\DeveloperUniversityAbbr[1]{\renewcommand\@DeveloperUniversityAbbr{#1}}
\newcommand\@DeveloperUniversityAbbr{ВНТУ}
\newcommand\DeveloperMinistry[1]{\renewcommand\@DeveloperMinistry{#1}}
\newcommand\@DeveloperMinistry{Міністерство освіти і науки України}

\newcommand\StudentLevel[1]{\renewcommand\@StudentLevel{#1}}
\newcommand\@StudentLevel{бакалавр}
\newcommand\StudentDiscipline[1]{\renewcommand\@StudentDiscipline{#1}}
\newcommand\@StudentDiscipline{Обчислювальна техніка та програмування}
\newcommand\StudentProfessionCode[1]{\renewcommand\@StudentProfessionCode{#1}}
\newcommand\@StudentProfessionCode{6.051001}
\newcommand\StudentProfessionName[1]{\renewcommand\@StudentProfessionName{#1}}
\newcommand\@StudentProfessionName{Метрологія та інформаційно-вимірювальні технології}
\newcommand\StudentSemester[1]{\renewcommand\@StudentSemester{#1}}
\newcommand\@StudentSemester{4}
\newcommand\StudentCtrlForm[1]{\renewcommand\@StudentCtrlForm{#1}}
\newcommand\@StudentCtrlForm{іспит}

\newcommand\ReaderDegree[1]{\renewcommand\@ReaderDegree{#1}}
\newcommand\@ReaderDegree{к.т.н}
\newcommand\ReaderRank[1]{\renewcommand\@ReaderRank{#1}}
\newcommand\@ReaderRank{доц.}
\newcommand\ReaderDepartmentAbbr[1]{\renewcommand\@ReaderDepartmentAbbr{#1}}
\newcommand\@ReaderDepartmentAbbr{АІВТ}
\newcommand\ReaderName[1]{\renewcommand\@ReaderName{#1}}
\newcommand\@ReaderName{Гармаш~В.~В.}



\newcounter{curritem}
\setcounter{curritem}{1}
 
\newcounter{@TotalNum}            
\setcounter{@TotalNum}{10}  %кол-во билетов

\newcommand{\TotalNum}[1]{\setcounter{@TotalNum}{#1}}

\newcounter{nbilet}
\newcommand{\BILET}{
\addtocounter{nbilet}{1}%
 \begin{center}
 {\bf Екзаменаційний білет №\underline{~\,\arabic{nbilet}~}}
 \end{center}
}

\newcites{Basic}{Базова}
\newcites{Subs}{Допоміжна}
\renewcommand{\@biblabel}[1]{#1.\hfil}

\titleformat{\chapter}[block]{\filcenter}{\thechapter}{1em}{}{}
\titlespacing*{\chapter}{0pt}{1pt}{20pt}

\newcommand\lengthof[1]{\csname pgfmath@randomlist@#1\endcsname}
\newcommand\nthof[2]{\csname pgfmath@randomlist@#2@#1\endcsname}

\def\qfirstlist{%
{I - 1?}%
{I - 2?}%
{I - 3?}%
{I - 4?}%
{I - 5?}%
{I - 6?}%
{I - 7?}%
{I - 8?}%
{I - 9?}%
{I - 10?}%
}

\def\qsecondlist{%
{II - 1?}%
{II - 2?}%
{II - 3?}%
{II - 4?}%
{II - 5?}%
{II - 6?}%
{II - 7?}%
{II - 8?}%
{II - 9?}%
{II - 10?}%
}

\newcommand\declarelist[1]{
 \expandafter\let\expandafter\tmp\csname q#1\endcsname
 \pgfmathdeclarerandomlist{#1}{\tmp}}

\declarelist{firstlist}
\declarelist{secondlist}

%\makeatletter
 \def\prunelist#1{
 \expandafter\xdef\csname pgfmath@randomlist@#1\endcsname
         {\the\numexpr\csname pgfmath@randomlist@#1\endcsname-1\relax}
 \count@\pgfmath@randomtemp 
 \loop
  \expandafter\global\expandafter\let
  \csname pgfmath@randomlist@#1@\the\count@\expandafter\endcsname
  \csname pgfmath@randomlist@#1@\the\numexpr\count@+1\relax\endcsname
  \ifnum\count@<\csname pgfmath@randomlist@#1\endcsname\relax
  \advance\count@\@ne
 \repeat}
%\makeatother

\newcommand\printfrom[1]{
 \pgfmathrandomitem\z{#1}
  \z
  \prunelist{#1}
 \ifnum \lengthof{#1} = 0 \declarelist{#1} \fi
}



%print titlte page
\newcommand\printkkrtitle{
 \newpage
 %\pagestyle{empty}
 \onehalfspacing
 \begin{center}
  %\centering
  \@DeveloperMinistry\\
  \@DeveloperUniversity\\
  Факультет \@DeveloperFaculty\\
  Кафедра \@DeveloperDepartment\\
  \vfill
  \MakeUppercase{Пакет комплексних контрольних робіт}\\
  з дисципліни <<\@StudentDiscipline>>\\
  \vspace{3em}
  для студентів спеціальності \@StudentProfessionCode~--~\@StudentProfessionName\\
 \end{center}
 \vfill

 \begin{tabular}{p{6cm}p{10cm}}
 &Затверджено на засіданні кафедри \newline \@DeveloperDepartment \newline протокол №\underline{~  \@ProtocolNumber~} від \underline{<<\@ProtocolDay>>}~\underline{~\@ProtocolMonth~} \@ProtocolYear~р.\newline Завідувач кафедри \@ChiefDepartmentAbbr \newline \@ChiefName
 \end{tabular}
 \vfill
}




\newcommand\printkkrquestions{
\pagestyle{empty}
\newcounter{ct}
\forloop{ct}{0}{\value{ct} < \value{@TotalNum}}
{
 \newpage 
 \onehalfspacing
 \begin{center}
 \MakeUppercase{\@DeveloperUniversity}\\
 Інститут \@DeveloperFaculty\\
 Кафедра \@DeveloperDepartment\\
 \vspace{3em}
 \MakeUppercase{Комплексна контрольна робота}\\
 \vspace{3em}
 з дисципліни <<\@StudentDiscipline>>\\
 для студентів спеціальності \@StudentProfessionCode~-- \@StudentProfessionName\\
 \vspace{3em}
 \BILET
 \end{center}
 \begin{enumerate}
  \item \printfrom{firstlist}
  \item \printfrom{secondlist}
 \end{enumerate} 
 \vfill
 \doublespacing
 \noindent Розробив:\hfill\@DeveloperDegree,~\@DeveloperRank~\@DeveloperName\\
 Затверджено: на засіданні кафедри <<\@DeveloperDepartment>>\\
 Протокол №\underline{~\@ProtocolNumber~} від \underline{<<\@ProtocolDay>>}~\underline{~\@ProtocolMonth~}   \@ProtocolYear~р.\\\\
 Завідувач кафедри,~\@ChiefDegree,~\@ChiefRank~\hfill\@ChiefName\\
 \vspace{5em}
}%forloop
}



\newcommand\printkkrtable{
\newpage
\singlespacing{
\begin{center}
Критерії оцінювання знань, умінь та навичок студентів
\end{center}
\small{
\begin{longtable}{|c|c|c|p{10.5cm}|} \hline
\multicolumn{3}{|c|}{Державна оцінка} & \multirow{4}*{Критерії оцінювання знань, умінь та навичок студентів} \\ \cline{1-3}
За      & За 5-    & За     & \\ 
нац.    & бальною  & шкалою & \\
шкалою  & шкалою   & ECTS   & \\
\hline
\multirow{3}*{\vbox{\vspace{11em}\hbox{відмінно}}}    & \multirow{1}*{\vbox{\vspace{4em}\hbox{5+}}}  & \multirow{3}*{\vbox{\vspace{11em}\hbox{А}}} & виставляється студентові, який показав під час виконання завдання всебічні, систематизовані і глибою знання програмного матеріалу, виявив творчі здібності та уміння при виконанні навчально-програмного матеріалу, проявив здатність до самостійного оновлення та поповнення знань, розкрив можливості творчого використання теоретичних знань на практиці, займається науково-дослідною роботою по відповідному напрямку\\ \cline{2-2}\cline{4-4}
                           & \multirow{1}*{\vbox{\vspace{4em}\hbox{5}}}   &                  & виставляється студентові, який показав під час виконання завдання всебічні, систематизовані і глибокі знання програмного матеріалу, виявив творчі здібності та уміння при виконанні навчально-програмного матеріалу, проявив здатність до самостійного оновлення та поповнення знань, розкрив можливості творчого використання теоретичних знань на практиці, нахил до наукової роботи\\ \cline{2-2}\cline{4-4} 
                           & \multirow{1}*{\vbox{\vspace{4em}\hbox{5$-$}}}  &                  & виставляється студентові, який показав під час виконання завдання всебічні, систематизовані і глибокі знання програмного матеріалу, виявив творчі та уміння при виконанні навчально-програмного проявив здатність до самостійного оновлення та поповнення знань, розкрив можливості творчого використання теоретичних знань на практиці\\ \cline{2-2}\cline{4-4}
\hline
\multirow{3}*{\vbox{\vspace{11em}\hbox{добре}}}       & \multirow{1}*{\vbox{\vspace{4em}\hbox{4+}}}  & \multirow{1}*{\vbox{\vspace{4em}\hbox{B}}}                & виставляється студентові, який показав під час виконання побічні знання програмного матеріалу, оволодів основною літературою, що рекомендована програмою, показав стійкий характер знань і здатність до їх самостійного оновлення та поповнення у ході подальшого професійної діяльності, допустивши незначні помилки при виконанні практичних завдань, має нахил до наукової роботи\\ \cline{2-4}
                           & \multirow{1}*{\vbox{\vspace{4em}\hbox{4}}}   & \multirow{2}*{\vbox{\vspace{8em}\hbox{C}}} & виставляється студентові, який показав під час виконання завдання побічні знання програмного матеріалу, оволодів основною літературою, що рекомендована програмою, показав стійкий характер знань і здатність до їх самостійного оновлення та поповнення у ході подальшого навчання та професійної діяльності, допустивши незначні помилки при виконанні практичних завдань\\ \cline{2-2}\cline{4-4} 
                           & \multirow{1}*{\vbox{\vspace{4em}\hbox{4$-$}}}  &                  & виставляється студентові, який показав під час виконання побічні знання програмного матеріалу, оволодів основною літературою, що рекомендована програмою, показав стійкий характер знань і здатність до їх самостійного оновлення та поповнення у ході подальшого навчання та професійної діяльності, допустивши окремі помилки при виконанні окремих завдань\\ \cline{2-2}\cline{4-4}
\hline\pagebreak
\hline
\multirow{3}*{\vbox{\vspace{11em}\hbox{задовільно}}}  & \multirow{1}*{\vbox{\vspace{3em}\hbox{3+}}}  & \multirow{1}*{\vbox{\vspace{3em}\hbox{D}}}                & виставляється студентові, що виявив знання основного навчального програмного матеріалу в обсязі, необхідному для подальшого навчання та наступної роботи за професією, справляється з виконанням завдань, окремі помилки у відповідях на питання при виконанні практичних завдань репродуктивного відтворення\\ \cline{2-4}
                           & \multirow{1}*{\vbox{\vspace{4em}\hbox{3}}}   & \multirow{2}*{\vbox{\vspace{9em}\hbox{E}}} & виставляється студентові, що виявив знання основного навчального матеріалу в обсязі, необхідному для подальшого навчання та наступної роботи за професією, справляється з виконанням завдань, допустив окремі помилки у відповідях на питання при виконанні практичних завдань на рівні репродуктивного відтворення, але володіє необхідними знаннями для подолання допущених похибок під керівництвом викладача\\ \cline{2-2}\cline{4-4} 
                           & \multirow{1}*{\vbox{\vspace{4em}\hbox{3$-$}}}  &                  & виставляється студентові, що виявив знання основного навчально-програмного матеріалу в обсязі, необхідному для подальшого навчання та наступної роботи за професією, справляється з виконанням завдань, допустив помилки у відповідях на питання при виконанні практичних завдань на рівні репродуктивного відтворення, але володіє необхідними знаннями для подолання допущених похибок під керівництвом викладача\\ \cline{2-2}\cline{4-4}
\hline
\multirow{3}*{\vbox{\vspace{11em}\hbox{незадовільно}}}& \multirow{1}*{\vbox{\vspace{4em}\hbox{2+}}}  & \multirow{3}*{\vbox{\vspace{11em}\hbox{F}}} & виставляється студентові, який не виявив достатніх знань основного навчально-програмного матеріалу, допустив принципові помилки у виконанні передбачених завданням питань, не може без допомоги викладача використати знання при подальшому навчанні, не спромігся оволодіти навичками практичного застосування теоретичних знань\\ \cline{2-2}\cline{4-4}
                           & \multirow{1}*{\vbox{\vspace{4em}\hbox{2}}}   &                  & виставляється студентові, який не виявив достатніх знань основного навчально-програмного матеріалу, допустив суттєві помилки у виконанні передбачених завданням питань, не може без допомоги викладача використати знання при подальшому навчанні, не спромігся оволодіти навичками практичного застосування теоретичних знань\\ \cline{2-2}\cline{4-4} 
                           & \multirow{1}*{\vbox{\vspace{4em}\hbox{2$-$}}}  &                  & виставляється студентові, який не виявив ніяких знань основного навчально-програмного матеріалу, допустив вагомі помилки у виконанні передбачених завданням питань, не може без допомоги викладача використати знання при подальшому навчанні, не спромігся оволодіти навичками практичного застосування теоретичних знань\\ \cline{2-2}\cline{4-4}
\hline
\end{longtable}}}
}



\newcommand\printkkrlit[3]{
\newpage
\begin{center}
Література\\
\end{center}

\nociteBasic{*}
\nociteSubs{*}

%убираем номер со страницы ``литература''
%\let\ps@plain\ps@empty

{\let\clearpage\relax
\bibliographystyleBasic{#1}%gost2003}
\bibliographyBasic{#2}%biblio_basic}

\bibliographystyleSubs{#1}%gost2003}
\bibliographySubs{#3}%biblio_auxiliary}
}
}


\newcommand\printkkrreview{
\newpage
\onehalfspacing
\begin{center}
\MakeUppercase{Рецензія}\\
на комплексну контрольну роботу з дисципліни <<\@StudentDiscipline>>\\
напрям підготовки \@StudentProfessionCode~–-~<<\@StudentProfessionName>>\\
\end{center}
\vspace{3em}

\par Завдання на комплексну контрольну роботу з дисципліни <<\@StudentDiscipline>> для студентів напряму підготовки \@StudentProfessionCode~–-~<<\@StudentProfessionName>> представлені в повному обсязі (\arabic{@TotalNum}~варіантів), усі варіанти завдань приблизно рівнозначні за складністю і відповідають вимогам навчальної програми.

Розроблені критерії оцінювання комплексної контрольної роботи побудовані за п’яти бальною шкалою і є обґрунтованими, в них враховано, що визначенню підлягає залишковий рівень знань студентів.

Недоліком можна вважати недостатню кількість завдань, що потребують розрахунків.

В цілому комплексна контрольна робота відповідає чинним у~\@DeveloperUniversityAbbr~вимогам  і  може використовуватись для оцінювання залишкових знань студентів напряму підготовки \StudentProfessionCode~–-~<<\@StudentProfessionName>> із дисципліни <<\@StudentDiscipline>>.
\vfill
\noindent Рецензент\\
\@ReaderDegree,~\@ReaderRank~каф.~\@ReaderDepartmentAbbr\hfill\@ReaderName
\vspace{3em}
}