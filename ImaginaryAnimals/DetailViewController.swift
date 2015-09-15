//
//  DetailViewController.swift
//  ImaginaryAnimals
//
//  Created by James Taylor on 9/14/15.
//  Copyright © 2015 James Taylor. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    var animal: ImaginaryAnimal?
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var locationLabel: UILabel!
    @IBOutlet weak var dateLastSeenLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let url = animal?.imageUrl,
            let imageData = NSData(contentsOfURL: url) {
                self.imageView.image = UIImage(data: imageData)
        }
        if let name = animal?.name {
            self.nameLabel.text = "Name: " + name
        }
        if let height = animal?.height {
            self.heightLabel.text = "Height: \(height)"
        }
        if let location = animal?.location {
            self.locationLabel.text = "Location: \n" + location
        }
        if let dateLastSeen = animal?.dateLastSeen {
            self.dateLastSeenLabel.text = "Date Last Seen: " + dateLastSeen
        }
    }

}
