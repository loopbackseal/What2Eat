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
        if !brain.isInProcess() {
            self.performSegue(withIdentifier: "presentToResult", sender: self)
            // timer?
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1) {
                self.brain.setQuestionKey("")
                self.questionLabel.text = self.brain.getText()
            }
        } else {
            questionLabel.text = brain.getText()
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let resultViewController = segue.destination as? ResultViewController else { return }
        resultViewController.restaurantName = brain.getRestaurant()
    }
}

