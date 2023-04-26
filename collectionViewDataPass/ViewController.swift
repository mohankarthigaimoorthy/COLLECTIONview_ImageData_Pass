//
//  ViewController.swift
//  collectionViewDataPass
//
//  Created by Mohan K on 13/02/23.
//

import UIKit

class ViewController: UIViewController {
    var nameArr = ["pranav", "fazil", "farzaana", "pradeep", "prasanth", "prabanjana", "vinay", "vibina", "vikram", "vibahv", "vinoth", "saravana", "raju", "veeramani", "firona"]
    
    @IBOutlet weak var pictureCollectionView: UICollectionView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        picture()
    }
    func picture() {
        pictureCollectionView.delegate = self
        pictureCollectionView.dataSource = self
    }

}

extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return nameArr.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = pictureCollectionView.dequeueReusableCell(withReuseIdentifier: "dataPassCollectionViewCell", for: indexPath) as! dataPassCollectionViewCell
        cell.topicLbl.text = nameArr[indexPath.item]
        cell.picImage.image = UIImage(named: nameArr[indexPath.item])

        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "flowViewController") as? flowViewController
        vc?.image = UIImage(named: nameArr[indexPath.item])!
        vc?.name = nameArr[indexPath.item]
                self.navigationController?.pushViewController(vc!, animated: true)
    }
}

extension ViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let bounds = collectionView.bounds
        return CGSize(width: bounds.width/2, height: bounds.height/1)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)

    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 10
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
        
    }
}
