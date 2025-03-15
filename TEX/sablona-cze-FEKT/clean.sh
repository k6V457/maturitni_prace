#!/bin/zsh
find . -type f -name "*.aux" -o -name "*.log" -o -name "*.out" -o -name "*.toc" -o -name "*.lof" -o -name "*.lot" -o -name "*.bbl" -o -name "*.blg" -o -name "*.synctex.gz" -o -name "*.fdb_latexmk" -o -name "*.fls" -o -name "*.nav" -o -name "*.snm" -o -name "*.toa" -o -name "*.lol" | xargs rm -f

