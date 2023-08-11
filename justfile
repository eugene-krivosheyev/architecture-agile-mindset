default: build

setup:
    brew install pandoc

build:
    pandoc \
    --toc \
    --citeproc \
    --metadata-file metadata.yml \
    --epub-embed-font='fonts/*.ttc' --embed-resources --standalone \
    --markdown-headings=setext \
    --variable geometry:landscape \
    --to epub3 \
    --output distr/arch-intro.epub \
    chapter01.md chapter02.md chapter03.md chapter04.md chapter05.md \
    chapter06.md chapter07.md chapter08.md chapter09.md chapter10.md \
    chapter11.md
