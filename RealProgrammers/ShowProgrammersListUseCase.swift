//
//  ShowProgrammersListUseCase.swift
//  RealProgrammers
//
//  Created by Axel Roest on 14/11/16.
//  Copyright © 2016 CocoaHeadsNL. All rights reserved.
//

import Foundation

class ShowProgrammersListUseCase {
    let entityGateway : EntityGateway
    // because of initialisation dependencies, we are going to set presenter later
    var presenter : ShowProgrammersListPresentation?
    
    init(entityGateway: EntityGateway) {
        self.entityGateway = entityGateway
    }
    
    func showProgrammers() {
        // Extract: obtain programmer data from entity gateway
        let programmers = entityGateway.fetchProgrammers()
        
        // Transform: modify stuff, filter data into different structure
        let programmersDisplayData = programmers.map{ProgrammerDisplayData(programmer:$0) }
        
        // Load: pass data on to presenter
        presenter?.present(programmers: programmersDisplayData)
    }
}




