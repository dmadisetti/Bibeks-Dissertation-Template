# JHU Thesis or Dissertation Template

This is an unofficial thesis (masters) or dissertation (PhD) template for Johns Hopkins with recent updates as listed below. This template is created to be used on Overleaf and the compilation details are given below. However, you can also compile it locally on your computer as well if you already know how to do it, but not within the scope of this README file.

As of March 2024, the template follows the thesis or dissertation formatting requirements provided by the [Johns Hopkins University Sheridan Library](https://www.library.jhu.edu/library-services/electronic-theses-dissertations/formatting-requirements/). Johns Hopkins Library is flexible in terms of the format except for the title page, margins, and overall double-spaced content. **However, be sure to check the requirements before you proceed any further. It is the user's responsibility to ensure all the formatting requirements are met.**

## Table of Contents

* [Version history for the template](#version-history-for-the-template)
* [What is included in this version of the template](#what-is-included-in-this-version-of-the-template)
* [How to use the template on Overleaf](#how-to-use-the-template-on-overleaf)
* [Document formatting (customization beyond the requirements)](#document-formatting-customization-beyond-the-requirements)
* [Basic user guidelines](#basic-user-guidelines)
  + [Before you begin](#before-you-begin)
  + [The main file](#the-main-file)
  + [Title page](#title-page)
  + [Prefaces and TOC, LOT, LOF, etc.](#prefaces-and-toc-lot-lof-etc)
  + [Chapter texts](#chapter-texts)
  + [Figures, Tables, and Algorithms](#figures-tables-and-algorithms)
  + [Bibliography](#bibliography)
  + [Generating PDF/A compliant output file for the JH Library on Overleaf](#generating-pdfa-compliant-output-file-for-the-jh-library-on-overleaf)
* [Contributing to the project](#contributing-to-the-project)


## Version history for the template

The report class-based template was first created by R. Jacob Vogelstein in May 2007 and then
- updated by Noah J. Cowan on March 01, 2010
- [updated by Brian D. Weitzner](https://github.com/weitzner/jhu-thesis-template) on April 29, 2014
- [updated by John Muschelli](https://github.com/muschellij2/PhD_Thesis) on January 29, 2016
- [updated by Leonardo Collado Torres](https://github.com/lcolladotor/jhu-thesis-template) on April 13, 2016
- [updated by John Clayton](https://github.com/jrclayton/jhu-dissertation-mwe) in December 2019.
- updated by Bibekananda Datta on March 31, 2024.

Compared to the previous version, the current version of the template has:
  - latex code reorganized in a more readable and understandable format with easy-to-customize formatting variables
  - title page formatted following the library guidelines strictly with easy-to-use macros
  - the updated appearance of the table of contents (TOC), list of figures (LOF), and list of tables (LOT) with custom macros for each of them
  - customization options to control the font size, shape, and white space of different headings
  - specific settings for adding quotes to the chapters (epigraph package)
  - examples of customized macros for mathematical and non-mathematical environments
  - supporting files to generate PDF/A output on Overleaf directly


> [!NOTE]
>
> This version of the template is not available on Overleaf Gallery as it takes time to release any quick bug fix or update (also Overleaf does not encourage this). For the same reason, it is not available a class on CTAN since it will require the user to have access to the most updated version of LaTeX distribution and frequent updates will be difficult.



## What is included in this version of the template

Since the template is based on the report class, it is subdivided into multiple chapters. There are separate .tex files for all the front matters (mandatory or optional), technical chapters, and appendices.

| File name | Description |
| --------- | ----------- |
| `main.tex` | is the driver or root file which includes all the preamble, document settings, package settings, and macros as needed as well as the auxiliary .tex files for each chapter. I would recommend going through the different sections of this file before you start working to understand the available packages and options. |
| `preface/<filename>.tex` | are the `.tex` files dedicated to individual pages (e.g., title, dedication) or environments (such as abstract, bibliography, etc.) or technical chapters. These files are called from the `main.tex` file using an `\include{}` command which flushes all the floating objects and starts a new page. |
| `figures` | is the subdirectory containing all the figures for the thesis. You can add the figures as chapter-wise PDF files or as just individual images with allowable extensions. Images are called using the `\includegraphics{}` command in a figure environment. |
| `thesis.bib` | is a biblatex-compatible file that contains all the bibliographic items. Use Zotero, Mendeley, EndNote, or some other citation manager to generate this file. |
| `lib/` | contains predefined sections such as the frontmatter and backmatter of the thesis. |
| `sty/` | contains definitions and macros used in formatting the thesis. |
| `latexmkrc` | contains additional settings for the make file to generate PDF/A output. This is required to be in the main directory of the Overleaf project. Do not change the file name. |
| `output.xmpdata` | contains simple meta-data to be tagged in the final PDF/A file. Usage of this file is optional and the content inside is self-explanatory. Do not change the file name if you are compiling on Overleaf. |
| `template.pdf` | is the sample output PDF that you will obtain when you start working on this project. Check this file to ensure you are content with the formatting. |
| `README.md` | is this file that contains the details related to the template. |

> [!CAUTION]
>
> Currently, the chapters are filled with randomly generated text by the `blindtext` package. Remove them to get started with your writing.


## How to use the template on Overleaf

Since Johns Hopkins provides [Overleaf premium](https://www.overleaf.com/learn/how-to/Overleaf_premium_features) to all affiliates, my recommendation is to use Overleaf for this template. Follow one of the two approaches to get started with this project on Overleaf. Then go through the `main.tex` file and other files to see how the template is structured.

<details>
<summary>
Get started in 3 steps:
</summary>

1. You can download/clone this repository from GitHub, and compress it as a zip file. Go to Overleaf, Click on **New Project** -> **Upload Project**, then upload the zipped folder.

2. If you have your Overleaf and GitHub account linked and want to have copies of the project in both places, you can **fork** this repository. Then go to Overleaf and click on **New Project** -> **Import from GitHub**, it should list the forked project. Once imported, you can start working on it.

3. Once you have imported the project, you need to compile the `main.tex` file using the `pdflatex` option (default on Overleaf) which will call all the auxiliary `.tex` files included to produce the final PDF. It should compile without any error on Overleaf. There might be warnings, but you can ignore them.
</details>


> [!TIP]
>
> Although it is very convenient to write your document on Overleaf, strongly consider backing up your work using Git or GitHub integration or the Dropbox sync feature. If you use Overleaf and GitHub integration, you have to do **Push Overleaf Changes to GitHub** from the Overleaf Menu. It might be easier to backup the files with Dropbox Sync but I have not used it until now. Either of these approaches may save you from losing your document in case of an accident.


### What to do after you have the project on Overleaf

The only files from this template you have to modify are:
 - The `main.tex` file
 - The `thesis.bib` file
 - Preface files:
   - `preface/title.tex`
   - `preface/abstract.tex`
 - And the optional preface files:
   - `preface/acknowledgement.tex`
   - `preface/dedication.tex`
   - `preface/epigraph.tex`

You may delete any of the optional preface files if you do not need them (the template will still compile). You can add your chapters, appendices, figures, tables, and algorithms as needed. Feel free to delete the example `chapters` and `appendices` files and folders as you add your own. For an example of how you might lay out your project, see the [Basic user guidelines](#basic-user-guidelines) below. In general, the rest of the files are supporting files and should not be modified.

## Document formatting (customization beyond the requirements)

Since the default formatting of the LaTeX report class (even with different packages loaded) has disproportionate font sizes and spacing for different environments, I customized the formatting while maintaining the library requirements. Look into this first to understand [how space is managed in LaTeX](https://www.overleaf.com/learn/latex/Articles/How_to_change_paragraph_spacing_in_LaTeX).

<details>
<summary>
Document formatting definitions are found in the <a href=sty/typesetting.sty>sty/typesetting.sty</a> file, with some of the design descisions listed here.
</summary>

- The document was typeset using Latin Modern Roman font (loaded using the `lmodern` package) for document typeset as it offers consistent typesetting between the text and math environments.

- The font size for the main text of the document is set to 12 pt and is overall double-spaced (the latter is a library requirement).

- The title page is single-spaced and items were positioned within the page following library guidelines.

- All the texts in the preface chapters and the main text chapters are double-spaced.
  - You can define local environments in optional preface chapters (acknowledgement, dedication, epigraph, etc.) which have different styles and spacing.

- The document is formatted to have **three** levels of paragraph-style environments (section, subsection, subsubsection) for writing the thesis.

- The table of contents (TOC) shows only **two** levels (section and subsection) below the chapter level by default.

- For different text environments and their headings, relative font sizes are used as given below. Learn about [LaTeX font size here](https://www.overleaf.com/learn/latex/Questions/How_do_I_adjust_the_font_size%3F).
  - For the thesis title and chapter label and title, the font format is `\Large\bfseries\singlespacing\MakeUppercase` (**boldface 17.28 pt**).
  - For the section headings, font format is `\large\bfseries\singlespacing` (**boldface 14.4 pt**) whereas, for the subsection headings, font format is `\normalsize\bfseries\singlespacing` (**boldface 12 pt**).
  - For the subsubsection headings, font formtat is `\normalsize\itshape\singlespacing` (*italic 12 pt*).
  - For the table and figure captions, font size is `\small` (10.95 pt) and single-spaced.
  - For the footnotes, I used the default `\footnotesize` (10 pt), and footnote texts are single-spaced with `\baselineskip` spacing between each footnote.
  - All of the aforementioned items, i.e., different headings, captions, and footnotes are single-spaced.
  - Different section headings and subheadings could be Uppercase or Sentence case as you define (nothing specified). Be consistent with the definition.

- The texts of the Table of Contents (TOC), List of Tables (LOT), and List of Figures (LOF) in the front matter, and bibliographic references in the back matter are single-spaced for each item.
  - Spacing between two consecutive chapter entries in the TOC is `\baselineskip`. For two consecutive sections, it is `0.5\baselineskip`, and for subsections and subsubsections (not shown in the default TOC), the space is `0.3\baselineskip`.
  - Spacing between two consecutive bibliographic items in the bibliographic reference section in the back matter is `\baselineskip`.

- Chapter labels are placed approximately 1.5 inches from the top of the page followed by the chapter title in the next line with an approximate spacing of 0.25 inches in between them.
  - Space between the chapter title and the following text is approximately 0.75 inches except for the case when there is a quote. In the latter case, the space followed by the chapter title to the quote and the quote to the following text is 0.5 inches.

- The header and footer are placed outside of the margin. The header includes the chapter label and chapter name whereas the footer includes pagination.
  - The height of the header is 30 pt with 12 pt additional space for the following text.

- The spacing around the section, subsection, and subsubsection headings are chosen to be default offered by the `parskip` package. The paragraphs do not have any indentation with `\baselineskip` spacing in between them.

- Equation numbers are also preceded by chapter numbers as defined by the following command:
  ``` latex
  \numberwithin{equation}{chapter}
  ```

- The numbering of tables also follows the same scheme as the Figures and Equations (preceded by chapter label). The default spacing between rows inside a table environment is one-half-spaced.

- Captions for the table and figure environments are placed at the bottom of the environments. The caption starts with boldfaced **Figure** and **Table** labels, respectively, for Figure and Table, and uses chapter-wise numbering separated by a period between the chapter label and the number of the corresponding environment followed by a colon before the long caption.

- The default bibliography style is a `Nature` style numeric bibliography. Depending on the discipline, you may have to change it; the details are given below.
</details>


> [!TIP]
>
> If you change any formatting or do further customization, one of the best possible ways to check consistency in spacing is to load the `fgruler` package as below in the preamble (you can change the options by looking into the documentation of this package).
``` latex
\usepackage[unit=in,type=upperleftT,color=red,showframe]{fgruler}
```


## Basic user guidelines

### Before you begin

Overleaf has a huge collection of tutorials and examples on different LaTeX-related typesetting topics (margins and page size, math, table, footnote, and bibliography management). You will most likely find what you need there. Another useful resource for [writing thesis in LaTeX is here](https://www.khirevich.com/latex/). If you would like to do something specific, your best friend is Google; most likely someone on [TeX StackExchange](https://tex.stackexchange.com) has done it before.

### The main file

Important, in the `USER-DEFINED SETTINGS` section of the `main.tex` file, you can customize the following variables to suit your needs:

| Setting | Example              | Description |
| --------- | ----------- | ----------- |
| Author | John Doe              | author name |
| Degree | doctoral              | doctoral or masters |
| Month | Month                  | month of submission |
| Year | YEAR                    | year of submission |
| Title | $\LaTeX$ Dissertation Template for Johns Hopkins University | title of the thesis |
| FigurePath | figures           | subdirectory for the figure files |
| BibFileName | thesis.bib       | name of the bib file |
| SecondaryBibFileName | bibtex.bib|       | name for under chapter files |


Additionally, the main file brings your project together. It includes all the necessary packages, macros, and settings to format the document as per the requirements. The main file also includes the auxiliary files for the title page, front matter, technical chapters, and back matter. The primary imports are defined in later sections, but the cursor overview of main is given below:

```mermaid
graph TB
    subgraph B[Includes]
        a[sty/typesetting]
        b[sty/packages]
        c[sty/opts]
        d[sty/title]
        e[sty/document]
        f[sty/macros]
        g[sty/math]
    end

    subgraph E[Chapters]
        M[chapters/01-chapter.tex]
        N[chapters/02-chapter.tex]
        O[chapters/03-chapter/main.tex]
        P[chapters/04-chapter.tex]
        Q[chapters/05-chapter.tex]
    end

    subgraph F[Backmatter]
        direction TB
        Bibtex
        subgraph Appendices
            S[appendices/appendix-A.tex]
            T[appendices/appendix-B.tex]
        end
        Bibtex ~~~ Appendices
    end

    subgraph D[Frontmatter]
        preface/abstract
        preface/dedication
        preface/acknowledgement
        preface/epigraph
    end

    subgraph C[Title]
        x(( )):::invis
    end

    A[main.tex] -.-> B
    A -- src/title.tex --> C
    A -- src/frontmatter.tex --> D
    A --> E
    A -- src/backmatter.tex --> F

    %% Title must be a subgraph to apprear in the correct order. Play around
    %% with stylings to be consistent.
    style x fill:none,stroke:none,color:transparent,stroke-width:0px
    style C fill:none,stroke:none,stroke-width:0px

    style E fill:#ADD8E6,opacity:0.5
```

Note that main, includes the relevant stylings, packages, and macros you will likely need. Moreover, it imports the title, frontmatter, backmatter, and relevant chapters.
Chapters must be explicitly listed in `main.tex` but can be either files, directories- and can be placed anywhere.
To include a chapter, invoke the `\Chapter` include. For example given a file structure like:

```plaintext
thesis/
    main.tex
    ...
    introduction.tex
    conclusion.tex
    figures/
        general.pdf
    projects/
        simulation_chapter.tex
        statistics_chapter/
            figures/
                graph.pdf
            main.tex
```

Your `main.tex` file might look like:

```latex
%% ...
\Chapter{introduction}
\Chapter{projects/simulation_chapter}
\Chapter{projects/statistics_chapter}
\Chapter{conclusion}
%% ...
```

### Predefined Includes

You may want to tweak the default package definition list, or create some of your own macros. Package definitions are found in [`sty/packages.sty`](sty/packages.sty), with options in [`sty/opts.sty`](sty/opts.sty). Macros are defined in [`sty/macros.sty`](sty/macros.sty), and math macros in [`sty/math.sty`](sty/math.sty).

> [!TIP]
>
> If you find all the packages and their settings and macros to be overwhelming and distracting during writing and editing, you can cut and paste all these contents to a separate `sty/my-preamble` file (name it as you like) in the sty directory. Then you can use the command `\input{sty/my-preamble}` to make your main file appear cleaner and less distracting. See [managing a large project on Overleaf](https://www.overleaf.com/learn/latex/Management_in_a_large_project).


<details>
<summary>
The files included in main should generally not be modified, but are listed here for completion.
</summary>

#### Typesetting ([`sty/typesetting.sty`](sty/typesetting.sty))

Most of the necessary variables to customize the format and the style of the document are included at the beginning of the `main.tex` file in the `USER-DEFINED VARIABLES` section. You can customize different spacing and font style options using these variables. For most cases, tweaking these variables to your needs and preferences will be enough to get the desired formatting. However, some of these variables have values that may appear arbitrary to the user. Those are found by *trial and error* to have a consistent formatting (described above) overriding default formatting offered by the LaTeX report class and added packages.

##### Fonts

If you do not like the default font of this template (Latin Modern Roman), you can try a different font or combination of fonts. However, you should be careful about having consistent typesetting, especially between math and text. [Follow this old discussion on StackExchange to learn more about fonts in LaTeX](https://tex.stackexchange.com/questions/59702/suggest-a-nice-font-family-for-my-basic-latex-template-text-and-math). But finding a different font that offers consistent text and math typography may require you to add customized commands/ macros and options.
  - This TUG page lists [fonts that provide math support](https://tug.org/FontCatalogue/mathfonts.html). But Overleaf may not have all of the packages listed there, and some of the packages may raise conflict with other packages that are already loaded. You can try and figure out which works best for you.
  - The font package has been loaded using the `\usepackage{\FontPackage}` command in the `DOCUMENT FORMATTING` section of the preamble. Depending on the Font you choose, you may have to add additional options/ packages (follow the above webpage) and simply changing the `\FontPackage` variable may not work.

#### Packages ([`sty/packages.sty`](sty/packages.sty))

The most common and popular packages for writing a thesis or dissertation are added in the `LaTeX PACKAGES` sections. Some packages are loaded with the options specified for formatting purposes. Before you add a package, please check if it has already been added. Sometimes adding packages in the wrong order may throw a warning or error because of the dependency issue.

#### Options ([`sty/opts.sty`](sty/opts.sty))

For some packages, options are specified in the `PACKAGE OPTIONS` section.

#### Title ([`sty/title.sty`](sty/title.sty))

Macros related to the title page items are defined in the `TITLE PAGE MACROS` section and the details are given [below](#title-page).

#### Document ([`sty/document.sty`](sty/document.sty))

Macros for in inside the `\begin{document} ... \end{document}` environment, the title page, and other front matters (abstract, dedication, etc.), technical chapters, bibliography chapter, and appendix chapters are added using the `\include{ }` statement. There is no separate chapter for TOC, LOT, LOF, etc., and additionally, headers are customized based on the type of chapter (numbered vs. unnumbered).

#### Macros ([`sty/macros.sty`](sty/macros.sty))

Some essential macros related to different redefined environments are available in `OTHER MACROS` in the preamble (will be discussed below).

#### Math ([`sty/math.sty`](sty/math.sty))

Add your math macros to the `MATH MACROS` section. Some examples of simple math macros are added there in the template. You can add more.

</details>

### Preface

#### Title page

The title page should be automatically generated from the user defined settings in `main.tex`

<details>
<summary>
Details on <a href=lib/title.tex>lib/title.tex</a>
</summary>

The thesis title page is defined using the `titlepage` environment which is centered and single-spaced with no header and footer. To format the title page of the thesis as per the requirement, the following macros are defined:
- `\ThesisTitle:` prints out the **thesis title** approximately 1.5 inches below the top of the page.
- `\ThesisAuthor{}:` prints out the "by author-name" in two single-spaced lines. The author's name is the input argument to the macro.
- `\ThesisStatement{ }{ }:` prints out the thesis or dissertation statement. Arguments to this macro are document type (thesis or dissertation) and degree name without specifying the major.
- `\Location:` prints out the location (Baltimore, Maryland).
- `\ThesisDate{ }{ }:` prints the thesis submission month and year; these are the two arguments to the macro.
- `\ThesisCopyright{ }{ }:` prints the optional copyright statement 2 inches from the bottom of the page. The first and second arguments to this macro are Year and Author name.
</details>


#### Frontmatter

Frontmatter should be automatically generated from the project.

<details>
<summary>
Details on <a href=lib/frontmatter.tex>lib/frontmatter.tex</a>
</summary>

Contains prefaces and TOC, LOT, LOF, etc.

- Except for the Abstract, other contents in the front matter can be arbitrarily spaced. In this template, the Acknowledgment and Dedication pages are also double-spaced. However, a local `spacing` environment can be used for specialized preface pages to include a dedication page or quote, etc. See the epigraph page for the example.

- The purpose of the TOC is to give a quick overview of the document, so only **two** levels of paragraph-style headers are shown there. A longer TOC with too many sub-levels defeats the purpose of having a TOC, but it may be useful to increase this during drafting for navigation purposes. But keeping it short for the final version is perhaps a good idea.

- All of the contents in TOC, LOT, and LOF are hyperlinked using the `linktoc=all` option in the `\hypersetup{}`. You can change this option to remove hyperlinks in TOC or just hyperlink the pages, etc. You can also change the color of the hyperlink for TOC (currently it is black) while any other hyperlink throughout the document has a blue color.
  - You can define a new color for this using the `xcolor` package (see below) and change the option in `\hypersetup{}`.

- Three different simple macros are defined to print the Table of Contents, List of Tables, and List of Figures in that order. These macros were defined to extend the functionalities (title change, appearance in the TOC, proper page numbering, etc.) of the default commands of similar kinds offered by LaTeX. The macros are available in the `OTHER MACROS` section in the preamble.
  - `\mytableofcontents:` to print the table of contents.
  - `\mylistoftables:` to print the list of tables.
  - `\mylistoffigures:` to print the list of figures.

- Currently, the template does not have any specific settings or package options to print the List of Algorithms, the List of Abbreviations, the List of Symbols, the List of Supplementary Materials, etc. However, you can look into `glossaries`, `glossaries-extra`, and `tocloft` packages to define custom lists to be printed. This might take a little bit of time to do. Fair warning, this may take some amount of work!
</details>


### Chapter texts

Example chapter texts are included in the `chapters` subdirectory. To reference your own chapters, modify `main.tex` to contain the relevant `\Chapter{}` command.

<details>
<summary>
On details for how to format chapters and their contents, read here.
</summary>

- It is a good practice not to use math expressions for chapter, section, subsection, and subsection titles. But if you have to do it, you may encounter warnings given by the hyperref package. To resolve this, you can use the following command:
    ``` latex
    \texorpdfstring{your-math-expression}{expression-for-bookmark}
    ```
- If you change the font size or shape for any of the headings, depending on the size and shape, the spacing around it may change as well, especially the top margin before the chapter label and title. You can change the `ADHOC HEIGHT ADJUSTMENT VARIABLES` to fine-tune them.

- You can add quotes to the chapter followed by the chapter label and title using the `epigraph` package. Examples are shown in two different chapters of the template.
  - Currently, the maximum length for the epigraph is set to be `0.65\textwidth` which can be changed by specifying the variable `\MaxQuoteWidth`. You can make it shorter or longer depending on your needs and/or preferences.
  - If you have a longer quote that spans over multiple lines and you are not happy with the default `doublespacing` you can customize it using a spacing environment around the quote (same as the chapter citation declaration, see below) to make it appear consistent.
    ``` latex
    \begin{spacing}{<some-spacing-value>}
      \epigraph{quote-goes-here}{-- quote-author}
    \end{spacing}
    ```
  - You can also add quotes before the chapter labels and titles, but in that case, you have to change the `\ChapterTopMargin` variable to ensure enough spacing before the chapter label and it may complicate the overall document formatting (not recommended).


- If any chapter is already published at a journal or conference or available in any of the archival repositories (submitted/ to be submitted to a peer-reviewed journal/conference), it is a good idea to declare it at the beginning of the chapter. Such an example has been shown in Chapter 2 of the template. To have consistent formatting, a `singlespace` environment was used, and the publication was printed with the `\fullcite{}` command.
  - If the chapter is adapted from multiple publications, you can use `enumerate` or `itemize` environments to list all the publications inside the spacing environment.
  - If the listed paper (published, submitted, or in preparation) is not cited anywhere else in the document and you do not want this to appear in the bibliographic references in the back matter, then use the following command. This command adds the paper to the group called `mypapers` which are not printed in the bibliography list.
    ``` latex
    \mybibexclude{citation-key}
    ```

- For unnumbered chapters that you want to add to the table of contents, use the `\chap` command instead of the `\chapter*` command. (see, *Abstract* and *Acknowledgment*, for example). An exception to this is *Dedication* chapter because it does not have a chapter title.

- Similarly, for unnumbered sections, subsections, and subsubsections that you would like to add to the table of contents, use `\sect{}`, `\subsect{}`, and `\subsubsect{}` environments, respectively. These environments are defined in the `OTHER MACROS` section of the preamble.
  - If you do not any of these environments to be added to the table of contents, then you can use standard * environments; such as `\section*{}`,  etc.

- Currently, **three** numbered *paragraph environments*, `\section{}`, `\subsection{}`, and `\subsubsection{}`, are available throughout the document and **two** levels are shown in the TOC. You can decrease or increase this by tweaking variables, `\NoSectionLevel` and `\NoTOCLevel`.
  - For such a complicated and long document, it is perhaps not a good idea to have more than three levels of paragraphs in the main text section.
  - LaTeX report class offers `\paragraph` and `\subparagraph` levels as 4th and 5th level. In case you would like to include those in your document, you will have to configure the styles for them.

- To override the default spacing from the `parskip` package around the headings of different environments, the `titlesec` package can be used. To customize it, add the following command in the preamble (use pt as the units). You may have to do a bit of *trial and error* to find consistent spacing.
  ``` latex
  \titlespacing*{<environment-name>}{<space-left>}{<space-before>}{<space-after>}
  ```

- Header and footer options in the document are managed using the `\fancyhdr` package. Currently, the header prints the chapter label and the chapter title on the left side. If the chapter name is too long, you may have to customize the header spacing in the geometry settings options to accommodate that. Tweak the variable `\HeaderHeight` for this. The current value is set to `30 pt` which can accommodate double-line headers.
  - If you have a longer chapter header consider changing the `\HeaderHeight` from `30 pt` (for double lines) to `42 pt` (for triple lines).
  - You can also consider making the font size smaller for the headers.
  - Alternatively, you can consider including a shorter chapter title which will be printed as the header by starting the chapter environment as follows:
    ``` latex
    \chapter[short-chapter-name]{long-chapter-title}
    ```
  - If customizing the header becomes too difficult, you can also consider removing all the header options by commenting them out in the document section of the `main.tex` file. In that case, remove the `includehead`, `headheight`, and `headsep` options from the `\geometry{ ... }` command in the `PACKAGE OPTION` section.
  -If you make changes in `\HeaderHeight`, then you may have to change the `ADHOC HEIGHT ADJUSTMENT VARIABLES` to obtain consistent formatting (although inconsistency is hard to notice with bare eyes), use the `\fgruler` package as shown above.

- To list items, use `enumerate` and `itemize` environments. But make sure to customize the spacing to have consistent typography with the double-spaced text document.

- To use colors in your writing (such as hyperlinking or text coloring) or drawing, you can consider using the `xcolor` package with the `dvipsnames` option (already loaded with this option in the preamble). Check [how to use colors in LaTeX on Overleaf](https://www.overleaf.com/learn/latex/Using_colors_in_LaTeX).


- You can use the `\linenumbers` command from the `lineno` package anywhere inside the main text document when you would like to have line numbers on the left margin. It might be useful during the drafting stage. Currently, this package is loaded with the `pagewise` line numbering option.

- Currently, the default settings of the `microtype` package are activated. To understand and appreciate microtypography, check how to use [the microtype package for writing a thesis here](https://www.khirevich.com/latex/microtype/).
  - Customizing the settings for this package is an involved process and requires some effort. It also depends on the font type being used. Thus I kept it as minimal as possible. But you are welcome to explore more.
  - It is best not to use the `protrusion` option from the `microtype` package for the TOC, LOT, and LOF. So they are locally deactivated around these.

- In the first appendix chapter (see `11-appendix-A.tex` file), you will need the following preamble before you begin the chapter to properly add the appendix to the TOC.
  ``` latex
  \appendix
  \makeatletter
  \addtocontents{toc}{\protect\renewcommand\protect\cftchappresnum{\@chapapp\ }}
  \makeatother
  \renewcommand{\thechapter}{\Alph{chapter}}
  ```
</details>

### Figures, Tables, and Algorithms

Add all the figures in the `figures` subdirectory. If your subdirectory name is different, then change the `FigurePath` variable. You can add chapter-wise PDF files or just add all of them as you have them (PDF, PNG, JPG) in that directory.
  - If you use chapter directories, the `figures` subdirectory will also be used.
  - For large figures, you can consider adding them in landscape mode using the `sidewaysfigure` environment from the `rotating` package
  - Regardless of the file extension and program you use to produce the figure, it is a good practice to ensure the fonts within the images are embedded.

<details>
<summary>
Other tricks and tips for figures, tables, and algorithms can be found here.
</summary>

- If you would like to customize the spacing inside a table globally throughout the document, you can change the variable `\GlobalTableSpacing`. However, I suggest doing it locally by defining a group for each table (StackExhange or StackOverflow is your friend here) where you can redefine `\arraystretch` for the individual tables as needed.
  - For wide tables, you can use the `sidewaystable` environment from the `rotating` package which will print our table in landscape mode. However, the pagination should always appear at the bottom center of the page, make sure not to change it.

- For algorithms and pseudocodes, the `algorithm2e` package has been loaded as it is the most flexible (provides a lot of customization options) and updated package. In case you already have your algorithm typeset using a different package, change the package. To learn more about algorithm-related LaTeX packages, [see here](https://www.overleaf.com/learn/latex/Algorithms).
  - Similar to the figures and tables, you can print the list of algorithms in the front matter of your thesis. However, to have a consistent formatting of this similar to the other listings, you will need to define macros.

- You can add codes using the `listings` and `minted` packages (both of them are loaded in the preamble). Customize these packages to your needs/preferences.
</details>


### Bibliography

The bibliography in this template is managed by the BibLaTeX package instead of the BibTeX or Natbib package. BibLaTeX is a more modern and flexible package compared to the `natbib` package and `BibTeX` engine and is primarily based on the `biber` backend engine.


> [!TIP]
>
>  Since the `.bib` file for `biblatex` is a little different than the one for `bibtex`. Use a citation manager to generate a `biblatex` compatible file directly. I use Zotero with the `Better BibTeX` plugin and export my `.bib` with the biblatex compatible format. **Please make sure to go through the generated `.bib` file to find inconsistency and formatting issues with the bib entries and fields.**


- The name of your bib file has to be specified in the `BibFileName` variable in the `USER-DEFINED VARIABLES` section. If your bib file has a different name than the given file, then change the variable name or the file name.

- To change the default form of the bibliography (currently, `Nature` style), look for the following command and change the options based on your need and/or preference. Depending on the discipline, you may need to use different citation formats such as IEEE, ACM, APA, ACS, AIP/ APS, AMS, MLA, etc. As an example, APA and IEEE styles are also shown in the template as well (commented). Customization can be done by changing the options within `[ ... ]` of the following command.
    ``` latex
    \usepackage[ ... ]{biblatex}
    ```
- For other citation styles, you may have to scavenge through the internet a little bit to have a properly formatted bibliography. Learn more about the [citation styles in BibLaTeX](https://www.overleaf.com/learn/latex/Biblatex_citation_styles) and check out [biblatex-related packages on TUG](https://ctan.org/topic/biblatex).


- Bibliographic references are printed using the following command which will ensure the citations included in the `\mybibexclude{}` command are not printed and the bibliography appears as a chapter in the TOC with the specified title.
  ``` latex
  \BibTextSpacing
  \fancyhead[L]{\nouppercase \leftmark}
  \printbibliography[title={Bibliographic references},
      heading=bibintoc,notcategory=mypapers]
  \clearpage
  ```

> [!WARNING]
>
> If you have a `bibtex` compatible file, then change the option from `backend=biber` to `backend=bibtex` for the `biblatex` package. But you may get warnings and errors thrown by the LaTeX compiler in this case.
>


### Generating PDF/A compliant output file for the JH Library on Overleaf


Johns Hopkins Library requires the electronic copy of the thesis must be [generated in PDF/A format](https://en.wikipedia.org/wiki/PDF/A) which is not a trivial task. Even compiling LaTeX documents is a bit of an involved process but thanks to Overleaf we do not have to worry about it. For fun, you can [check here to learn how they do it](https://www.overleaf.com/learn/how-to/How_does_Overleaf_compile_my_project%3F). I have not done the compilation locally for this project and do not plan on doing it. So I am unable to provide any help in that regard.

- Learn about [latexmkrc file on Overleaf](https://www.overleaf.com/learn/latex/Articles/How_to_use_latexmkrc_with_Overleaf) which you will need to generate PDF/A file.
- [This documentation](https://www.overleaf.com/latex/templates/creating-pdf-slash-a-and-pdf-slash-x-files-with-the-pdfx-package/bbbycnbyqhnm) provides details on how to generate PDF/A compilant output on Overleaf. Click on **Open as Template** to see the instructions.
  - Briefly, PDF/A compliant output is generated by including `\usepackage{pdfx}` command in the preamble, and to ensure the compilation worked properly, the project directory needs to include `latexmkrc` input file in which you will need to specify the timezone; [check supported timezones here](https://www.php.net/manual/en/timezones.php). This is already set and you will not need to make any changes.


> [!IMPORTANT]
>
> To include the meta-data in the generated PDF/A file, you will need to edit the `output.xmpdata`. The given fields are very simple and self-explanatory. Make sure the `\Title` and `\Author` fields are there.


> [!NOTE]
>
> So far, I have not found any reliable way of validating if the generated PDF is compliant with the library-specified PDF/A format for free. The library has computers with Adobe Acrobat Pro installed that can validate the format of the electronic copy of your thesis. If you or your lab has a license to this program, you can do it there as well. Finally, if you find it is not compliant (for any unknown reason), this program will also allow you to convert the format. [Follow the instructions here](https://www.mathstat.dal.ca/~selinger/pdfa/).


> [!TIP]
>
> Sometimes even if you have done everything right after fixing an error, Overleaf still may not compile your files because of the auxiliary files in the `cache`. In that case, click on the `Logs and Output Files` option beside the `Recompile` button, then click on the `Clear cached files` button at the bottom, and `Recompile` the files again.


Keep writing ... and Happy Graduation :tada:!




## Contributing to the project

This template was kept sufficiently general purpose for different disciplines with some customizations of special packages for demonstration purposes. If you have suggestions about specific LaTeX packages to your preference or discipline, adding them here may not be a good idea. However, if you have suggestions about general formatting, you can report it as an issue or create a pull request.
