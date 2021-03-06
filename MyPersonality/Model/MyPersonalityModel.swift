//
//  MyPersonalityModel.swift
//  MyPersonality
//
//  Created by manasa on 12/12/21.
//  Copyright © 2021 manasa. All rights reserved.
//

import Foundation

struct MyPersonalityModel {
    var question: String
    var optionOne: String
    var optionOneScore: Int
    var optionTwo: String
    var optionTwoScore: Int
    var optionThree: String
    var optionThreeScore: Int
    
    init(question: String, op1: String, op1Score: Int, op2: String, op2Score: Int, op3: String, op3Score: Int) {
        self.question = question
        self.optionOne = op1
        self.optionOneScore = op1Score
        self.optionTwo = op2
        self.optionTwoScore = op2Score
        self.optionThree = op3
        self.optionThreeScore = op3Score
    }
}
