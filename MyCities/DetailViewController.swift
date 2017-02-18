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
    @IBOutlet weak var smallDescription: UILabel!

    
    var photo = UIImage(named: "Paris")
    var cityNameString = ""
    var country = ""
    //var descrip = ""
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        cityImage.image = photo
        cityName.text = city?.city
        countryName.text = city?.country
        //smallDescription.text = descrip
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    

}
