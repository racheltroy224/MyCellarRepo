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
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "\(BottleCell.self)", for: indexPath) as? BottleCell
        else { fatalError("could not create bottle cell") }
        let bottle = bottles[indexPath.row]
        cell.nameLabel.text = bottle.name
        cell.subnameLabel.text = bottle.subname
        cell.yearLabel.text = bottle.year
        cell.locationLabel.text = bottle.location
        cell.bottleThumbnail.image = UIImage(systemName: "t.square")
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
    
    @IBAction func saveBottle(unwindSegue: UIStoryboardSegue) {
        guard let bottleViewController = unwindSegue.source as? BottleViewController,
              let bottle = bottleViewController.bottle else {
            return
        }
        bottles.append(bottle)
        tableView.reloadData()
    }
    
    @IBAction func cancelBottle(unwindSegue: UIStoryboardSegue) {
        //leave empty since it is a cancel action
    }

}
