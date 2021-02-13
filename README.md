# RST 2 HTML|PDF styled generator
A set of preconfigured styles for rst2pdf and rst2html.

# Getting started
## Prerequisites
The stylesheet and build utilities are exclusively made for [docutils](https://docutils.sourceforge.io/) and [rst2pdf](https://rst2pdf.org/). These must be installed and on the global path for the `make all` to work.

# Generating PDF or HTML
When using the `make` utility to generate the desired output, all `.rst` source files must be placed in the `src/`
directory. All files located in the `src/` directory will converted and the converted output will be copied to `build/`

## 1) Create rst document
In this example we created a rst file called tutorial.rst and placed it in `src/` for the converter to pick it up

```
$ cat src/tutorial.rst

********************
Document Title Here
********************

Introduction
====================

Welcome
-------------------

Welcome to a quick rst tutorial. 

Features
-------------------
* Generate a styled pdf version of a specified rst file.
* Generate a styled single file html version of a specified rst file.
* Re-usable stylesheets for html|pdf generation.

Prerequisites
====================

* Docutils (includes rst2html)
* rst2pdf
```

## Run the desired output conversion.
For this example we will be converting our tutorial.rst to html. To do this, we run `make html` which will produce the
following output.

```
$ make html
..
Converted HTML for src/tutorial.rst placed in build/
..
```
## Open the converted file.
Since the output in this tutorial is html, you can open it with your preferred browser.

```
firefox build/tutorial.html`
```
If the file was generated successfully, it would look something like this:
![screenshot](tutorial/screesnhot.png)


## Generate all formats
```
$ make all
```


# Manual use of the stylesheets
In essence this utility is only a simplified way to generate build pdf|html files. It's completely possible to just use
`rst2html` and `rst2pdf` independently and just use the stylesheets contained in this repo under the `styles/` directory.

## rst2pdf
`rst2pdf --stylesheets styles/rst2pdf.style [input file] [output file]`

```
$ rst2pdf --stylesheets styles/rst2pdf.style src/tutorial.rst build/tutorial.pdf
```
