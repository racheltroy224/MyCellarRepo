//
//  CellarTypeViewController.swift
//  MyCellar
//
//  Created by Rachel Troy on 7/14/23.
//

import UIKit

class CellarTypeViewController: UIViewController {

    let cellar = CellarType()
    
    @IBAction func changeCellarType(_ sender: UISegmentedControl) {
        if let unitType = Cellar.UnitType(rawValue: sender.selectedSegmentIndex) {
            cellar.unitType = unitType
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
