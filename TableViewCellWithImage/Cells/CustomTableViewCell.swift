//
//  CustomTableViewCell.swift
//  TableViewCellWithImage
//
//  Created by Mac on 01/09/21.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    @IBOutlet weak var nameLabel : UILabel!
    @IBOutlet weak var contactLabel : UILabel!
    @IBOutlet weak var img : UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
