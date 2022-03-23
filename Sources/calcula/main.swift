//
//  File.swift
//  
//
//  Created by Hanah Santana on 17/03/22.
//
import Foundation
import SwiftSoup

//TO-DO: Adicionar menu inicial para selecionar entre notas presentes na plataforma vs. adicionar notas manualmente. Opção de adicionar notas manualmente chama função armazena_notas()

var n1:Double = 6
var n2:Double = 6

var soma_nota: Double = 0

var notas: [Double] = []
//TO-DO: Remover valores iniciais de n1 e n2

var loop = true
var count = 0

print("       - Welcome to the Calculadora de Notas do IF! -\n")

while(loop){
    print("""
    -------------------------- x Menu x ---------------------------
    | 1 - Qual minha média        | 2 - Quanto devo tirar na N2   |
    | 0 - Sair da aplicação       |                               |
    ----------------------------- x -------------------------------\n
    """)

    print("Insira o número correspondente a função que deseja utilizar: ",terminator:"")

    let option = readLine()
    print("")
    switch option{
    case "1":
        armazenaN1()
        media(n1: n1, n2: n2)
        execucao()
    case "2":
        quantoN2(n1: n1)
        execucao()
    case "0":
        loop = false
    default:
        print("Você não selecionou uma opção válida.\n")
        execucao()
    }
}

func armazenaN1(){
    //TO-DO: Fazer tratamento de possíveis múltiplas notas de cada etapa.
    //TO-DO: Se count for igual a 0, não é possível calcular a nota.

    print("Insira a(s) nota(s) da N1\n")
    var loop2 = true
    while(loop2){
        count += 1
        print("Insira nota \(count): ", terminator: "")
        
        let input = readLine()!
        n1 = Double(input) ?? 0
        notas.append(n1)
        
        soma_nota = soma_nota + n1
        
        print("Deseja adicionar mais uma nota à N1? (y/n): ", terminator: "")
        
        let input2 = readLine()
        if input2 == "n" || input2 == "N"{
            loop2 = false
        }
    }
    print(notas)
    n1 = soma_nota/Double(count)
    print("Média N1: \(n1)")
    //return n1 (especificar que esta função retorne double)
}

func media(n1: Double, n2: Double){
    let media:Double = (2*n1 + 3*n2)/5
    print("Média Parcial:",media)
    if (media < 7 && media >= 3) {
        let aval_final:Double = 10 - media
        print("Infelizmente voce deve fazer a AVALIAÇÃO FINAL. :(")
        print("É necessário que você tire \(aval_final) na Avaliação Final para ser aprovado.\n")
    }else if(media < 3){
        print("Você foi REPROVADO e não poderá fazer avaliação final\n")
    }
}

func quantoN2(n1: Double){
    let falta_n2 = (35 - 2*n1)/3
    print("É necessário tirar",falta_n2,"para ser aprovado diretamente.")
    if falta_n2 > 10 {
        print("""
                Você precisa fazer a AVALIAÇÃO FINAL :(\n
        """)
    }
}

func execucao(){
    print("Deseja executar novamente? (y - sim / n - não): ", terminator:"")
    let input = readLine()
    print("\n")
    if(input == "n" || input == "N"){
        loop = false
    }else if(input == "y" || input == "Y"){
        
    }else{
        print("Você não inseriu uma opção válida. O programa foi encerrado.")
        loop = false
    }
}
