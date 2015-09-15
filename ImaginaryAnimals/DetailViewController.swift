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

        if let animal = animal {
            self.nameLabel.text = "Name: " + animal.name
            self.heightLabel.text = "Height: \(animal.height)"
            self.locationLabel.text = "Location: " + animal.location
            self.dateLastSeenLabel.text = "Date Last Seen: " + animal.dateLastSeen
        }
    }
    
    override func viewDidAppear(animated: Bool) {
        if let url = animal?.imageUrl,
            let imageData = NSData(contentsOfURL: url) {
                self.imageView.image = UIImage(data: imageData)
        }
    }

}
