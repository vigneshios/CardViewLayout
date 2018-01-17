//
//  CardLayoutCell.swift
//  QuotesOnDesign
//
//  Created by Apple on 18/01/18.
//  Copyright © 2018 WowDreamApps. All rights reserved.
//

import UIKit

class CardLayoutCell: UICollectionViewCell {
   
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var descriptionLabel: UILabel!
    
    
    func configureCardCell(cardCell: UICollectionViewCell) {
      //creating a card
        cardCell.contentView.layer.cornerRadius = 4.0
        cardCell.contentView.layer.borderWidth = 1.0
        cardCell.contentView.layer.borderColor = UIColor.clear.cgColor
        cardCell.contentView.layer.masksToBounds = false
        cardCell.layer.shadowColor = UIColor.gray.cgColor
        cardCell.layer.shadowOffset = CGSize(width: 0, height: 1.0)
        cardCell.layer.shadowRadius = 6.0
        cardCell.layer.shadowOpacity = 1.0
        cardCell.layer.masksToBounds = false
        cardCell.layer.shadowPath = UIBezierPath(roundedRect: cardCell.bounds, cornerRadius: cardCell.contentView.layer.cornerRadius).cgPath
        
    }
    
    func configureModel(islandd: Island) {
        titleLabel.text = islandd.title
        descriptionLabel.text = islandd.description
        imageView.image = islandd.image
    }
    
}
