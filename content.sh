#!/bin/bash

pandoc \
  chapter1.md \
  chapter2.md \
  --pdf-engine=xelatex \
  -V documentclass=book \
  -V classoption=twoside,openright \
  -V fontsize=11pt \
  -H header.tex \
  -o innenteil.pdf

gs -dNOSAFER -dBATCH -dNOPAUSE \
   -sDEVICE=pdfwrite \
   -dPDFX=3 \
   -sColorConversionStrategy=CMYK \
   -sProcessColorModel=DeviceCMYK \
   -sDefaultCMYKProfile=ISOcoated_v2_300_eci.icc \
   -sOutputFile=innenteil_x3_cmyk.pdf \
   innenteil.pdf