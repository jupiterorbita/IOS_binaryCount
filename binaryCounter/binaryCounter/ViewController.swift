//
//  ViewController.swift
//  binaryCounter
//
//  Created by J on 7/11/2018.
//  Copyright © 2018 Jman. All rights reserved.
//
// ========= MAIN VIEW CONTROLLER =========
import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var sumTotalLabel: UILabel!
    
    var sum: Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }
}

extension UIViewController: UITableViewDelegate, UITableViewDataSource {
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 16
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "NumberCell", for: indexPath) as! NumberCell
        cell.controller = self

        cell.numberLabel.text = "\(pow(10, indexPath.row))"
        return cell
    }
}

