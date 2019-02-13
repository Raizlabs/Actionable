//
//  TableViewController.swift
//  Actionable
//
//  Created by Connor Neville on 02/13/2019.
//  Copyright (c) 2019 Rightpoint. All rights reserved.
//

import Actionable
import UIKit

class TableViewController: UITableViewController, Actionable {

    weak var delegate: Delegate?

    enum Action {
        case foo
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(TableViewCell.self,
                           forCellReuseIdentifier: TableViewCell.reuseID)
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(
            withIdentifier: TableViewCell.reuseID, for: indexPath)
            as! TableViewCell
        return cell
    }

}

