Building ePUB
=============
```shell
brew install pandoc

pandoc \
--toc \
--epub-embed-font='fonts/*.ttc' --embed-resources --standalone \
--variable geometry:a5paper \
--metadata-file metadata.yml \
--output arch-intro.epub \
contents.md
```
