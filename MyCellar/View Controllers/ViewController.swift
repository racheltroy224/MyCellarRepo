//
//  ViewController.swift
//  MyCellar
//
//  Created by Rachel Troy on 7/5/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var subnameTextField: UITextField!
    @IBOutlet weak var countryTextField: UITextField!
    @IBOutlet weak var regionTextField: UITextField!
    @IBOutlet weak var yearTextField: UITextField!
    @IBOutlet weak var priceTextField: UITextField!
    @IBOutlet weak var ratingTextField: UITextField!
    @IBOutlet weak var purchaseDateTextField: UITextField!
    @IBOutlet weak var locationTextField: UITextField!
    
    let bottle = BottleEntry()
    
    @IBAction func generateWineDescription(_ sender: UIButton) {
        updateBottle()
        
        if bottle.isValid() {
            performSegue(withIdentifier: "Bottle", sender: nil)
        } else {
            let alert = UIAlertController(title: "Invalid Story Prompt", message: "Please fill out all of the fields", preferredStyle: .alert)
                  let action = UIAlertAction(title: "OK", style: .default, handler: { action in })
                  alert.addAction(action)
                  present(alert, animated:  true)
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func updateBottle() {
        bottle.name = nameTextField.text ?? ""
        bottle.subname = subnameTextField.text ?? ""
        bottle.country = countryTextField.text ?? ""
        bottle.region = regionTextField.text ?? ""
        bottle.year = yearTextField.text ?? ""
        bottle.price = priceTextField.text ?? ""
        bottle.rating = ratingTextField.text ?? ""
        bottle.purchaseDate = purchaseDateTextField.text ?? ""
        bottle.location = locationTextField.text ?? ""
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "Bottle" {
            guard let BottleViewController = segue.destination as? BottleViewController else {
                return
            }
            BottleViewController.bottle = bottle
            BottleViewController.isNewBottle = true
        }
    }

}

extension ViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        updateBottle()
        
        //indicates that we want the text field to use its default behavior
        return true
    }
}

