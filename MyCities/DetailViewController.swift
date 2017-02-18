//
//  DetailViewController.swift
//  MyCities
//
//  Created by Carol_G on 2/17/17.
//  Copyright © 2017 Carol_G. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    var city : City?
    
    @IBOutlet weak var cityImage: UIImageView!
    @IBOutlet weak var cityName: UILabel!
    @IBOutlet weak var countryName: UILabel!
    @IBOutlet weak var smallDescription: UITextView!
    

    @IBAction func backButton(sender: UIBarButtonItem) {
        dismissViewControllerAnimated(true, completion: nil)
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        cityImage.image = city?.photo
        cityName.text = city?.city
        countryName.text = city?.country
        smallDescription.text = city?.description
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    

}
