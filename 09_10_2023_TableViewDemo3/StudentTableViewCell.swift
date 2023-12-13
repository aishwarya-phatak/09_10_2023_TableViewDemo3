//
//  StudentTableViewCell.swift
//  09_10_2023_TableViewDemo3
//
//  Created by Vishal Jagtap on 13/12/23.
//

import UIKit

class StudentTableViewCell: UITableViewCell {

    @IBOutlet weak var studentNameLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
}
