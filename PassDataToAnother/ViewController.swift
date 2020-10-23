//
//  ViewController.swift
//  PassDataToAnother
//
//  Created by kunal sharma on 10/9/20.
//  Copyright © 2020 Hitish sharma. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var name = [ "image1",
        "image2",
        "image3",
        "image4",
        "image5",
        "image6",
        "image7"]
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
extension ViewController: UITableViewDelegate , UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return name.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? CellTableViewCell
        
        cell?.lbl.text = name[indexPath.row]
        cell?.img.image = UIImage(named: name[indexPath.row])
        return cell!
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "DataViewController") as? DataViewController
        vc?.image = UIImage(named: name[indexPath.row])!
        vc?.name = name[indexPath.row]
        self.navigationController?.pushViewController(vc!, animated: true)
    }
}

// https://www.youtube.com/watch?v=hGV9pfssmXA

