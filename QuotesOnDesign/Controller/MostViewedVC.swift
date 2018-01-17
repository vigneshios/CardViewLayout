//
//  ViewController.swift
//  QuotesOnDesign
//
//  Created by Apple on 17/01/18.
//  Copyright © 2018 WowDreamApps. All rights reserved.
//

import UIKit

class MostViewedVC: UIViewController {

    @IBOutlet weak var cardsCollectionView: UICollectionView!
    var island = [Island]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("Am in quotesVC")
        
        cardsCollectionView.dataSource = self
        cardsCollectionView.delegate = self
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
         print("Am in quotesViewWillAppearVC")
        self.island.append(Island(imageName: "1.jpg", title: "Hawaii Island", description: "Hawaii is world-renowned for its beautiful beaches.The islands have every type of beach imaginable: white, black, green and red sand beaches;romantic bays and beach parks for the family; popular shorelines for people watching and off-the-beaten-path sands untouched by development."))
       
        self.island.append(Island(imageName: "2.jpg", title: "Maldives", description: "Housed at a small, yet cozy island in North Ari Atoll, Veligandu has got beautiful beaches around. These are the best beaches in Maldives that are not only a haven of peace, but also quite cheaper in comparison to other island resorts with private beaches."))
        
       
       
    }
}

extension MostViewedVC : UICollectionViewDataSource , UICollectionViewDelegate {
    func numberOfSections(in collectionView: UICollectionView) -> Int {
         return 1
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return island.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cardCell", for: indexPath) as! CardLayoutCell
        cell.configureCardCell(cardCell: cell)
        let iland = island[indexPath.item]
        cell.configureModel(islandd: iland)
        return cell
    }
    
    
}
