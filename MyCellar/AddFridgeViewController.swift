//
//  AddFridgeViewController.swift
//  MyCellar
//
//  Created by Rachel Troy on 7/14/23.
//

import UIKit

class AddFridgeViewController: UIViewController {

    @IBOutlet weak var rowsLabel: UILabel!
    @IBOutlet weak var rowStepper: UIStepper!
    @IBOutlet weak var columnsLabel: UILabel!
    @IBOutlet weak var columnStepper: UIStepper!
    @IBOutlet weak var capacityLabel: UILabel!
    @IBOutlet weak var capacityStepper: UIStepper!
    
    let fridge = Fridge()
    
    @IBAction func changeRow(_ sender: UIStepper) {
        rowsLabel.text = "Number of Rows: \(Int(sender.value))"
        fridge.rows = Int(sender.value)
    }
    
    @IBAction func changeColumn(_ sender: UIStepper) {
        columnsLabel.text = "Number of Columns: \(Int(sender.value))"
        fridge.columns = Int(sender.value)
    }
    
    @IBAction func changeCapacity(_ sender: UIStepper) {
        capacityLabel.text = "Total Capacity: \(Int(sender.value))"
        fridge.capacity = Int(sender.value)
    }
    
    @IBAction func generateNewFridge(_ sender: Any) {
        print(fridge)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    

    

}
