//
//  File.swift
//  
//
//  Created by Hanah Santana on 17/03/22.
//
import Foundation
import SwiftSoup

    print("     - Welcome to the Calculadora de Notas do IF! -")
    print("Insira o numero correspondente a funcao que deseja utilizar:")
    print("1 - Qual minha média final   2 - Quanto devo tirar na N2")
    
    let n1:Double = 7
    let n2:Double = 9
    
    let option = readLine()
    switch option{
    case "1":
        media_final(n1: n1,n2: n2)
    case "2":
        quanto_falta(n1: n1)
    default:
        print("Você não selecionou uma opção válida")
    }
func parse(){
    
}

func media_final(n1: Double, n2: Double){
    let nota_final:Double = (2*n1 + 3*n2)/5
    print("Nota final:",nota_final)
}
func quanto_falta(n1: Double){
    let nec_n2 = (35 - 2*n1)/3
    print("Tire umeno um",nec_n2,"pra passar, meu fi") //Prova final, faltou 0.5, precisava de 9 na n2
}

