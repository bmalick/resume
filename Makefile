help:
	@ echo hey

compile:
	@mkdir -p cv; pdflatex -jobname=cv -output-directory=cv src/main.tex; mv cv/cv.pdf .

open:
	@open cv.pdf

clean:
	@rm -r cv
