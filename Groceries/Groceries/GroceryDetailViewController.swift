//
//  GroceryDetailViewController.swift
//  Groceries
//
//  Created by Tony Caio on 3/20/17.
//  Copyright © 2017 The Iron Yard. All rights reserved.
//

import UIKit

class GroceryDetailViewController: UIViewController
{

    @IBOutlet weak var categoryLabel: UILabel!
    @IBOutlet weak var aisleLabel: UILabel!
    
    var groceryItem: GroceryItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = groceryItem.name
        categoryLabel.text = groceryItem.category
        aisleLabel.text = "Aisle \(groceryItem.aisle)"
       
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
// scrap

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
