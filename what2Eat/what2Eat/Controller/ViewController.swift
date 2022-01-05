//
//  ViewController.swift
//  what2Eat
//
//  Created by Young Soo Hwang on 2021/12/31.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var yesButton: UIButton!
    @IBOutlet weak var noButton: UIButton!
    
    func initSetup() {
        questionLabel.lineBreakMode = .byWordWrapping
        questionLabel.numberOfLines = 0
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        initSetup()
        updateUI()
    }
    
    var brain = QuestionBrain()
    
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        let answer = sender.currentTitle!
        brain.setQuestionKey(answer)
        updateUI()
    }
    
    func updateUI() {
        noButton.isEnabled = true
        noButton.backgroundColor = UIColor.orange
        if brain.isInProcess() {
            questionLabel.text = brain.getText()
        } else {
            questionLabel.text = brain.getRestaurant()
            noButton.backgroundColor = UIColor.darkGray
            noButton.isEnabled = false
        }
    }
}

