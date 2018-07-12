//
//  NumberCell.swift
//  binaryCounter
//
//  Created by J on 7/11/2018.
//  Copyright © 2018 Jman. All rights reserved.
//
// ========= NUMBER CELL CONTROLLER ==========
import UIKit

class NumberCell: UITableViewCell {

    var controller: UIViewController?
    
    @IBOutlet weak var powerLabel: UILabel!
    
    
    // MINUS
    @IBAction func minusPressed(_ sender: UIButton) {
        if let vc = controller as? ViewController{
            vc.sum -= Int(powerLabel.text!)!
            print(vc.sum)
            vc.sumTotalLabel?.text = "\(vc.sum)"
        }
    }
    
    // ADD
    @IBAction func plusPressed(_ sender: UIButton) {
        if let vc = controller as? ViewController{
            vc.sum += Int(powerLabel.text!)!
            print(vc.sum)
            vc.sumTotalLabel?.text = "\(vc.sum)"
        }
    }
    
    // NUMBER
    @IBOutlet weak var numberLabel: UILabel!
    
    
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
