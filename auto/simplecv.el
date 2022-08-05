(TeX-add-style-hook
 "simplecv"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("fullpage" "cm") ("hyperref" "hidelinks") ("xcolor" "usenames" "dvipsnames") ("babel" "english") ("adjustbox" "export") ("csquotes" "autostyle" "english=american")))
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "href")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperref")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperimage")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperbaseurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "nolinkurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "url")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "path")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "path")
   (TeX-run-style-hooks
    "fullpage"
    "hyperref"
    "titlesec"
    "subfiles"
    "multicol"
    "xcolor"
    "enumitem"
    "lastpage"
    "fancyhdr"
    "babel"
    "graphicx"
    "adjustbox"
    "csquotes")
   (TeX-add-symbols
    '("entrybig" ["argument"] 4)
    '("entrymid" ["argument"] 3)
    '("entrylabeled" ["argument"] 1)
    '("boldname" 3)
    '("fillyear" 1)
    '("entryextra" 1)
    '("entry" 1)
    '("orderedouterlist" 1)
    '("innerlist" 1)
    '("denseouterlist" 1)
    '("outerlist" 1)
    '("sidebyside" 2)
    '("headingphoto" 3)
    '("headinginline" 2)
    '("linkedin" 1)
    '("website" 1)
    '("email" 1)
    '("github" 1)
    '("globalcolor" 1)
    '("link" 2)
    "lastname"
    "firstname"
    "firstinit")
   (LaTeX-add-environments
    "dummyenv")
   (LaTeX-add-xcolor-definecolors
    "color-text"
    "color-detail"
    "color-title"))
 :latex)

