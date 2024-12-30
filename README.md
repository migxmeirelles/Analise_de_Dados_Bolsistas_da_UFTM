## Objetivo:
Criar Gráficos e Análises usando R, através de um arquivo .csv obtido nos dados abertos do governo (https://dados.gov.br/home).

O Arquivo CSV obtido tem informações sobre: Nome do programa, Nome do aluno, CPF parcial, Nome do curso, Coordenador, Semestre de ingresso, Número do edital de referência, Data de início e término do benefício.

## Código:
* iniciamos carregando o arquivo original em uma variavel, passando as informações de encoding e separador.
* criamos um novo DataFrame com apenas as informações que vamos usar.
* usamos o "colnames" para renomear as colunas.
* visualizamos com head() apenas as primeiras linhas para conferir os dados.
* Criamos os Gráficos de Alunos por Curso e Alunos por Programa:

### Criando Gráficos:

* **ggplot(dados_alunos, aes(x = )):** Cria um gráfico com o conjunto de dados dados_alunos e especifica o que será usada no eixo X.
* **geom_bar(fill = "darkorange"):** Adiciona um gráfico de barras (geom_bar) com as barras preenchidas com a cor laranja escuro (darkorange). O geom_bar cria automaticamente uma contagem das ocorrências de cada valor em Programa.
* **geom_text(stat = "count", aes(label = ..count..), vjust = -0.5):** Adiciona os rótulos de texto sobre as barras. O stat = "count" conta as ocorrências de cada valor em Programa e coloca esse valor como rótulo. O vjust = -0.5 ajusta a posição vertical dos rótulos para ficarem um pouco acima das barras.
* **labs(title = "Total de Alunos por Programa", x = "Programa", y = "Quantidade de Alunos"):** Adiciona o título ao gráfico, além de rótulos para os eixos X e Y.
* **theme(axis.text.x = element_text(angle = 45, hjust = 1)):** Modifica o tema do gráfico, ajustando a rotação do texto no eixo X para 45 graus (angle = 45) e alinhando o texto à direita (hjust = 1) (por conta dos nomes longos).
* **ggsave("alunos_por_programa.png", width = 8, height = 6):** Salva o gráfico gerado como uma imagem PNG com as dimensões especificadas (largura de 8 polegadas e altura de 6 polegadas).
