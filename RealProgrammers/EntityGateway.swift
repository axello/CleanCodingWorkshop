//
//  EntityGateway.swift
//  RealProgrammers
//
//  Created by Axel Roest on 14/11/16.
//  Copyright © 2016 CocoaHeadsNL. All rights reserved.
//

import Foundation

protocol EntityGateway {
    func fetchProgrammers() -> [Programmer]
}
