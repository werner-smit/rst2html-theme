BUILDDIR = build
SRCDIR = src
STYLEDIR = styles

.PHONY: help html pdf

help:
	@echo "Please use \`make <target>' where <target> is one of"
	@echo "  html       to make standalone HTML files"
	@echo "  pdf       to make standalone PDF files"

html:
	mkdir -p $(BUILDDIR)
	@for f in $(shell ls ${SRCDIR}/*.rst); do rst2html $${f} --stylesheet $(STYLEDIR)/style.css $(BUILDDIR)/$$(basename $${f} .rst).html; echo "Converted HTML for $$f placed in build/"; done 

pdf:
	mkdir -p $(BUILDDIR)
	@for f in $(shell ls ${SRCDIR}/*.rst); do rst2pdf $${f} --stylesheets $(STYLEDIR)/rst2pdf.style  $(BUILDDIR)/$$(basename $${f} .rst).pdf; echo "Converted PDF for $$f placed in build/"; done 

all: html pdf
