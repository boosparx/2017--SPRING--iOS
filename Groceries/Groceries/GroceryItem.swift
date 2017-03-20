//
//  GroceryItem.swift
//  Groceries
//
//  Created by Joben Gohlke on 3/16/17.
//  Copyright © 2017 The Iron Yard. All rights reserved.
//

import Foundation

class GroceryItem
{
  var name: String
  var category: String
  var aisle: Int
  
  init(name: String, category: String, aisle: Int)
  {
    self.name = name
    self.category = category
    self.aisle = aisle
  }
    init(groceryDictionary: [String: Any])
{
    self.name = groceryDictionary["name"] as! String
    self.category = groceryDictionary["category"] as! String
    self.aisle = groceryDictionary["aisle"] as! Int
}
    
}
