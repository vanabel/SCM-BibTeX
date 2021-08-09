# SCM-BibTeX
A BibTeX style for Science China of Mathematics

As the style of SCM is quite weird, and it is suggested by official to write bibliography items by hand. Why not to use the MathSciNet bibtex data and take the advantage of bibtex? I try to complement the style file of bibtex, i.e., `scm.bst` which is based on [`vancouver.bst`](https://gitlab.com/fvdbeek/vancouver.bst). 

Usage
--------
Just take a look at the file `test/SCM-bibtex.tex` and change the data file `SCM.bib`. Then run latex command as follows:

1. run `xelatex your-latex-source-file.tex`;
2. run `bibtex your-latex-source-file.aux`;
3. fix all error if there has any (the main error related to the `publisher` field, see BUGS for more infomation);
4. run `bibtex your-latex-source-file.aux` again;
5. If you'd like to combine the bib and tex into one file, copy the content of `your-latex-source-file.bbl` into `your-latex-source-file.tex` just before the `\end{document}` and comment out two lines as
```
%\bibliographystyle{scm}
%\bibliography{SCM}
```

Bugs
--------
I just hard-code the functions of `vancouver.bst`, so there must be some bugs, please post an issue for any question!

#### Known bugs

As I use the `format.names$` function to transform the publisher without address into the form
> Address: publisher
this may not work properly. To fix it, try to add `{}` to reduce the commas. e.g.,
```
...
  PUBLISHER  = {Academic Press, Inc., [Harcourt Brace Jovanovich, Publishers],
                  New York},
...
```
should be fixed by
```
...
  PUBLISHER  = {Academic Press Inc. {[Harcourt Brace Jovanovich, Publishers]},
                  New York},
...
```

Some Useful Links related to the modification
---------------------------------------------
1. [Tame the BeaST](http://tug.ctan.org/info/bibtex/tamethebeast/ttb_en.pdf)
2. [Designing BIBTEX Styles](https://texdoc.org/serve/btxhak.pdf/0)
3. [Change .bst file to eliminate brackets in reference list](https://tex.stackexchange.com/questions/329063/change-bst-file-to-eliminate-brackets-in-reference-list)
4. [In which programming language are bst (BibTeX style) files written?](https://tex.stackexchange.com/questions/157045/in-which-programming-language-are-bst-bibtex-style-files-written)
5. [LaTeX Style and BiBTeX Bibliography Formats for Biologists: 
TeX and LaTeX Resources](http://users.fred.net/tds/lab/latex.html)
