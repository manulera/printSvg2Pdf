#!/usr/bin/env bash

# Path in MacOS
chrome_executable="/Applications/Google Chrome.app/Contents/MacOS/Google Chrome"

# Path to the template.html file in this folder
template_file="/Users/Manu/Documents/Projects/anaphase_yeast/experimental_data/figures_paper/printSvg2Pdf/template.html"

sed "s|__targetfile__|${1}|" "$template_file" > printSvg2Pdf_temp.html
"$chrome_executable" --headless --disable-gpu --print-to-pdf-no-header --print-to-pdf=$2 printSvg2Pdf_temp.html
rm printSvg2Pdf_temp.html
