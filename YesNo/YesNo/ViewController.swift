//
//  ViewController.swift
//  YesNo
//
//  Created by Марина Журавлева on 10.07.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var answerLabel: UILabel!
    
    @IBOutlet var answerButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        answerButton.layer.cornerRadius = 10
    }
    
    @IBAction func answerButtonAction(_ sender: Any) {
        let answer = Bool.random()
        answerLabel.text = ""
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            self.answerLabel.text = answer ? "YES" : "NO"
        }
    }

}


