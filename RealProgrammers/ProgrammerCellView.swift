//
//  ProgrammerCellView.swift
//  RealProgrammers
//
//  Created by Axel Roest on 14/11/16.
//  Copyright © 2016 CocoaHeadsNL. All rights reserved.
//

import Foundation

protocol ProgrammerCellView {
    func display(name : String)
    func display(dateString : String)
    func display(favorite : Bool)
}
