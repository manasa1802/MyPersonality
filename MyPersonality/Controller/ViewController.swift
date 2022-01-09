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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateUI()
    }

    @IBAction func optionSelected(_ sender: UIButton) {
        
        if myQuestionBrain.isLastQuestion(){
//          load next viewcontroller
            print("load results viewcontroller")
//
//            if let resultController = storyboard!.instantiateViewController(withIdentifier: "SomeID") as? ResultsViewController {
//                present(resultController, animated: true, completion: nil)
//            }
        }else{
            myQuestionBrain.addScore(userChoice: sender.currentTitle!)
            updateUI()
        }

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

