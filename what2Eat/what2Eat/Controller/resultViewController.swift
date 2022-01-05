//
//  resultViewController.swift
//  what2Eat
//
//  Created by Young Soo Hwang on 2022/01/05.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var restartButton: UIButton!
    @IBOutlet weak var resultLabel: UILabel!
    
    var restaurantName = ""
    
    func initSetup() {
        resultLabel.lineBreakMode = .byWordWrapping
        resultLabel.numberOfLines = 0
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        initSetup()
        resultLabel.text = restaurantName
    }
    
    @IBAction func restartButtonPressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
}
