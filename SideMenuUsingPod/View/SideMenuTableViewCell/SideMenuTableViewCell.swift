//
//  SideMenuTableViewCell.swift
//  SideMenuUsingPod
//
//  Created by Saranya Manoj on 05/04/23.
//

import UIKit

class SideMenuTableViewCell: UITableViewCell {

    @IBOutlet weak var sidemenuName: UILabel!
    @IBOutlet weak var sidemenuImage: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
