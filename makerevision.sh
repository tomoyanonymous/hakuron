#!/bin/bash
filename=$(echo revisions/MatsuuraHakuron$(TZ=JST-9 date "+%Y%m%d").pdf)

cp src/template.pdf $filename