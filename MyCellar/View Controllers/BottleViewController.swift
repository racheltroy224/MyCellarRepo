//
//  BottleViewController.swift
//  MyCellar
//
//  Created by Rachel Troy on 7/12/23.
//

import UIKit

class BottleViewController: UIViewController {

    @IBOutlet weak var bottleEntryTextView: UITextView!
    
    var bottle: BottleEntry?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bottleEntryTextView.text = bottle?.description

    }
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.setNavigationBarHidden(true, animated: animated)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        navigationController?.setNavigationBarHidden(false, animated: animated)
    }
    

}
