//
//  ViewController.swift
//  flashcards_v1
//
//  Created by STUDENT-SP22 on 3/24/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var AnswerBtn: UILabel!
    @IBOutlet weak var Questionv1: UILabel!
    var questions: [String] = []
    var answers: [String] = []
    var cardIndex = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        buildCards()
        Questionv1.text = questions[cardIndex]
        AnswerBtn.text = "???"
    }

    func buildCards() {
        questions.append("THANK YOU For testing my app")
        answers.append("follow me on LinkedIn")
        questions.append("Which city is the capital of Japan?")
        answers.append("Tokyo")
        questions.append("2 to the power of 10 = ?")
        answers.append("1024")
        questions.append("When was the PVAMU establishment")
        answers.append("1876")
    }
    
    @IBAction func NextQ(_ sender: Any) {
        cardIndex += 1
        if cardIndex == questions.count {
            cardIndex = 0
        }
        Questionv1.text = questions[cardIndex]
        AnswerBtn.text = "???"
    }
    
    @IBAction func ShowA(_ sender: Any) {
        AnswerBtn.text = answers[cardIndex]
    }
}

