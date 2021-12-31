//
//  Question.swift
//  what2Eat
//
//  Created by Young Soo Hwang on 2021/12/31.
//

import Foundation

struct Question {
    let keys: Int
    let text: String
    let yes: Int
    let no: Int
    
    init(_ keys: Int, _ text: String, _ yes: Int, _ no: Int) {
        self.keys = keys
        self.text = text
        self.yes = yes
        self.no = no
    }
}
