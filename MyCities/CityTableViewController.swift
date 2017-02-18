//
//  CityTableViewController.swift
//  MyCities
//
//  Created by Carol_G on 2/17/17.
//  Copyright © 2017 Carol_G. All rights reserved.
//

import UIKit

class CityTableViewController: UITableViewController {
    
    var cities = [City]()

    override func viewDidLoad() {
        super.viewDidLoad()

        loadSampleCities()
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK: Actions
    
   @IBAction func unwindToCityList(sender: UIStoryboardSegue) {
        if let sourceViewController = sender.sourceViewController as? AddViewController, city = sourceViewController.city {
            
            let newIndexPath = NSIndexPath(forRow: cities.count, inSection: 0)
            
            cities.append(city)
            tableView.insertRowsAtIndexPaths([newIndexPath], withRowAnimation: .Automatic )
            
        }
    }
    
    
    
    //MARK: Private Methods
    
    private func loadSampleCities(){
        
        let photo1 = UIImage(named: "Paris")
        let photo2 = UIImage(named: "Madrid")
        let photo3 = UIImage(named: "Amsterdam")
        
        guard let city1 = City(city: "Paris", country: "France" , photo: photo1) else {
            fatalError("Unable to instantiate city1")
        }
        
        guard let city2 = City(city: "Madrid", country: "Spain" , photo: photo2) else {
            fatalError("Unable to instantiate city2")
        }
        
        guard let city3 = City(city: "Amsterdam", country: "Netherlands" , photo: photo3) else {
            fatalError("Unable to instantiate city3")
        }
        
        cities = [city1, city2, city3]
        
        
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return cities.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
       let cellIdentifier = "CityTableViewCell"
       guard let cell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier, forIndexPath: indexPath) as? CityTableViewCell  else {
            fatalError("The dequeued cell is not an instance of CityTableViewCell")
        }
        
        let city = cities[indexPath.row]

        cell.cityNameLabel.text = city.city
        cell.countryNameLabel.text = city.country
        cell.photoImageView.image = city.photo
        
        
        return cell
    }
    
    
    // MARK: - Navigation
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "DetailViewSegue" {
            if let indexPath = tableView.indexPathForSelectedRow {
                let destination = (segue.destinationViewController as? UINavigationController)?.topViewController as! DetailViewController
                destination.city = cities[indexPath.row]
            }
        }
    }

    

   }

