#!/bin/bash
pandoc -s $(find src/*.md | grep -E "src/chapter(.).md") -t plain | wc -m