//
//  CityModel.swift
//  MyCities
//
//  Created by Carol_G on 2/16/17.
//  Copyright © 2017 Carol_G. All rights reserved.
//

import Foundation
import UIKit


class City {
    
    var city: String
    var country: String
    var photo: UIImage?
    var description: String
    
    
    init?(city: String, country: String, photo: UIImage?, description: String) {
        
        if city.isEmpty || country.isEmpty {
            return nil
        }
        
        self.country = country
        self.city = city
        self.photo = photo
        self.description = description
    }
    
}
