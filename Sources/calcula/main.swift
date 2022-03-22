//
//  File.swift
//  
//
//  Created by Hanah Santana on 17/03/22.
//
import Foundation
import SwiftSoup

print("     - Welcome to the Calculadora de Notas do IF! -")

//TO-DO: Adicionar menu inicial para selecionar entre notas presentes na plataforma vs. adicionar notas manualmente. Opção de adicionar notas manualmente chama função armazena_notas()


//TO-DO: Remover valores iniciais de n1 e n2
var n1:Double = 0
var n2:Double = 0

var amoeba = true

while(amoeba){
    print("Insira o numero correspondente a funcao que deseja utilizar:\n")
    print("""
    1 - Qual minha média final | 2 - Quanto devo tirar na N2 |
    0 - Sair da aplicação\n
    """)
    
    let option = readLine()
    switch option{
    case "1":
        media(n1: n1,n2: n2)
    case "2":
        quantoN2(n1: n1)
    case "0":
        amoeba = false
    default:
        print("Você não selecionou uma opção válida")
    }
}


//func armazena_notas(){
//    //TO-DO: Fazer tratamento de possíveis múltiplas notas de cada etapa.
//    //Requisitos: O tratamento deve ser o mesmo do web scrapping.
//
//    //Ideia_1: O usuário insere a quantidade de notas da N1. Fazer um loop que rodará x vezes preenchendo um vetor de tamanho x. No final as notas do vetor serão somadas e divididas por x.
//
//    //Ideia_2: O usuário seleciona a opção de preencher manualmente e o programa já está em loop recebendo e armazenando em um array quantas notas o usuário quiser inserir, até que o usuário digite algo que não seja número e o programa saia do laço.
//    //Sugestão p/ Ideia_2: Criar um array de 15 posições, as posições que não forem preenchidas durante o laço terão algum valor no array (que não sei qual é). Deve-se fazer um laço que conte as posições (e faça a soma das notas ao mesmo tempo) até chegar nesse valor do array que não foi preenchido, ao final da contagem, sabe-se o somatório das notas e a quantidade de notas, podendo assim fazer a média.
//
//    //    print("Insira a(s) nota(s) da N1")
//    //    var input = readLine()
//    //    n1 = Double(input) ?? 0
//    //    //TO-DO: Calcular a média de notas da N1 (armazenar tudo num array e fazer a média)
//    //    print("Insira a(s) nota(s) da N2")
//    //    input = readLine()
//    //    n2 = Double(input) ?? 0
//      //     //TO-DO: Calcular a média de notas da N1 (armazenar tudo num array e fazer a média)
//}

func media(n1: Double, n2: Double){
    let media:Double = (2*n1 + 3*n2)/5
    print("Nota final:",media)
    if media < 7 {
        let aval_final:Double = 10 - media
        print("Infelizmente voce está de AF, meu parsero")
        print("É necessário que você tire umeno um \(aval_final) pra passar. Faltou ... para passar direto. Precisava de ... na n2")
    }
}
func quantoN2(n1: Double){
    let falta_n2 = (35 - 2*n1)/3
    print("Tire umeno um",falta_n2,"pra passar, meu fi")
    if falta_n2 > 10 {
        //let avaliacao_final = calculo da nota necessária p/ AF
        print("""
                Você precisa fazer a prova final :(
                Para ser aprovado, você precisa de ... na Avaliação Final
        """)
    }
}

