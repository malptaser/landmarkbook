//
//  imageViewController.swift
//  Landmark Book
//
//  Created by BB-MP on 15.02.2022.
//

import UIKit

class imageViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var landmarkLabel: UILabel!
    
    // seçilen landmark name ve landmark image için değerler oluşturuyoruz..
    
    var selectedLandmarkName = ""
    var selectedLandmarkImage = UIImage()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        landmarkLabel.text = selectedLandmarkName
        imageView.image = selectedLandmarkImage
      
        

    }
    

  

}
