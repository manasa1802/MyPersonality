//
//  ResultsBrain.swift
//  MyPersonality
//
//  Created by manasa on 1/6/22.
//  Copyright © 2022 manasa. All rights reserved.
//

import Foundation

struct ResultsBrain {
    var Score: Int
    
    var results = [
    ResultsModel(name: "KIM Kardashian", desc: "You look absolutely gorgeous. You love to be the center of attraction. You live to chase the glamorous lifestyle and are seen as icon of luxury and fashion."),
    ResultsModel(name: "Beyonce", desc: "You are good at everything you do and also very smart and beautiful. People are jealous of you because you are amazing. You care about other people and also want to be an inspiration to future generations."),
    ResultsModel(name: "Taylor swift", desc: "You are open and independent. You can’t imagine life without music. You are brave and you never listen to negative people.you won’t let other people slow you down."),
    ResultsModel(name: "Lady GAGA", desc: "Your are very creative and determined. You don’t care what other people think, this is absolutely right. You are an inspiration to many people around you and you help anyone in need. You know how to party and sometimes feel lonely, but the next day you feel top of the world."),
    ResultsModel(name: "Katy Perry", desc: "You are sassy and quick. Always pick yourself up when you fall and do things your own way. You are not afraid to try new things.")]
    
    func getInformationFor(score: Int) -> ResultsModel{
        switch score {
        case 100...160:
            print("100-160")
            return results[0]
//            return name and description
        case 170...230:
            print("170-230")
            return results[1]
        case 240...290:
            print("240-290")
            return results[2]
        case 300...350:
            print("300-350")
            return results[3]
        case 360...400:
            print("360-400")
            return results[4]
        default:
            print("Nothing")
            return results[4]
        }
    }
}
