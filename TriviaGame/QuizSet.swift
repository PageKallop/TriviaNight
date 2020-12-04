//
//  QuizSet.swift
//  TriviaGame
//
//  Created by Page Kallop on 12/3/20.
//

import Foundation


struct Question {
    var text: String
    var choice: [String]
    var correctAnswer: String
    
    
    init (q: String, a: [String], correctAnswer: String){
        self.text = q
        self.choice = a
        self.correctAnswer = correctAnswer
    }
    
}
