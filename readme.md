# PrintSvg2Pdf

A simple bash script to print an svg to pdf without extra margins using headless chrome.

## How to use
In the file `printSvg2Pdf.sh` set the following variables:

* `chrome_executable` to point to the path of your chrome executable.
* `template_file` to point to the path of the file `template.html`, included into the repository.

Then simply:

```
bash printSvg2Pdf.sh example_input.svg example_output.pdf
```

## What it does

`template.html` with an object tag where your image will be referenced in an `object` tag. It has some css to remove all margins, and with javascript it sets the style attribute `@page` to fit exactly the size of the image.

## Acknowledgements

This comes from [this inkscape forum question](https://inkscape.org/forums/questions/exporting-svg-with-linkedembedded-images-to-pdf-without-rasterising/#c28675), and from [this answer](https://stackoverflow.com/a/52128129/5622322) on StackOverflow.