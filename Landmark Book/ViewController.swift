//
//  ViewController.swift
//  Landmark Book
//
//  Created by BB-MP on 15.02.2022.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    // landmarkNames adında string arrayı oluşturduk
    var landmarkNames = [String]()
    // landmarkImages adında UIImage arrayı oluşturduk
    var landmarkImages = [UIImage]()
    
    
    @IBOutlet weak var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // App baştan başladığında çalışan olaylar viewDidLoad'da uygulanır..
        // Her tableView oluşturulduğunda delegate ve datasource viewControllere eşitlenir.
        tableView.delegate = self
        tableView.dataSource = self
     
        
        // Landmark Book Data
        
        // arrayimizi isimlerle doldurduk.
        landmarkNames.append("roma")
        landmarkNames.append("wall")
        landmarkNames.append("stone")
        landmarkNames.append("tac")
        landmarkNames.append("kremlin")
        
        
        // arrayimizi fotoğraflar ile doldurduk.
        landmarkImages.append(UIImage(named: "roma.jpg")!)
        landmarkImages.append(UIImage(named: "wall.jpg")!)
        landmarkImages.append(UIImage(named: "stone.jpg")!)
        landmarkImages.append(UIImage(named: "tac.jpg")!)
        landmarkImages.append(UIImage(named: "kremlin.jpg")!)
   
  
        
        
        
    }
    
    
    // cellForRowAt ( UITableViewDelegate ve UITableViewDataSource kullandığımız için cellForRowAt + numberOfRowsInSection eklenmeli )
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
     let cell = UITableViewCell()
        // landmarknames[indexPath.row] ile aynı dizeleri eşitleyecek
        
        cell.textLabel?.text = landmarkNames[indexPath.row]
        return cell
    }
    
    // numberOfRowsInSection kaç satırdan oluşturulacağını belirtir.
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return landmarkNames.count
    }
}

