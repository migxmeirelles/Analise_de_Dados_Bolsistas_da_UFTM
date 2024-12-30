dados_originais <- read.csv("\\PROENSArquivo bolsistas gruaduao.csv", sep = ";", fileEncoding = "latin1")

dados_alunos <- dados_originais[, c("Nome.do.programa", "Nome.do.aluno", "Nome.do.curso")]

colnames(dados_alunos) <- c("Programa", "Aluno", "Curso")

head(dados_alunos)

#alunos por programa
ggplot(dados_alunos, aes(x = Programa)) +
  geom_bar(fill = "darkorange") +
  geom_text(stat = "count", aes(label = ..count..), vjust = -0.5) +
  labs(title = "Total de Alunos por Programa",
       x = "Programa",
       y = "Quantidade de Alunos") +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))
ggsave("alunos_por_programa.png", width = 8, height = 6)


#alunos por curso
ggplot(dados_alunos, aes(x = Curso)) +
  geom_bar(fill = "skyblue") +
  geom_text(stat = "count", aes(label = ..count..), vjust = -0.5) +
  labs(title = "Total de Alunos por Curso",
       x = "Curso",
       y = "Quantidade de Alunos") + 
  theme(axis.text.x = element_text(angle = 45, hjust = 1))
ggsave("alunos_por_curso.png", width = 8, height = 6)
