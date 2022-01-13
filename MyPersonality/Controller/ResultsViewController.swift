//
//  ResultsViewController.swift
//  MyPersonality
//
//  Created by manasa on 1/6/22.
//  Copyright © 2022 manasa. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var descriptionTextView: UITextView!
    @IBOutlet weak var startOverButton: UIButton!
    
    var myQuestionBrain = QuestionBrain()
    
    var score = ""
    var name = ""
    var desc = ""
//    var result : [ResultsModel] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        startOverButton.setTitle("Start Over", for: .normal)
        startOverButton.layer.cornerRadius = 0.25
        
        scoreLabel.text = score
        nameLabel.text = name
        descriptionTextView.text = desc
        
    }

    @IBAction func startOverButtonPressed(_ sender: UIButton) {
//        start again
 
        self.dismiss(animated: true, completion: nil)
        
        
    }
}
