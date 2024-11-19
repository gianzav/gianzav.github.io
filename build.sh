for f in $(ls *.md)
do
    pandoc "$f" -f markdown -t html -s --css "style.css" -o "${f%.md}.html"
done
