#!/bin/bash
xelatex cover.tex

gs -dNOSAFER -dBATCH -dNOPAUSE \
   -sDEVICE=pdfwrite \
   -dPDFX=3 \
   -sColorConversionStrategy=CMYK \
   -sProcessColorModel=DeviceCMYK \
   -sDefaultCMYKProfile=ISOcoated_v2_300_eci.icc \
   -sOutputFile=cover_x3_cmyk.pdf \
   cover.pdf