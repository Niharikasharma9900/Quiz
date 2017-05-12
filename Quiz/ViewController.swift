//
//  ViewController.swift
//  Quiz
//
//  Created by Niharika Sharma on 2017-05-11.
//  Copyright © 2017 Niharika Sharma. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let questions: [String] = [
        "What is 7+7?",
        "What is the capital of Vermont?",
        "What is cognac made from?"
    ]
    let answers: [String] = [
        "14",
        "Montpelier",
        "Grapes" ]
    
    var currentQuestionIndex: Int = 0

    @IBOutlet weak var question: UILabel!
    
    @IBOutlet weak var answer: UILabel!
    
    @IBAction func nextquestion(_ sender: Any) {
        currentQuestionIndex += 1
        if currentQuestionIndex == questions.count {
            currentQuestionIndex = 0
        }
        let question1: String = questions[currentQuestionIndex]
        question.text = question1
        answer.text = "???"
    }
    
    @IBAction func showanswer(_ sender: Any) {
        let answer1: String = answers[currentQuestionIndex]
        answer.text = answer1
    }
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
         question.text = questions[currentQuestionIndex]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

