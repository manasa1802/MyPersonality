//
//  QuestionBrain.swift
//  MyPersonality
//
//  Created by manasa on 1/5/22.
//  Copyright © 2022 manasa. All rights reserved.
//

import Foundation

struct QuestionBrain {
    var questionNum = 0
    var myScore = 0
    var lastQuestion = false
    
    var myQuestions = [
    QuestionModel(question: " What time do you wake up?", op1: "9-10", op1Score: 10, op2: "10-11", op2Score: 40, op3: "6-7", op3Score: 20, op4: "7-8", op4Score: 30),
    
    QuestionModel(question: " What is your favorite hobby?", op1: "Sports", op1Score: 40, op2: "Dance", op2Score: 30, op3: "Painting", op3Score: 10, op4: "Singing", op4Score: 20),
       
    QuestionModel(question: " Choose your favorite country", op1: "Italy", op1Score: 40, op2: "USA", op2Score: 10, op3: "Venezuela", op3Score: 30, op4: "UK", op4Score: 20),
        
    QuestionModel(question: " How often do you see social media?", op1: "Everyday", op1Score: 20, op2: "Never", op2Score: 30, op3: "Occassionally", op3Score: 40, op4: "Every hour", op4Score: 10),
    
    QuestionModel(question: " Choose one element", op1: "Gold", op1Score: 20, op2: "Water", op2Score: 30, op3: "Earth", op3Score: 10, op4: "Steel", op4Score: 40),
    
    QuestionModel(question: " Which is your dream city?", op1: "Los Angeles", op1Score: 10, op2: "Miami", op2Score: 30, op3: "Las Vegas", op3Score: 20, op4: "New York", op4Score: 40),
       
    QuestionModel(question: " What is your favorite music genre?", op1: "R&B", op1Score: 10, op2: "Pop", op2Score: 30, op3: "Hip Hop", op3Score: 20, op4: "Country", op4Score: 40),
        
    QuestionModel(question: " Which food do you like the most?", op1: "Spaghetti", op1Score: 40, op2: "Pancakes", op2Score: 10, op3: "Chicken", op3Score: 20, op4: "Sushi", op4Score: 30),
    
    QuestionModel(question: " Which is your favorite instrument?", op1: "Drums", op1Score: 30, op2: "Violine", op2Score: 10, op3: "Flute", op3Score: 40, op4: "Guitar", op4Score: 20),
        
    QuestionModel(question: " What do you hate the most?", op1: "Rude People", op1Score: 20, op2: "Rain", op2Score: 30, op3: "School", op3Score: 10, op4: "Mosquitoes", op4Score: 40)
    ]
    
    func getTitle() -> String{
        myQuestions[questionNum].question
    }
    
    func getoptionOne() -> String{
        myQuestions[questionNum].optionOne
    }
    
    func getoptionTwo() -> String{
        myQuestions[questionNum].optionTwo
    }
    
    func getoptionThree() -> String{
        myQuestions[questionNum].optionThree
    }
    
    func getoptionFour() -> String{
        myQuestions[questionNum].optionFour
    }
    
    func getMyScore() -> Int{
        return myScore
    }
    
    mutating func addScore(userChoice: String){
        if userChoice == myQuestions[questionNum].optionOne{
            myScore += myQuestions[questionNum].optionOneScore
        }else if userChoice == myQuestions[questionNum].optionTwo{
            myScore += myQuestions[questionNum].optionTwoScore
        }else if userChoice == myQuestions[questionNum].optionThree{
            myScore += myQuestions[questionNum].optionThreeScore
        }else{
            myScore += myQuestions[questionNum].optionFourScore
        }
        
        if questionNum < myQuestions.count-1{
            questionNum += 1
            lastQuestion = false
        }else{
//            questionNum = 0
//            myScore = 0
            lastQuestion = true
        }
    }
    
    func isLastQuestion() -> Bool{
        return lastQuestion
    }
}
