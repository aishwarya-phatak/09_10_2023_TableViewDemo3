//
//  SecondViewController.swift
//  09_10_2023_TableViewDemo3
//
//  Created by Vishal Jagtap on 13/12/23.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var studentNameLabel: UILabel!
    var studentName : String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        navigationItem.hidesBackButton = true
        self.studentNameLabel.text = studentName!
    }
}
