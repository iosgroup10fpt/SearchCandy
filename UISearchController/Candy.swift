//
//  Candy.swift
//  UISearchController
//
//  Created by imac on 5/5/17.
//  Copyright © 2017 imac. All rights reserved.
//

import Foundation
import UIKit

class Candy{
    var categoryCandy : String
    var nameCandy : String
    var image : String
    
    init(categoryCandy : String , nameCandy : String , imageName : String) {
        self.categoryCandy = categoryCandy
        self.nameCandy = nameCandy
//        if let img = UIImage(named: imageName) {
//            image = img
//        } else {
//            image = UIImage(named: "CandyCane")!
//        }
        self.image = imageName
    }
}
