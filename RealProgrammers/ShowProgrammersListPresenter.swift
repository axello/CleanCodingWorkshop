//
//  ShowProgrammersListPresenter.swift
//  RealProgrammers
//
//  Created by Axel Roest on 14/11/16.
//  Copyright © 2016 CocoaHeadsNL. All rights reserved.
//

import Foundation

class ShowProgrammersListPresenter  {
    fileprivate var programmers = [ProgrammerDisplayData]()
    let useCase : ShowProgrammersListUseCase
    
    init (useCase:ShowProgrammersListUseCase) {
        self.useCase = useCase
    }
    
    func viewCreated() {
        // tell usecase to run
        useCase.showProgrammers()
    }
    
    func programmersCount() -> Int {
        return programmers.count
    }
    
    func configure(view:ProgrammerCellView, at:Int) {
        view.display(name: programmers[at].name)
        view.display(dateString: programmers[at].interviewDate.relativeDateString())
        view.display(favorite: programmers[at].favorite)
    }
}

// functions for business logic
extension ShowProgrammersListPresenter: ShowProgrammersListPresentation {
    func present(programmers: [ProgrammerDisplayData]) {
        self.programmers = programmers
    }
}
