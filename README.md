# ConTeXt-template
My template for ConTeXt. My goal is to organize the production of a ConTeXt document in the manner of a software project. The build system is a Makefile, with targets for cleaning, and for saving and loading the template itself. I find this is convenient when writing sequential lecture notes, as I invariably find bugs and tinker with the appearance quite a bit each time. The current model is very simplistic. The end-user types into main.tex and all other files are template files. This will be redone to be neater and less error prone.

The current features that I think are useful are
    1) An IPA symbol lookup macro,
    2) A system of what I call graded proofs, so that you can provide a proof at different levels of detail and you have fine grained control over which proof appears without needing to alter the content.

These are very much in the embryonic stages, and what they need is growth and use to determine how to make them useful and ergonomic.

