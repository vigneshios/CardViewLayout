//
//  QuotesCardVC.swift
//  QuotesOnDesign
//
//  Created by Apple on 17/01/18.
//  Copyright © 2018 WowDreamApps. All rights reserved.
//

import UIKit

class FavoriteCardVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print("Am in quotesCardVC")
        let urlString = "http://quotesondesign.com/wp-json/posts?filter[orderby]=rand&filter[posts_per_page]=30"
        guard let url = URL(string: urlString) else {return}
        URLSession.shared.dataTask(with: url) { (data, response, err) in
            if let err = err {
                print(err.localizedDescription)
            }
            if let data = data {
                do {
                    let json = try JSONSerialization.jsonObject(with: data, options: .mutableContainers)
                    print(json)
                }catch {
                    print(error)
                }
            }
        }.resume()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("Am in quotescardViewWillAppearVC")
    }
   

}
