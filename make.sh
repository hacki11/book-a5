#!/bin/bash

pandoc \
  chapter1.md \
  chapter2.md \
  --pdf-engine=xelatex \
  -V documentclass=book \
  -V classoption=twoside,openright \
  -V fontsize=11pt \
  -H header.tex \
  -o buch-datenformat.pdf