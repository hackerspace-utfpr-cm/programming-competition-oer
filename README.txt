Para modificar o slide produzido em latex, é necessário obter os seguintes recursos:
	beamer - https://github.com/magsilva/latex-beamer
	latex-scholar - https://github.com/magsilva/LaTeX-Scholar.git

A melhor opção é clonar o repositório e criar um link de do diretório
base para o diretório ~/texmf/tex/latex:
	cd
	mkdir Projects
	cd Projects
	git clone https://github.com/magsilva/latex-beamer.git
	cd ~/texmf/tex/latex
	ln -s ~/Projects/latex-beamer/base latex-beamer

Se você quiser, pode fazer o mesmo com o LaTeX-Scholar, só mude o
destino do link para 'latex-scholar' e use o repositório
https://github.com/magsilva/LaTeX-Scholar.git

Segue repositório ondem contém o slide - https://github.com/magsilva/OER-IC.git
	cd Projects
	git clone https://github.com/magsilva/OER-IC.git

Cada seção do slide está em um tex diferente. E caso queira inserir outra seção, altere o root.tex, tex que está presente todos os pacotes necessários.
