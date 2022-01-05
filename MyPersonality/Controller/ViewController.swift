//
//  ViewController.swift
//  MyPersonality
//
//  Created by manasa on 12/7/21.
//  Copyright © 2021 manasa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var questionTextLabel: UILabel!
    
    @IBOutlet weak var optionOneButton: UIButton!
    @IBOutlet weak var optionTwoButton: UIButton!
    @IBOutlet weak var optionThreeButton: UIButton!
    @IBOutlet weak var optionFourButton: UIButton!
    
    var timer = Timer()
    var questionNumber = 0
    
    var myQuestionBrain = QuestionBrain()
    
    var questions = [
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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateUI()
        
    }

    @IBAction func optionSelected(_ sender: UIButton) {
        myQuestionBrain.addScore(userChoice: sender.currentTitle!)
        
//        Timer.init(timeInterval: 0.5, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
        updateUI()
    }
    
    @objc func updateUI(){
        
        questionTextLabel.text = myQuestionBrain.getTitle()
        optionOneButton.setTitle(myQuestionBrain.getoptionOne(), for: .normal)
        optionTwoButton.setTitle(myQuestionBrain.getoptionTwo(), for: .normal)
        optionThreeButton.setTitle(myQuestionBrain.getoptionThree(), for: .normal)
        optionFourButton.setTitle(myQuestionBrain.getoptionFour(), for: .normal)
        scoreLabel.text = "Score: \(myQuestionBrain.getMyScore())"
    }
}

