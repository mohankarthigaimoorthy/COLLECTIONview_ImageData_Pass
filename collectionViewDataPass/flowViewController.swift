//
//  flowViewController.swift
//  collectionViewDataPass
//
//  Created by Mohan K on 13/02/23.
//

import UIKit

class flowViewController: UIViewController {

    @IBOutlet weak var nameLbl: UILabel!
    @IBOutlet weak var imgImage: UIImageView!
    
    var name = ""
    var image = UIImage()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLbl.text = "\(name)"
        imgImage.image = image
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
