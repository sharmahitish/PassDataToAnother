//
//  DataViewController.swift
//  PassDataToAnother
//
//  Created by kunal sharma on 10/10/20.
//  Copyright © 2020 Hitish sharma. All rights reserved.
//

import UIKit

class DataViewController: UIViewController {

    @IBOutlet weak var img: UIImageView!
    @IBOutlet weak var lbl: UILabel!
    
    var image = UIImage()
    var name = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

      //  var text = "You have selected \(name) for vote"
        img.image = image
    }
    
    @IBAction func onClick(_ sender: Any) {
    }
    
}
