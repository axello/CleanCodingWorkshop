//
//  ProgrammerTableViewCell.swift
//  RealProgrammers
//
//  Created by Axel Roest on 14/11/16.
//  Copyright © 2016 CocoaHeadsNL. All rights reserved.
//

import UIKit

class ProgrammerTableViewCell: UITableViewCell {

}

extension ProgrammerTableViewCell: ProgrammerCellView {
    func display(name : String) {
        self.textLabel?.text = name
    }
    
    func display(dateString : String) {
        
    }
    
    func display(favorite : Bool) {
        if favorite {
            self.backgroundColor = UIColor.green
        } else {
            self.backgroundColor = UIColor.red
        }
    }
    
}
