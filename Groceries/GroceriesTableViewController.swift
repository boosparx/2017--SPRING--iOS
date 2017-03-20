//
//  GroceriesTableViewController.swift
//  Groceries
//
//  Created by Joben Gohlke on 3/16/17.
//  Copyright © 2017 The Iron Yard. All rights reserved.
//

import UIKit

class GroceriesTableViewController: UITableViewController
{

  var groceries = [GroceryItem]()
  
  override func viewDidLoad()
  {
    super.viewDidLoad()
    
  //  groceries.append(GroceryItem(name: "Carrots", category: "Vegetables", aisle: 2))
  //  groceries.append(GroceryItem(name: "Bread", category: "Starches", aisle: 8))
  //  groceries.append(GroceryItem(name: "Hot Pockets", category: "Frozen", aisle: 5))
    
      loadGroceries()
  }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int
    {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
      return groceries.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
      let cell = tableView.dequeueReusableCell(withIdentifier: "GroceryItemCell", for: indexPath)

      // Configure the cell...
      let aGroceryItem = groceries[indexPath.row]
      cell.textLabel?.text = aGroceryItem.name
      cell.detailTextLabel?.text = aGroceryItem.category

      return cell
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
       let selectedIndexPath = tableView.indexPath(for: sender as! UITableViewCell)!
       let selectedGroceryItem = groceries[selectedIndexPath.row]
       let groceryDetailVC = segue.destination as! GroceryDetailViewController
       groceryDetailVC.groceryItem = selectedGroceryItem
    }
    
    func loadGroceries()
    {
        do
        {
            let filePath = Bundle.main.path(forResource: "groceries", ofType: "json")
            let dataFromFile = try? Data(contentsOf: URL(fileURLWithPath: filePath!))
            let groceryData: [[String: Any]] = try JSONSerialization.jsonObject(with: dataFromFile!, options: []) as! [[String: Any]]
            for groceryDictionary in groceryData
            {
                let aGroceryItem = GroceryItem(groceryDictionary: groceryDictionary)
                groceries.append(aGroceryItem)
            }
        }
        catch let error as NSError
        {
            print(error)
        }
    }

}
