//
//  main.swift
//  X - O Game
//
//  Created by Wrood Alrashidi on 21/06/2020.
//  Copyright © 2020 Wrood Alrashidi. All rights reserved.
//

import Foundation

var f = ["1", "2", "3", "4", "5", "6", "7", "8", "9"]
let O = "🅾️"
let X = "❎"
 var choice = ""
func greeting() {
    print("Welcome to X-O Game🤩")
    print()
    print("Choose a level⚡️")
    print("Easy🐢", "Medium🐼", "Hard🦁")
   choice = readLine()!
  

}

func chooseLevels(choose: String) {
    
       if choose == "Easy"
       { Easy() }
       else if choose == "Medium"
       { Medium() }
          else if choose == "Hard"
       { Hard() }
       else{
           Medium()
       }
}

func printTable() {
    print("  \(f[0])  |  \(f[1])  |  \(f[2])  ")
    print(" --------------- ")
    print("  \(f[3])  |  \(f[4])  |  \(f[5])  ")
    print(" --------------- ")
    print("  \(f[6])  |  \(f[7])  |  \(f[8])  ")
}

func even(_ i: Int) -> Bool {
    return i % 2 == 0}
    
func restart() {
    for i in 1...9 {
        f[i-1] =  "\(i)"
        }
    }
// Input is a Int not a letter (coverting to input)
func vaildRange(_ i: Int) -> Bool {
    return i < 10 && i > 0
}
// input is selecting a vacant spot
func vacant(_ i: Int) -> Bool{
    return f[i-1] != X && f[i-1] != O
}


func inputAndValidate() -> Int {
    while true {
        if let input = Int(readLine()!),
        vaildRange(input) && vacant(input)
    
        {
            return input
        }
        print("Wrong input⚠️ Try again!")
    }
}

func turn() {
    for i in 0..<9 {
       
    print("Type an available numbers to place \(player) at")
        if even(i) {
    let index = Int(readLine()!)! - 1
        if index >= 0 && index <= 8  {
            player = X
            f[index] = player
            }
            else {
                           print("Wrong Input!⚠️")
                       }
        }
            else
            {
                 
              chooseLevels(choose: choice)
            }
     //   player = even(i) ? X : O
       
            printTable()
        
           
        if checkWinner(p: player) {
            print("\(player) is the winner🎉🎊")
            break
        } else if i == 8 {
            print("Tie👀")
        }
       
    }
     
}

func checkWinner(p: String) -> Bool {
     
    let r1 = (f[0], f[1], f[2]) == (p,p,p)
    let r2 = (f[3], f[4], f[5]) == (p,p,p)
    let r3 = (f[6], f[7], f[8]) == (p,p,p)
    let c1 = (f[0], f[3], f[6]) == (p,p,p)
    let c2 = (f[1], f[4], f[7]) == (p,p,p)
    let c3 = (f[2], f[5], f[8]) == (p,p,p)
    let d1 = (f[0], f[4], f[8]) == (p,p,p)
    let d2 = (f[2], f[4], f[6]) == (p,p,p)
    return r1 || r2 || r3 || c1 || c2 || c3 || d1 || d2
       
}



// Levels

func Easy() {
   
    let randomNumber = Int.random(in: 1...9)
    
       for i in 1...9 {
           if f[i] != O && f[i] != X {
              f[i] = O
              break
           }
       }
   
}


func Medium() {
    if f[0] == X && f[1] == X && f[2] == "3" {
        f[2] = O
    }
    else if f[0] == X && f[2] == X && f[1] == "2" {
        f[1] = O
    }
    else if f[3] == X && f[4] == X && f[5] == "6" {
        f[5] = O
    }
    else if f[6] == X && f[7] == X && f[8] == "9" {
        f[8] = O
    }
    else if f[6] == X && f[8] == X && f[7] == "8" {
        f[7] = O
    }
    else if f[6] == X && f[3] == X && f[0] == "1" {
        f[0] = O
    }
    else if f[1] == X && f[4] == X && f[7] == "8" {
        f[7] = O
    }
    else if f[1] == X && f[7] == X && f[4] == "5" {
        f[4] = O
    }
    else if f[8] == X && f[5] == X && f[2] == "3" {
        f[3] = O
    }
    else if f[0] == X && f[4] == X && f[8] == "9" {
        f[8] = O
    }
    else if f[0] == X && f[8] == X && f[4] == "5" {
        f[4] = O
    }
    else if f[6] == X && f[4] == X && f[2] == "3" {
        f[2] = O
    }else
    {f[3] = O }
    

}




func Hard() {
if f[0] == X && f[1] == X && f[2] == "3" {
    f[2] = O
}
else if f[2] == X && f[1] == X && f[0] == "1" {
    f[0] = O
}
else if f[0] == X && f[2] == X && f[1] == "2" {
    f[1] = O
}
else if f[5] == X && f[4] == X && f[3] == "4" {
    f[3] = O
}
else if f[3] == X && f[4] == X && f[5] == "6" {
    f[5] = O
}
else if f[3] == X && f[5] == X && f[4] == "5" {
    f[4] = O
}
else if f[6] == X && f[7] == X && f[8] == "9" {
    f[8] = O
}
else if f[8] == X && f[7] == X && f[6] == "7" {
    f[6] = O
}
else if f[6] == X && f[8] == X && f[7] == "8" {
    f[7] = O
}
else if f[0] == X && f[3] == X && f[6] == "7" {
    f[6] = O
}
else if f[6] == X && f[3] == X && f[0] == "1" {
    f[0] = O
}
else if f[0] == X && f[6] == X && f[3] == "4" {
    f[3] = O
}
else if f[1] == X && f[4] == X && f[7] == "8" {
    f[7] = O
}
else if f[7] == X && f[4] == X && f[1] == "2" {
    f[1] = O
}
else if f[1] == X && f[7] == X && f[4] == "5" {
    f[4] = O
}
else if f[2] == X && f[5] == X && f[8] == "9" {
    f[8] = O
}
else if f[8] == X && f[5] == X && f[2] == "3" {
    f[3] = O
}
else if f[2] == X && f[8] == X && f[5] == "6" {
    f[5] = O
}
else if f[0] == X && f[4] == X && f[8] == "9" {
    f[8] = O
}
else if f[8] == X && f[4] == X && f[0] == "1" {
    f[0] = O
}
else if f[0] == X && f[8] == X && f[4] == "5" {
    f[4] = O
}
else if f[2] == X && f[4] == X && f[6] == "7" {
    f[6] = O
}
else if f[6] == X && f[4] == X && f[2] == "3" {
    f[2] = O
}
else if f[2] == X && f[6] == X && f[4] == "5" {
    f[4] = O
}
else {
    Easy()
    }
}
 
var count = 0
var player = X
func main() {
    while true {
    greeting()
    printTable()
    turn()
    restart()
    
    }
}
main()

