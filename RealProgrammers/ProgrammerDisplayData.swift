//
//  ProgrammerDisplayData.swift
//  RealProgrammers
//
//  Created by Axel Roest on 14/11/16.
//  Copyright © 2016 CocoaHeadsNL. All rights reserved.
//

import Foundation

struct ProgrammerDisplayData {
    var name : String
    var interviewDate : Date
    var favorite : Bool

    init(programmer: Programmer) {
        name = programmer.name
        interviewDate = programmer.interviewDate
        favorite = programmer.favorite
    }
}
