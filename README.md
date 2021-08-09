# SCM-BibTeX
A BibTeX style for Science China of Mathematics

As the style of SCM is quite weird, and it is suggested by official to write bibliography items by hand. Why not to use the MathSciNet bibtex data and take the advantage of bibtex? I try to complement the style file of bibtex, i.e., `scm.bst` which is based on `vancouver.bst`. 

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
