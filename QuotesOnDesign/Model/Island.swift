//
//  Island.swift
//  QuotesOnDesign
//
//  Created by Apple on 18/01/18.
//  Copyright © 2018 WowDreamApps. All rights reserved.
//

import Foundation
import UIKit

struct Island {
    var image: UIImage?
    var title: String?
    var description: String?
    
    init(imageName: String, title: String, description: String) {
        self.title = title
        self.description = description
        if let image = UIImage(named: imageName) {
            self.image = image
        }else {
            self.image = UIImage(named: "default")
        }
    }
    
    
}
