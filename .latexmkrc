$pdf_mode = 1;
$pdflatex = "pdflatex -interaction=nonstopmode -file-line-error";

# put aux/log/bbl etc. in the compilations folder
$out_dir = "compilations";

# use bibtex
$bibtex_use = 1;
$bibtex = "bibtex %O %B";

$pdf_previewer = "";
$silent = 1;
# $bibs = ["./src"];
