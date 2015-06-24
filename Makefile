index.html : intro.md big.html
	sed --regexp-extended -e "1i<div>" -e "s/^----/<\/div><div>/" -e "\$$a<\/div>" intro.md | pandoc --standalone --template=big.html -t html -f markdown - > index.html
