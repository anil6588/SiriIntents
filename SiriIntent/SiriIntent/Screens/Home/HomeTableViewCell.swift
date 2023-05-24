//
//  HomeTableViewCell.swift
//  SiriIntent
//
//  Created by Anil Kothari on 24/05/23.
//

import Foundation
import UIKit
import SDWebImage

class HomeTableViewCell: UITableViewCell {
    
    @IBOutlet private weak var nameLabel: UILabel!
    @IBOutlet private weak var priceLabel: UILabel!
    @IBOutlet private weak var iconImage: UIImageView!

    func set(name: String?, urlString: String?, price: PriceInfo?) {
        nameLabel.text = name
        priceLabel.text = price?.currentPrice?.priceDisplay
        print(urlString)
        iconImage.sd_setImage(with: URL(string: urlString ?? ""))
    }
    
}
