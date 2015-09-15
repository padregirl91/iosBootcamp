//
//  TableViewController.swift
//  ImaginaryAnimals
//
//  Created by James Taylor on 9/14/15.
//  Copyright © 2015 James Taylor. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {

    var animalsArray:[ImaginaryAnimal]
    
    required init?(coder aDecoder: NSCoder) {

        animalsArray = AnimalsLoader().loadAnimals()
        super.init(coder: aDecoder)
        
//        let testAnimal = ImaginaryAnimal(
//            name: "Mermaid",
//            height: 1.5,
//            location: "Oceans",
//            dateLastSeen: "1858",
//            imageUrl: nil
//        )
        
//        animalsArray = [testAnimal]
        
    }

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return animalsArray.count
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("reuseIdentifier", forIndexPath: indexPath)

        let animal = animalsArray[indexPath.row]
        
        cell.textLabel?.text = "\(indexPath.row+1). \(animal.name)"

        return cell
    }
    

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        if let destinationViewController = segue.destinationViewController as? DetailViewController, let selectedIndex = self.tableView.indexPathForSelectedRow?.row {
                let selectedAnimal = animalsArray[selectedIndex]
                destinationViewController.animal = selectedAnimal
        }
    }

}
