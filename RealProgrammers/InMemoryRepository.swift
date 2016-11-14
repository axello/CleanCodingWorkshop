//
//  InMemoryRepository.swift
//  RealProgrammers
//
//  Created by Axel Roest on 14/11/16.
//  Copyright © 2016 CocoaHeadsNL. All rights reserved.
//

import Foundation

class InMemoryRepository: EntityGateway {
    var programmers = [
        Programmer(name:"Jorge D.Ortiz", emacs:1, caffeine:3, rating:9,interviewDate:Date(), favorite:false),
        Programmer(name:"Axel Roest", emacs:0, caffeine:3, rating:9,interviewDate:Date(), favorite:false),
        Programmer(name:"Steve", emacs:2, caffeine:3, rating:9,interviewDate:Date(), favorite:true)
    ]
    
    func fetchProgrammers() -> [Programmer] {
        return programmers
    }
}
