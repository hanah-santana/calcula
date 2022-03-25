//
//  File.swift
//  
//
//  Created by Hanah Santana on 17/03/22.
//
import Foundation
//import SwiftSoup

//TO-DO: Adicionar função .lowerCased() e remover comparadores de strings extra nos if else.
//TO-DO: Lidar com dízimas periódicas

var n1:Double = 0
var n2:Double = 0
var nota: Double = 0
var media:Double = 0

var loop = true


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
    print("Insira a(s) nota(s) da N1\n")
    recebeNotas()
    n1 = nota
    print("Insira a(s) nota(s) da N2\n")
    recebeNotas()
    n2 = nota
    media(n1: n1, n2: n2)
    print("Média N1: \(media)")
    execucao()
  case "2":
    print("Insira a(s) nota(s) da N1\n")
    recebeNotas()
    n1 = nota
    quantoN2(n1: n1)
    execucao()
  case "0":
    loop = false
  default:
    print("Você não selecionou uma opção válida.\n")
    execucao()
  }
}

func recebeNotas(){
  //TO-DO: Se count for igual a 0, não é possível calcular a nota.
  
  var count = 0
  var soma_nota: Double = 0
     
  var loop2 = true
  
  while(loop2){
    count += 1
  
    print("Insira nota \(count): ", terminator: "")
    let input = readLine()!
    nota = Double(input) ?? 0
    
    soma_nota = soma_nota + nota
    print("Soma notas",soma_nota)
    
    print("Deseja adicionar mais uma nota? (y/n): ", terminator: "")
    let input2 = readLine()
    if input2 == "n" || input2 == "N"{
      nota = soma_nota/Double(count)
      print("Média das notas:", nota)
      loop2 = false
    }else if input2 == "y" || input2 == "Y" {
      
    }else{
      print("\nVocê não digitou uma opção válida. Favor, inserir notas novamente.")
      recebeNotas()
      loop2 = false
    }
  }
}

func media(n1: Double, n2: Double){
  media = (2*n1 + 3*n2)/5
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
  if falta_n2 > 10 {
    print("Você precisa de mais de 10.0 para passar diretamente, portanto deve fazer a AVALIAÇÃO FINAL :(\n")
  }else{
    print("É necessário tirar \(falta_n2) para ser aprovado.")
  }
}

func execucao(){
  print("Deseja executar novamente? (y/n): ", terminator:"")
  let input = readLine()
  print("\n")
  if(input == "n" || input == "N"){
      loop = false
  }else if(input == "y" || input == "Y"){
      //The loop runs the switch case again.
  }else{
      print("Você não inseriu uma opção válida.", terminator: " ")
      execucao()
  }
}