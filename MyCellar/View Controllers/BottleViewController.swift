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
    var isNewBottle = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bottleEntryTextView.text = bottle?.description
        
        if isNewBottle {
            let saveButton = UIBarButtonItem(barButtonSystemItem: .save, target: self, action: #selector(saveBottle))
            let cancelButton = UIBarButtonItem(barButtonSystemItem: .cancel, target: self, action: #selector(cancelBottle))
            navigationItem.rightBarButtonItem = saveButton
            navigationItem.leftBarButtonItem = cancelButton
        }

    }
    
    
    @objc func cancelBottle() {
        performSegue(withIdentifier: "CancelBottle", sender: nil)
    }
    
    @objc func saveBottle() {
        performSegue(withIdentifier: "SaveBottle", sender: nil)
    }
    
}
