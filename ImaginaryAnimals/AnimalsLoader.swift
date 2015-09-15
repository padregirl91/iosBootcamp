//
//  AnimalsLoader.swift
//  ImaginaryAnimals
//
//  Created by James Taylor on 9/14/15.
//  Copyright © 2015 James Taylor. All rights reserved.
//

import Foundation

struct AnimalsLoader {
    func loadAnimals() -> [ImaginaryAnimal] {
        let mermaid = ImaginaryAnimal(
            name: "Mermaid",
            height: 1.5,
            location: "Oceans",
            dateLastSeen: "1858",
            imageUrl: NSURL(string: "https://upload.wikimedia.org/wikipedia/commons/0/09/MehganTheMermaid.jpg")
        )
        let lochness = ImaginaryAnimal(
            name: "Lochness",
            height: 11.5,
            location: "Oceans",
            dateLastSeen: "1778",
            imageUrl: NSURL(string: "https://upload.wikimedia.org/wikipedia/commons/2/26/Loch_Ness_Monster_01.jpg")
        )
        let bigfoot = ImaginaryAnimal(
            name: "Bigfoot",
            height: 50,
            location: "Woodlands",
            dateLastSeen: "1944",
            imageUrl: NSURL(string: "https://upload.wikimedia.org/wikipedia/commons/a/ac/BigfootStatue-SilverLakeWA.jpg")
        )
        let liger = ImaginaryAnimal(
            name: "Liger Leony",
            height: 3,
            location: "Sahara",
            dateLastSeen: "1998",
            imageUrl: NSURL(string: "https://upload.wikimedia.org/wikipedia/commons/d/dd/Liger_portrait.jpg")
        )
    return [mermaid, lochness, bigfoot, liger]
    }
}