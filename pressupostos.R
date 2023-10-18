dados <- read_excel("C:/Users/pietr/OneDrive/Documentos/pastinha/pressupostos.xlsx", sheet='normalidade')

shapiro.test(dados$horas)

shapiro.test(dados$nota1)

shapiro.test(dados$nota2)

qqnorm(dados$nota2)
qqline(dados$nota2)

dados <- read_excel("C:/Users/pietr/OneDrive/Documentos/pastinha/pressupostos.xlsx", sheet = 'bartlett1')

bartlett.test(tempo ~ grupo = dados)

dados <- read_excel("C:/Users/pietr/OneDrive/Documentos/pastinha/pressupostos.xlsx", sheet ='bartlett2')

bartlett.test(dados$nota ~ dados$disciplina, data = dados)

boxplot(dados$nota, dados$disciplina, data = dados)

