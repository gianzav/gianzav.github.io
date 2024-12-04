cp src/style.css dist/

for f in $(ls ./src/*.md)
do
    f=$(echo "$f" | cut -d '/' -f 3)
    pandoc "./src/$f" -f markdown -t html -s --css "style.css" -o "./dist/${f%.md}.html"
done

