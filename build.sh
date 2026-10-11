#!/bin/sh
# Wraps src/page.html in a full HTML document and writes index.html (the file GitHub Pages serves).
{
  printf '%s\n' '<!DOCTYPE html>' '<html lang="en">' '<head>' '<meta charset="utf-8">' \
    '<meta name="viewport" content="width=device-width, initial-scale=1, viewport-fit=cover">' \
    '<meta name="description" content="MAli Studio AI: Mohammed Ali, web developer and graphic designer. Front end, back end, WordPress and graphic design.">' \
    '<style>body{margin:0}img{max-width:100%}[hidden]{display:none!important}</style>'
  awk '/^<div class="loader"/{print "</head>\n<body>"} {print}' src/page.html
  printf '%s\n' '</body>' '</html>'
} > index.html
