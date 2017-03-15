//
//  ViewController.swift
//  HelloiPhone
//
//  Created by Joben Gohlke on 3/15/17.
//  Copyright © 2017 The Iron Yard. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{

  @IBOutlet var nameLabel: UILabel!
  
  override func viewDidLoad()
  {
    super.viewDidLoad()
    nameLabel.text = "Ben Gohlke"
  }

  override func didReceiveMemoryWarning()
  {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


}

