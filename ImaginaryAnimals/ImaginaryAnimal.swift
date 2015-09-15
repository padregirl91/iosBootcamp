//
//  ImaginaryAnimal.swift
//  ImaginaryAnimals
//
//  Created by James Taylor on 9/14/15.
//  Copyright © 2015 James Taylor. All rights reserved.
//

import Foundation

// good to start with structs vs. classes

struct ImaginaryAnimal {
    
    var name: String
    var height: Float
    var location: String
    var dateLastSeen: String
    var imageUrl: NSURL?
    
    init?(fromJSON json:AnyObject) {
        
        guard let json = json as? [String:AnyObject] else {
            return nil
        }
        
        name = json["name"] as! String
        height = json["height"] as! Float
        location = json["location"] as! String
        dateLastSeen = json["dateLastSeen"] as! String
        
        if let imageURLString = json["imageURL"] as? String {
            imageUrl = NSURL(string: imageURLString)
        }
        
    }
}

