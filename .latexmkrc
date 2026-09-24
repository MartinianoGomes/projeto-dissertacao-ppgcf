# Configuração do latexmk para este projeto: pdflatex + biber.
# Uso: latexmk        (compila main.tex)
#      latexmk -pvc   (recompila automaticamente ao salvar)
#      latexmk -c     (limpa arquivos auxiliares)
$pdf_mode = 1;
$pdflatex = 'pdflatex -interaction=nonstopmode -synctex=1 -file-line-error %O %S';
$bibtex_use = 2;
@default_files = ('main.tex');
