//
//  QuizBrain.swift
//  Quizzler-iOS13
//
//  Created by Irianda on 19/11/20.
//  Copyright © 2020 The App Brewery. All rights reserved.
//

import Foundation

struct QuizBrain{
    let quiz  = [
        Question(text: "Apakah bumi bulat?" , answer: "True"),
        Question(text: "Apakah bumi segitiga?" , answer: "True"),
        Question(text: "Apakah bumi datar?" , answer: "False"),
        Question(text: "Apakah bumi layang?" , answer: "True")
    ]
    
    
    var questionNumber = 0
    var score = 0
    
    func getQuestionText() -> String {
        return quiz[questionNumber].text
    }
    
    func getProgress() -> Float {
        return Float(questionNumber + 1) / Float(quiz.count)
    }
    
    func getScore() -> Int {
        return score
    }
    
   mutating func nextQuestion() {
        if questionNumber + 1 < quiz.count {
            questionNumber += 1
        }else{
            questionNumber = 0
        }
    }
    
    mutating func checkAnswer(userAnswer: String) -> Bool {
        if userAnswer ==  quiz[questionNumber].answer {
            score += 10
            return true
        }else{
            return false
        }
    }
    
}
