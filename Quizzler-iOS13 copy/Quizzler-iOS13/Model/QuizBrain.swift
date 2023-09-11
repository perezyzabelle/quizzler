//
//  QuizBrain.swift
//  Quizzler-iOS13
//
//  Created by Bella Perez on 2023-07-31.
//  Copyright © 2023 The App Brewery. All rights reserved.
//

import Foundation

struct QuizBrain {
    let quiz = [
        Question(q: "The factory method pattern is a type of design pattern", a: "True"),
        Question(q: "It is recommend to get 8 hours of sleep.", a: "True"),
        Question(q: "Canada's national sport is Lacrosse", a: "True"),
        Question(q: "In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.", a: "True"),
        Question(q: "Taking out the trash will leave you smelling good.", a: "False"),
        Question(q: "It is illegal to pee in the Ocean in Portugal.", a: "True"),
        Question(q: "You can lead a cow down stairs but not up stairs.", a: "False"),
        Question(q: "Google was originally called 'Backrub'.", a: "True"),
        Question(q: "Buzz Aldrin's mother's maiden name was 'Moon'.", a: "True"),
        Question(q: "The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.", a: "False"),
        Question(q: "No piece of square dry paper can be folded in half more than 7 times.", a: "False"),
        Question(q: "Chocolate affects a dog's heart and nervous system; a few ounces are enough to kill a small dog.", a: "True")
        
        
    ]
    var questionNumber = 0
    var score = 0
    
    
    mutating func checkAnswer(_ userAnswer: String) -> Bool {
        if userAnswer == quiz[questionNumber].answer {
            score += 1
            return true;
        } else {
            return false;
        }
    }
    func getQuestionText() -> String {
        return quiz[questionNumber].text
    }
    func getProgress () -> Float {
        let progress = Float(questionNumber) / Float(quiz.count)
        return progress
        
    }
    func getScore() -> Int {
        return score;
    }
    
    mutating func nextQuestion () {
        if (questionNumber + 1 < quiz.count) {
            questionNumber += 1
            
        } else {
            questionNumber = 0;
            score = 0;
        }
        
    }
}



