//
//  BottleViewController.swift
//  MyCellar
//
//  Created by Rachel Troy on 7/12/23.
//

import UIKit

class BottleViewController: UIViewController {

    @IBOutlet weak var bottleEntryTextView: UITextView!
    
    var bottle = BottleEntry()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        bottle.name = "Aubert"
        bottle.subname = "Lauren"
        bottle.country = "USA"
        bottle.region = "Napa"
        bottle.year = "2019"
        bottle.price = "100"
        bottle.rating = "98"
        bottle.purchaseDate = "2/24/2020"
        bottle.location = "AA1"
        
        bottleEntryTextView.text = bottle.description

    }
    

}
