//
//  ItemModel.swift
//  OrderMe
//
//  Created by Oleg Ten on 4/24/20.
//  Copyright © 2020 Oleg Ten. All rights reserved.
//

import UIKit

struct Item: Codable{
    let logoURL: String
    let name: String
    let addres: String
    let tel: String
    
    enum CodingKeys: String, CodingKey {
           case logoURL
           case name
           case addres
           case tel
          
       }
}



   
