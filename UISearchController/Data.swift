//
//  Data.swift
//  UISearchController
//
//  Created by imac on 5/5/17.
//  Copyright © 2017 imac. All rights reserved.
//

import Foundation
import UIKit

class Data {
    var nameCatory : [Candy]
    
    init(nameCanndy : [Candy]) {
        self.nameCatory = nameCanndy
    }
    
    class func listCandy() -> [Data] {
        return [self.candy1(), self.candy2()]
    }
    
    class func candy1() -> Data {
        var listCanndy = [Candy]()
        listCanndy.append(Candy(categoryCandy: "Chocolate", nameCandy :"Chocolate Bar", imageName: "ChocolateBar.png" ))
        listCanndy.append(Candy(categoryCandy: "Chocolate", nameCandy :"Chocolate Chip", imageName:"ChocolateChip.png"))
        listCanndy.append(Candy(categoryCandy: "Chocolate", nameCandy :"Dark Chocolate", imageName: "DarkChocolate.png" ))
        listCanndy.append(Candy(categoryCandy: "Hard", nameCandy :"Lollipop", imageName: "Lollipop.png" ))
        listCanndy.append(Candy(categoryCandy: "Hard", nameCandy :"Candy Cane", imageName: "CandyCane.png" ))
        listCanndy.append(Candy(categoryCandy: "Hard", nameCandy :"Jaw Breaker", imageName: "JawBreaker.png" ))
        listCanndy.append(Candy(categoryCandy: "Other", nameCandy :"Caramel", imageName: "Caramel.png" ))
        listCanndy.append(Candy(categoryCandy: "Other", nameCandy :"Sour Chew", imageName: "SourChew.png" ))
        listCanndy.append(Candy(categoryCandy: "Other", nameCandy :"Gumi Bear", imageName: "GumiBear.png" ))
        return Data(nameCanndy : listCanndy)
    }
    
    class func candy2() -> Data {
        var listCanndy = [Candy]()
        listCanndy.append(Candy(categoryCandy: "Apple", nameCandy :"Samsung", imageName: "ChocolateBar.png" ))
        return Data(nameCanndy : listCanndy)
    }

}
