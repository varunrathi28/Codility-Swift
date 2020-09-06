//
//  5-Prefix_sum_Passing_cars.swift
//  Link:- https://app.codility.com/c/run/trainingMVKD4H-P86/
//  Result Report :- https://app.codility.com/demo/results/trainingMVKD4H-P86/
//  complexity: Time = O(N), Space = O(1)
//  Created by Varun Rathi on 07/09/20.
//


import Foundation
import Glibc

// you can write to stdout for debugging purposes, e.g.
// print("this is a debug message")

public func solution(_ A : inout [Int]) -> Int {
    // write your code in Swift 4.2.1 (Linux)
    let maxLimitedAllowed = 1_000_000_000
    var suffixSums = Array(repeating: 0, count: A.count)
    var countPassed:Int = 0
    let n = A.count - 1
    var count = 0
    for i in stride(from:n, through: 0, by: -1){
            count += A[i]
            suffixSums[i] += count
    }
    
    for (index,car) in A.enumerated(){
        if car == 0 {
              countPassed += suffixSums[index]
        }
    }
    return countPassed > maxLimitedAllowed ? -1 :  countPassed
}
