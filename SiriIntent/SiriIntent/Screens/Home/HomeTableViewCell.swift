//
//  HomeTableViewCell.swift
//  SiriIntent
//
//  Created by Anil Kothari on 24/05/23.
//

import Foundation
import UIKit

class HomeTableViewCell: UITableViewCell {
    
    @IBOutlet private weak var nameLabel: UILabel!
    
    func setName(_ name: String?) {
        nameLabel.text = name
    }
    
}
