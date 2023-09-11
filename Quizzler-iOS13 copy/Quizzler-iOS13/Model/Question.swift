//
//  Question.swift
//  Quizzler-iOS13
//
//  Created by Bella Perez on 2023-07-30.
//  Copyright © 2023 The App Brewery. All rights reserved.
//

import Foundation

struct Question {
    let text: String;
    let answer: String;
    
    init(q: String, a: String) {
        text = q;
        answer = a;
    }
    
}
