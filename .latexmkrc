#!/usr/bin/env perl

$pdf_mode         = 4;
$lualatex         = 'lualatex -shell-escape -interaction=nonstopmode';
$max_repeat       = 4;
# $latex            = 'platex --kanji=utf8 -synctex=1 -file-line-error -halt-on-error %O %S';
$bibtex           = 'pbibtex';
$biber = 'biber --bblencoding=utf8 -u -U --output_safechars %O %S';
# $dvipdf           = 'dvipdfmx %O -o %D %S';
$makeindex        = 'mendex %O -o %D %S';