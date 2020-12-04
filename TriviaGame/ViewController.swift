//
//  ViewController.swift
//  TriviaGame
//
//  Created by Page Kallop on 12/3/20.
//

import UIKit

class ViewController: UIViewController {

    
    var quizBrain = QuizBrain()
    
    @IBOutlet weak var scoreLabel: UILabel!
    
    @IBOutlet weak var questionLabel: UILabel!
    
    @IBOutlet weak var choiceOne: UIButton!
    
    @IBOutlet weak var choiceTwo: UIButton!
    
    @IBOutlet weak var choiceThree: UIButton!
    
    @IBOutlet weak var progressLabel: UIProgressView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        choiceOne.layer.cornerRadius = 5
        choiceOne.layer.masksToBounds = true

       
        choiceTwo.layer.cornerRadius = 5
        choiceTwo.layer.masksToBounds = true
        
        
        choiceThree.layer.cornerRadius = 5
        choiceThree.layer.masksToBounds = true
        
        
        updateUI()
    }
    
    
    @IBAction func answerPressed(_ sender: UIButton) {
        
        let userAnswer = sender.currentTitle!
        let userGotItRight = quizBrain.getRightAnswer(userAnswer: userAnswer)
        
        if userAnswer == userGotItRight {
            sender.backgroundColor = UIColor.green
        } else {
            sender.backgroundColor = UIColor.red
        }
        
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
        
        quizBrain.nextQuestion()
    
    }
    
    @objc func updateUI(){
        questionLabel.text = quizBrain.getQuestion()
        
        choiceOne.setTitle(quizBrain.getChoices()[0], for: .normal)
        choiceTwo.setTitle(quizBrain.getChoices()[1], for: .normal)
        choiceThree.setTitle(quizBrain.getChoices()[2], for: .normal)
        
        choiceOne.layer.backgroundColor = UIColor.purple.cgColor
        choiceTwo.layer.backgroundColor = UIColor.purple.cgColor
        choiceThree.layer.backgroundColor = UIColor.purple.cgColor
        
        
        
    }
    
    


}

