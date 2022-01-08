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
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func startOverButtonPressed(_ sender: UIButton) {
    }
}
