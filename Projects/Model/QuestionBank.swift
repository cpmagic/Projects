//
//  QuestionBank.swift
//  Projects
//
//  Created by Thomas Hill on 9/9/18.
//  Copyright © 2018 Computer Magic. All rights reserved.
//

import Foundation

class QuestionBank {
    
    class QuestionBank {
        var list = [Question]()
        init() {
            list.append(Question(questionText: "The Sun is approximately 93 Million miles from the Earth.", questionExplanation: "The Sun is at an average distance of about 93,000,000 miles away from Earth. It is so far away that light from the Sun, traveling at a speed of 186,000 miles per second, takes about 8 minutes to reach us. The Earth does not travel around the Sun in a perfect circle. This means that the distance between Earth and the Sun changes during a year. This distance also defines the AU or Astronomical Unit. The Earth is roughly 1 AU from the Sun.", trueFalse: true, questionImage: "SunDistance"))
            list.append(Question(questionText: "The Sun is mostly made of carbon.", questionExplanation: "The sun is mostly composed of the elements Hydrogen (H) and Helium (He). By mass the composition of the sun is 75 percent Hydrogen and 25 percent Helium. Various metals make up less than 0.1 percent of the mass of the sun.", trueFalse: false, questionImage: "Sun"))
        }
    }
}
