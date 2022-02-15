//
//  ViewController.swift
//  Landmark Book
//
//  Created by BB-MP on 15.02.2022.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // App baştan başladığında çalışan olaylar viewDidLoad'da uygulanır..
        // Her tableView oluşturulduğunda delegate ve datasource viewControllere eşitlenir.
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    // cellForRowAt ( UITableViewDelegate ve UITableViewDataSource kullandığımız için cellForRowAt + numberOfRowsInSection eklenmeli )
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
     let cell = UITableViewCell()
        cell.textLabel?.text = "test"
        return cell
    }
    
    // numberOfRowsInSection
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
}

