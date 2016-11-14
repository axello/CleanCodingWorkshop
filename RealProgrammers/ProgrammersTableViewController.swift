//
//  ProgrammersTableViewController.swift
//  RealProgrammers
//
//  Created by Axel Roest on 14/11/16.
//  Copyright © 2016 CocoaHeadsNL. All rights reserved.
//

import UIKit

class ProgrammersTableViewController: UITableViewController {
    var presenter : ShowProgrammersListPresenter?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter?.viewCreated()
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return presenter?.programmersCount() ?? 0
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "programmerCell", for:indexPath) as! ProgrammerTableViewCell
        presenter?.configure(view:cell, at:indexPath.row)
        return cell
    }
}


