//
//  ViewController.swift
//  ImproveTask
//
//  Created by 1234 on 22.02.2021.
//  Copyright © 2021 Lisa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    func arrayRandom(_ n: Int) -> [Int]{
           var internalArray = Array(repeating:0, count:n)
           for k in 0...n-1 {
               internalArray[k] = Int.random(in: 1 ... .max)
           }
           return internalArray
       }
       
       func arrayRandomNonRepeat(_ n: Int) -> [Int]{
           var previousNumber = Array(repeating:0, count:n)
           if n <= 10000{
               for k in previousNumber {
                   var randomNumber = 0
                   if k == randomNumber || randomNumber == 0{
                       randomNumber = Int.random(in: 1 ... 10000) // if i use .max -> memory error
                       previousNumber.append(randomNumber)
                       previousNumber.removeFirst()
                   }
               }
           }else {print ("Введите число меньше 10001")}
           return previousNumber
       }

       func taskResult(_ n: Int) -> [[Int]]{
           let lengthArray = arrayRandomNonRepeat(n)
           
           var arrayOfArrays = [[Int]]()
           for j in 0 ... n-1{
               arrayOfArrays.append( arrayRandom(lengthArray[j]).sorted(by: (j % 2) != 0 ? {$1 > $0}:{$1 < $0}) )
           }
           return arrayOfArrays
       }


}

