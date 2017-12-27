//
//  Item.swift
//  Alchemie
//
//  Created by Steven Kanceruk on 12/22/17.
//  Copyright © 2017 steve. All rights reserved.
//

import Foundation
import UIKit

class Item: NSObject {
    
    var image:UIImage?
    var imgPointer:String?
    var imgUUID:String?
    var caption:String?
    var parentSubOptionID:String?
    
    override init () {
        image = nil
        imgPointer = ""
        imgUUID = NSUUID().uuidString
        caption = ""
        parentSubOptionID = ""
    }
}
