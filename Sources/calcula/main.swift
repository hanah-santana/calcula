//
//  File.swift
//  
//
//  Created by Hanah Santana on 17/03/22.
//
import Foundation

var n1:Float = 0
var n2:Float = 0
var nota: Float = 0
var media:Float = 0

var loop = true


print("       - Welcome to the Calculadora de Notas do IF! -\n")

while(loop){
    print("""
  ------------------------- x Menu x ----------------------------
  | 1 - Qual minha média        | 2 - Quanto devo tirar na N2   |
  | 0 - Sair da aplicação       |                               |
  ----------------------------- x -------------------------------\n
  """)
    
    print("Insira o número correspondente a função que deseja utilizar: ",terminator:"")
    
    let option = readLine()
    print("")
    switch option{
    case "1":
        print("Insira a(s) nota(s) da N1\n")
        recebeNotas()
        n1 = nota
        print("Insira a(s) nota(s) da N2\n")
        recebeNotas()
        n2 = nota
        media(n1: n1, n2: n2)
    case "2":
        print("Insira a(s) nota(s) da N1\n")
        recebeNotas()
        n1 = nota
        quantoN2(n1: n1)
    case "0":
        loop = false
    default:
        print("Você não selecionou uma opção válida.\n")
    }
    execucao()
}

func recebeNotas(){
    
    var count = 0
    var soma_nota: Float = 0
    
    var loop2 = true
    
    while(loop2){
        count += 1
        print("Insira nota \(count): ", terminator: "")
        
        let input = readLine()!
        nota = Float(input) ?? 0
        if nota < 0 || nota > 10 {
            print("Insira um valor entre 0 e 10")
            count -= 1
        } else {
            soma_nota = soma_nota + nota
            
            print("Deseja adicionar mais uma nota? (y/n): ", terminator: "")
            let input2 = readLine()!
            
            if input2.lowercased() == "y"{
                //NOTE: The loop runs the function to receive grades again.
            }else if input2.lowercased() == "n"{
                nota = soma_nota/Float(count)
                let msg_media = String(format: "Média das notas: %.2f", nota)
                print(msg_media)
                loop2 = false
            }else{
                print("\nVocê não digitou uma opção válida. Favor, inserir notas novamente.")
                recebeNotas()
                loop2 = false
            }
        }
    }
}

func media(n1: Float, n2: Float){
    media = (2*n1 + 3*n2)/5
    print("Média Parcial:",media)
    if (media < 7 && media >= 3) {
        let aval_final:Float = 10 - media
        print("Infelizmente voce deve fazer a AVALIAÇÃO FINAL. :(")
        let msg_af = String(format: "É necessário que você tire %.2f na Avaliação Final para ser aprovado.\n", aval_final)
        print(msg_af)
    }else if(media < 3){
        print("Você foi REPROVADO e não poderá fazer avaliação final\n")
    }
}

func quantoN2(n1: Float){
    let falta_n2 = (35 - 2*n1)/3
    if falta_n2 > 10 {
        print("Você precisa de mais de 10.0 para passar diretamente, portanto deve fazer a AVALIAÇÃO FINAL :(\n")
    }else{
        let msg_n2 = String(format: "É necessário tirar %.2f para ser aprovado.", falta_n2)
        print(msg_n2)
    }
}

func execucao(){
    print("Deseja executar novamente? (y/n): ", terminator:"")
    let input = readLine()!
    print("\n")
    if input.lowercased() == "y"{
        //NOTE: The loop runs the switch case again.
    }else if input.lowercased() == "n"{
        loop = false
    }else{
        print("Você não inseriu uma opção válida.", terminator: " ")
        execucao()
    }
}
