
l3build save -epdftex,xetex,luatex \
	test1 \
	test2 \
	test3



echo y | pdflatex *.ins

