//
//  Question.swift
//  Projects
//
//  Created by Thomas Hill on 9/9/18.
//  Copyright © 2018 Computer Magic. All rights reserved.
//  

import Foundation

class Question {
    var question: String
    var explanation: String
    var correctAnswer: Bool
    var usedImage: String
    
    init(questionText: String, questionExplanation: String, trueFalse: Bool, questionImage: String) {
        question = questionText
        explanation = questionExplanation
        correctAnswer = trueFalse
        usedImage = questionImage
    }
    
}
