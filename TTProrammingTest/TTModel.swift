//
//  TTModel.swift
//  TTProrammingTest
//
//  Created by Harish Raturi on 06/07/18.
//  Copyright © 2018 Harish Raturi. All rights reserved.
//

import Foundation
//
//  TTModel.swift
//  TenTenPATest
//
//  Created by Harish Raturi on 06/07/18.
//  Copyright © 2018 Harish Raturi. All rights reserved.
//

import Foundation

struct Stack {
    fileprivate var array: [Int] = []
    var isEmpty: Bool {
        return array.isEmpty
    }
    
    var count: Int {
        return array.count
    }
    
    mutating func push(_ element: Int) {
        array.append(element)
    }
    
    mutating func pop() -> Int? {
        return array.popLast()
    }
    
    func peek() -> Int? {
        return array.last
    }
    
    
}


extension Stack: CustomStringConvertible {
    var description: String {
        let topDivider = ""
        let bottomDivider = "\n"
        let separator = "\n"
        let stackElements = array.reversed().flatMap { "\($0)" + separator }
        return topDivider + stackElements + bottomDivider
    }
}


