//
//  FizzBuzz.swift
//  Algorithms
//
//  Created by DavidYang on 2019/8/7.
//  Copyright © 2019 cocoapods. All rights reserved.
//

import Foundation

class FizzBuzz {
  static  func fizzBuzz(_ n: Int) -> [String] {
        var result: [String] = []
        for i in 1...n {
            var output = ""
            if (i % 15 == 0) {
                output = "FizzBuzz"
            } else if (i % 3 == 0) {
                output = "Fizz"
            } else if (i % 5 == 0) {
                output = "Buzz"
            } else {
                output = String(i)
            }
            result.append(output)
        }
        return result
    }
}
