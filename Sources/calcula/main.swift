//
//  File.swift
//  
//
//  Created by Hanah Santana on 17/03/22.
//
import Foundation

var n1:Float = 0
var n2:Float = 0
var note: Float = 0
var average:Float = 0
var loop = true


func Average(n1: Float, n2: Float) {
    average = (2*n1 + 3*n2)/5
    print("Partial Average:",average)
    if (average < 7 && average >= 3) {
        let finalEvaluation:Float = 10 - average
        print("Unfortunately you must do the FINAL ASSESSMENT. :(")
        let message_af = String(format: "You need to get a %.2f in the Final Assessment to be approved.\n", finalEvaluation)
        print(message_af)
    }else if(average < 3){
        print("You were FAILED and will not be able to make a final assessment\n")
    }
}

func getN2(n1: Float) {
    let need_n2 = (35 - 2*n1)/3
    if need_n2 > 10 {
        print("You need more than 10.0 to pass directly, so you must do the FINAL ASSESSMENT :(\n")
    }else{
        let message_n2 = String(format: "You must take %.2f to pass.", need_n2)
        print(message_n2)
    }
}

func Execution() {
    print("Do you want to run again? (y/n): ", terminator:"")
    let input = readLine()!
    print("\n")
    if input.lowercased() == "y"{
        //NOTE: The loop runs the switch case again.
    }else if input.lowercased() == "n"{
        loop = false
    }else{
        print("invalid option", terminator: " ")
        Execution()
    }
}


print("       - Welcome to the Grade Calculator do IF! -\n")

while(loop){
    print("""
  ------------------------- x Menu x -------------------------------
  | 1 - What is my average      | 2 - How much should I take in N2 |
  | 0 - Exit the application    |                                  |
  ----------------------------- x ----------------------------------\n
  """)
    
    print("Enter the number corresponding to the function you want to use: ", terminator:"")
    
    let option = readLine()
    print("")
    switch option{
    case "1":
        print("Insert note(s) from n1 N1\n")
        getNote()
        n1 = note
        print("Insert note(s) from N2\n")
        getNote()
        n2 = note
        Average(n1: n1, n2: n2)
    case "2":
        print("Insert note(s) from N1\n")
        getNote()
        n1 = note
        getN2(n1: n1)
    case "0":
        loop = false
    default:
        print("Invalid option.\n")
    }
    Execution()
}

func getNote(){
    
    var count = 0
    var sum_note: Float = 0
    
    var loop2 = true
    
    while(loop2){
        count += 1
        print("Insert note \(count): ", terminator: "")
        
        let input = readLine()!
        
        note = Float(input) ?? 0
        if note < 0 || note > 10 {
            print("Enter a value between 0 and 10")
            count -= 1
        } else {
            sum_note = sum_note + note
            
            print("Do you want to add one more note? (y/n): ", terminator: "")
            let input2 = readLine()!
            
            if input2.lowercased() == "y"{
                //NOTE: The loop runs the function to receive grades again.
            } else if input2.lowercased() == "n"{
                note = sum_note/Float(count)
                let msg_media = String(format: "Grade average: %.2f", note)
                print(msg_media)
                loop2 = false
            } else {
                print("\nYou have not entered a valid option. Please enter notes again.")
                getNote()
                loop2 = false
            }
        }
    }
    
    func Average(n1: Float, n2: Float) {
        average = (2*n1 + 3*n2)/5
        print("Partial Average:",average)
        if (average < 7 && average >= 3) {
            let finalEvaluation:Float = 10 - average
            print("Unfortunately you must do the FINAL ASSESSMENT. :(")
            let message_af = String(format: "You need to get a %.2f in the Final Assessment to be approved.\n", finalEvaluation)
            print(message_af)
        } else if(average < 3){
            print("You were FAILED and will not be able to make a final assessment\n")
        }
    }
    
    func getN2(n1: Float) {
        let need_n2 = (35 - 2*n1)/3
        if need_n2 > 10 {
            print("You need more than 10.0 to pass directly, so you must do the FINAL ASSESSMENT :(\n")
        } else {
            let message_n2 = String(format: "You must take %.2f to pass.", need_n2)
            print(message_n2)
        }
    }
    
    func Execution() {
        print("Do you want to run again? (y/n): ", terminator:"")
        let input = readLine()!
        print("\n")
        if input.lowercased() == "y"{
            //NOTE: The loop runs the switch case again.
        }else if input.lowercased() == "n"{
            loop = false
        }else{
            print("invalid option", terminator: " ")
            Execution()
        }
    }
}
