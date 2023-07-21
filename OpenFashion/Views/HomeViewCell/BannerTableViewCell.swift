//
//  BannerTableViewCell.swift
//  OpenFashion
//
//  Created by Amr El-Fiqi on 21/07/2023.
//

import UIKit

class BannerTableViewCell: UITableViewCell {
    
    // MARK: - IBOutlets
    
    @IBOutlet weak var bannerImageView: UIImageView!
    
    // MARK: -  Class Methods
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        bannerImageView.contentMode = .scaleAspectFit
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
