//
//  7_Stacks_Fish.swift
//  Link:- https://app.codility.com/programmers/lessons/7-stacks_and_queues/fish/
//
//  Created by Varun Rathi on 05/09/20.
//

import Foundation
import Glibc

// you can write to stdout for debugging purposes, e.g.
// print("this is a debug message")

public func solution(_ A : inout [Int], _ B : inout [Int]) -> Int {
    // write your code in Swift 4.2.1 (Linux)
    var aliveCount = 0
    var stack:[Int] = []
    for i in stride(from: 0 , to: A.count, by: 1){
         
         if B[i] == 1 {
                stack.append(A[i])
         }
         else {
             
             while let last = stack.last, last < A[i]{
                stack.popLast()
             }
             
             if stack.isEmpty {
                    aliveCount += 1
             }
         }
    }
    
        
    return aliveCount + stack.count
}
