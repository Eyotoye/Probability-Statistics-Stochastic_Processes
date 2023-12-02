#!/bin/bash

find . -maxdepth 1 -type f -name "preface.*" ! -name "preface.tex" -exec rm {} +
find . -maxdepth 1 -type f -name "main.*" ! -name "main.tex" ! -name "main.pdf" -exec rm {} +
for dir in Chapter_*; do
    if [ -d "$dir" ]; then
        find "$dir" -type f ! -name "*.tex" -exec rm {} +
    fi
done
