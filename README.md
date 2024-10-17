# ubuntu OS Cheat Sheet

This cheat sheet contains commands and examples for [ubuntu 22.04](https://www.ubuntu.com/).

It is based upon the [Ubuntu Server Cheatsheet](https://assets.ubuntu.com/v1/3bd0daaf-Ubuntu%20Server%20CLI%20cheat%20sheet%202024%20v6.pdf?)

Thanks to [Zeepler](https://github.com/Jeeppler/qubes-cheatsheet) for the pandoc inspiration.

## Downloads

- **Markdown (Text): [ubuntu-cheatsheet.md](https://github.com/ubuntupunk/ubuntu-cheatsheet/blob/main/ubuntu-cheatsheet.md)**

- **PDF: [ubuntu-cheatsheet.pdf](https://github.com/ubuntupunk/ubuntu-cheatsheet/blob/main/ubuntu-cheatsheet.pdf)**

- **HTML: [ubuntu-cheatsheet.html](https://htmlpreview.github.io/?https://github.com/ubuntupunk/ubuntu-cheatsheet/blob/main/ubuntu-cheatsheet.html)**

- **Text: [ubuntu-cheatsheet.txt](https://github.com/ubuntupunk/ubuntu-cheatsheet/blob/main/ubuntu-cheatsheet.txt)**

*The files are generated with the help of [`generate.sh`](https://github.com/ubuntupunk/ubuntu-cheatsheet/blob/main/generate.sh)*

## Other formats

The PDF and HTML file is generated by using [Pandoc](http://pandoc.org/).

Pandoc can generate different files from one [markdown](http://daringfireball.net/projects/markdown/) text file.


```bash
# outputs the ubuntu cheat sheet as PDF file
pandoc metadata.yaml ubuntu-cheatsheet.md -s -o ubuntu-cheatsheet.pdf

# outputs the ubuntu cheat sheet as HTML (HTML5) file
pandoc metadata.yaml ubuntu-cheatsheet.md -s -S -t html5 -o ubuntu-cheatsheet.html

# outputs the ubuntu cheat sheet as plain text
pandoc ubuntu-cheatsheet.md -s -S -t plain -o ubuntu-cheatsheet.txt
```

`ubuntu-cheatsheet.md` is the input file and `ubuntu-cheatsheet.xxx` the output file.

`metadata.yaml` contains some additional metadata information for the PDF and HTML generation.

Pandoc is furthermore able to generate files for asciidoc, odt, docx, textile and many more. Please have a look at [Pandoc Demos](http://pandoc.org/demos.html).
