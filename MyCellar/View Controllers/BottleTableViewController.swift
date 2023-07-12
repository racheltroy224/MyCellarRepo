//
//  BottleTableViewController.swift
//  MyCellar
//
//  Created by Rachel Troy on 7/12/23.
//

import UIKit

class BottleTableViewController: UITableViewController {

    var bottles = [BottleEntry]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let bottle1 = BottleEntry()
        let bottle2 = BottleEntry()
        let bottle3 = BottleEntry()
        
        bottle1.name = "Aubert"
        bottle1.subname = "Lauren"
        bottle1.country = "USA"
        bottle1.region = "Napa"
        bottle1.year = "2019"
        bottle1.price = "100"
        bottle1.rating = "98"
        bottle1.purchaseDate = "2/24/2020"
        bottle1.location = "AA1"
        
        bottle2.name = "Aubert"
        bottle2.subname = "Lauren"
        bottle2.country = "USA"
        bottle2.region = "Napa"
        bottle2.year = "2019"
        bottle2.price = "100"
        bottle2.rating = "98"
        bottle2.purchaseDate = "2/24/2020"
        bottle2.location = "AA2"
        
        bottle3.name = "Aubert"
        bottle3.subname = "Lauren"
        bottle3.country = "USA"
        bottle3.region = "Napa"
        bottle3.year = "2019"
        bottle3.price = "100"
        bottle3.rating = "98"
        bottle3.purchaseDate = "2/24/2020"
        bottle3.location = "AA3"

        bottles = [bottle1, bottle2, bottle3]
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        bottles.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "BottleCell", for: indexPath)
        let theBottle = bottles[indexPath.row]
        cell.textLabel?.text = "\(theBottle.name) \(theBottle.subname) \(theBottle.location)" //mess around with this see if we can change label
        cell.imageView?.image = UIImage(named: "BadgeBanner") //see if we can get red, white, champagne
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let bottle = bottles[indexPath.row]
        performSegue(withIdentifier: "ShowBottle", sender: bottle)
      }

      override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowBottle" {
          guard let bottleViewController = segue.destination as? BottleViewController,
                let bottle = sender as? BottleEntry else {
            return
          }
          bottleViewController.bottle = bottle
        }
      }

}
