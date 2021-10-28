#!/bin/bash
pandoc -s $(find src/*.md) -t plain | wc -m