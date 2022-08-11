//
//  FruitTableViewCell.swift
//  My First App
//
//  Created by Saifur Rehman on 10/08/22.
//

import UIKit

class FruitTableViewCell: UITableViewCell {
    // MARK: - Variable
    @IBOutlet weak var fruitName: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
