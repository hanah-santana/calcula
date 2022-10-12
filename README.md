
# Calculadora de Notas do IF

Este programa calcula notas acadêmicas inseridas via CLI.

Criado para facilitar os cálculos das notas de alunos do IFCE conforme o aluno está passando pelo tão temido "final de semestre", onde as notas são calculadas e recalculadas diversas vezes para saber se há possibilidade de ser aprovado, ou que nota é necessária na segunda etapa para tal. 

Dessa forma, reduzindo a carga mental e o tempo necessário para averiguar as notas, evitando de colocar tudo na calculadora e lembrar da fórmula que o IFCE utiliza para calcular a média.


## Pré-requisitos e como rodar a aplicação/testes

Antes de utiliizar a CLI, você vai precisar ter instalado em sua máquina MacOs a ferramenta Xcode.


## Funcionalidades

- Cálculo da Média Parcial
- Cálculo da nota necessária na 2° etapa para ser aprovado
- Cálculo da nota necessária para aprovação caso precise de Avaliação Final
- Avisos caso o aluno precise fazer Avaliação Final

## Ferramentas Utilizadas 🛠

As seguintes ferramentas foram usadas na construção do projeto:

- [Terminator](https://www.folkstalk.com/2022/10/swift-print-with-terminator-with-code-examples.html)
- [While, Switch](https://docs.swift.org/swift-book/LanguageGuide/ControlFlow.html)
- [readLine](https://developer.apple.com/documentation/swift/readline(strippingnewline:))

## Como Funciona

Inicia-se com um menu possuindo as seguintes opções:

1 - Média Parcial

    Ao selecionar esta opção, o programa irá requisitar as notas da 1° etapa e fornecerá a opção de continuar adicionando.

    Deve-se colocar 'y' caso queira adicionar mais uma nota àquela mesma etapa e 'n' caso não deseje mais adicionar notas.

    Ao selecionar 'n', o programa passará a requisitar as notas da 2° etapa da mesma maneira.

    Ao receber as notas, o programa fará a média das notas da etapa e utilizará ambas as médias no cálculo da Média Parcial após receber as notas referentes a N2 da mesma forma.

    Em suma: Calcula a média parcial a partir das notas N1 e N2. Indica se foi aprovado ou não, e caso não esteja diretamente aprovado, indica qual nota é necessária na Avaliação Final para que o aluno seja aprovado.

2- Quanto tirar na N2

    Ao selecionar esta opção, o programa recebe as notas da mesma maneira que a função anterior.

    Ao receber a(s) nota(s), será feito o cálculo necessário para dar o valor da nota da N2 necessária para a aprovação.
    
    Em suma: Calcula quanto o aluno precisa de nota na N2 a partir da nota (ou média das notas) da primeira etapa. Caso a nota necessária seja maior que 10.0, o programa indica que o aluno deve fazer Avaliação Final, e mostra a nota necessária nesta avaliação.
    
    
## Autores

- [@hanahsantana6](https://github.com/hanahsantana6)

## 📌 Contribuições 

1. Dê um Fork nesse repositório através do GitHub

2. Crie uma branch develop

```
git checkout -b develop
```

3. Dê um Commit nas suas alterações

4. Dê um Push na sua branch

```
git push
```
5. Provavelmente, seu push não dará certo, copie o código que o git deu ao tentar fazer o push, cole e dê enter

Boa sorte ✨
