# Pré-Projeto de Dissertação — PPGCF/UNIFESSPA

Projeto LaTeX modularizado para o pré-projeto de mestrado (formato do Anexo 02
do edital do PPGCF/UNIFESSPA), pronto para editar no Overleaf ou no VSCode.

## Estrutura

```
pre_projeto_ppgcf/
├── main.tex                    # Arquivo raiz — monta o documento inteiro
├── preamble.tex                # Pacotes, formatação, margens, config. de bibliografia
├── referencias.bib             # Base de referências bibliográficas (biblatex)
├── .gitignore                  # Ignora arquivos auxiliares de compilação
└── sections/
    ├── 00_capa.tex              # Cabeçalho: nome, linha de pesquisa, título
    ├── 01_resumo.tex            # Resumo do Projeto da Dissertação (1,00 pt)
    ├── 02_justificativa.tex     # Justificativa da Pesquisa (1,00 pt)
    ├── 03_fundamentacao.tex     # Fundamentação Teórica (2,50 pts)
    ├── 04_objetivos.tex         # Objetivos Geral e Específicos (1,00 pt)
    ├── 05_metodologia.tex       # Metodologia (2,50 pts)
    ├── 06_cronograma.tex        # Cronograma de Execução (1,00 pt)
    ├── 07_referencias.tex       # Referências (1,00 pt) — gerada do .bib
    └── 99_assinatura.tex        # Data e linha de assinatura
```

Cada seção do Anexo 02 vive em seu próprio arquivo, então você pode editar
uma parte do projeto sem mexer nas outras.

## Como editar

- **Texto de cada seção:** abra o arquivo correspondente em `sections/`.
- **Nome, linha de pesquisa e título:** edite `sections/00_capa.tex`.
- **Cronograma:** edite a tabela em `sections/06_cronograma.tex`.
- **Referências:** adicione uma entrada nova em `referencias.bib` e cite-a
  no texto com `\cite{chave}` (veja exemplos em `03_fundamentacao.tex`).
  A lista final em "Referências" é gerada automaticamente — não edite
  `07_referencias.tex` manualmente para adicionar itens.
- **Margens, fonte, espaçamento:** edite `preamble.tex`.

## Como compilar

### Overleaf
1. Crie um projeto novo → "Upload Project" → envie a pasta zipada, ou
   crie os arquivos manualmente com os mesmos nomes/caminhos.
2. Defina `main.tex` como arquivo principal (Menu → "Main document").
3. O Overleaf compila com `pdflatex` + `biber` automaticamente ao clicar
   em "Recompile".

### VSCode (extensão LaTeX Workshop)
1. Abra a pasta `pre_projeto_ppgcf/` no VSCode.
2. Instale a extensão **LaTeX Workshop** (James-Yu.latex-workshop).
3. Abra `main.tex` e use "Build LaTeX project" (ou `Ctrl+Alt+B`).
   A extensão já roda a cadeia `pdflatex → biber → pdflatex → pdflatex`
   por padrão (perfil `latexmk`).

### Linha de comando
```bash
pdflatex main.tex
biber main
pdflatex main.tex
pdflatex main.tex
```

Requer uma distribuição LaTeX com `biblatex`/`biber` (TeX Live ou MiKTeX
completos já incluem).

## Observações

- O formato segue o **Anexo 02 — Modelo para o Projeto de Dissertação** do
  edital do PPGCF/UNIFESSPA, com as sete seções obrigatórias e sua pontuação.
- Confira sempre o edital vigente no site do PPGCF
  (https://ppgcf.unifesspa.edu.br/), pois o modelo pode ser atualizado
  entre uma seleção e outra.
