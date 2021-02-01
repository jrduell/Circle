//
//  ProfileVC.swift
//  Circle
//
//  Created by Jacob Duell on 1/22/21.
//

import UIKit

class ProfileVC: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    
    let images: [UIImage] = [#imageLiteral(resourceName: "IMG_1345"), #imageLiteral(resourceName: "IMG_1312"), #imageLiteral(resourceName: "IMG_1333"), #imageLiteral(resourceName: "IMG_1344"), #imageLiteral(resourceName: "IMG_1339"), #imageLiteral(resourceName: "IMG_1321"), #imageLiteral(resourceName: "IMG_1341")]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    

    @IBAction func dismissProfileTapped(_ sender: Any) {
        dismissFromRight()
    }
    

}

// MARK: flow layout delegate
extension ProfileVC: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let numberOfColumns: CGFloat = 2
        let width = collectionView.frame.size.width
        let xInsets: CGFloat = 10
        let cellSpacing: CGFloat = 5
        return CGSize(width: (width / numberOfColumns) - (xInsets + cellSpacing), height: (width / numberOfColumns) - (xInsets + cellSpacing))
    }
}

// MARK: collectionview

extension ProfileVC: UICollectionViewDataSource {
    public func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return images.count
    }
    
    public func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "UserPhotoCell", for: indexPath) as! PhotoCell
        
        let image = images[indexPath.row]
        cell.imageView.image = image
        
        return cell
    }
}
