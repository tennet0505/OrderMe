//
//  MainViewController.swift
//  OrderMe
//
//  Created by Oleg Ten on 4/24/20.
//  Copyright © 2020 Oleg Ten. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var items = [Item(logoURL: "https://dodopizza.kg/bishkek", name: "Dodo-PIZZA", addres: "Шопокова 101/1", tel: "0 (551) 550-550")]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.reloadData()
        
    }
    
}

extension MainViewController: UITableViewDelegate, UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let item = items[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! MainTableViewCell
        cell.nameLabel.text = item.name
        cell.addresLabel.text = item.addres
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let vc = sb.instantiateViewController(withIdentifier: "WebViewController") as! WebViewController
        vc.item = items[indexPath.row]
        self.navigationController?.pushViewController(vc, animated: true)

    }
}
