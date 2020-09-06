//
//  4-Counting_Elements_Max_Counter.swift
//  Link:- https://app.codility.com/programmers/lessons/4-counting_elements/max_counters/
//  Report result :- https://app.codility.com/demo/results/trainingS6J6UM-YYU/
//  Complexity:- Time = O(N), Space = O(1)
//  Created by Varun Rathi on 07/09/20.
//

import Foundation
import Glibc

public func solution(_ N : Int, _ A : inout [Int]) -> [Int] {
    // write your code in Swift 4.2.1 (Linux)
    var result:[Int] = Array(repeating: 0 , count: N)
    var maxValue = 0
    var counterOffset = 0
    for counterOp in A {
        if counterOp == N + 1 {
            // Max Counter
            counterOffset = maxValue
        }
        else {
            // Increase operation
            var newValue = result[counterOp - 1] + 1
            
            if result[counterOp - 1] < counterOffset {
                newValue = counterOffset + 1
            }
            
            result[counterOp - 1] = newValue
            maxValue = max(maxValue,newValue)
        }
    }
    
    // Match every lagging values to max counter
    for (index,value) in result.enumerated() {
        if value < counterOffset {
            result[index] = counterOffset
        }
    }
    return result
}

