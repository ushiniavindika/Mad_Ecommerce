//
//  ProductListViewController.swift
//  madAssesment3
//
//  Created by Ushini Avindika.
//

import UIKit

class ProductListViewController: BaseViewController {

    @IBOutlet weak var topNavigationViewBar: TopNavigationView!
    @IBOutlet weak var collectionView: UICollectionView!
    
    var topNavigationTitle:String!
    var productArray:[Product]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        topNavigationViewBar.backButton.addTarget(self, action: #selector(self.goToBack(_:)), for: .touchUpInside)
        topNavigationViewBar.titleLabel.text = topNavigationTitle
//        topNavigationViewBar.titleLabel.text = "HELLO"
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.register(ProductCollectionViewCell.nib(), forCellWithReuseIdentifier: ProductCollectionViewCell.identifier)
    }

}

extension ProductListViewController:UICollectionViewDataSource, UICollectionViewDelegate{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return productArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let featuredCell = collectionView.dequeueReusableCell(withReuseIdentifier: ProductCollectionViewCell.identifier, for: indexPath) as! ProductCollectionViewCell
        
        let product = productArray[indexPath.row]
        
        featuredCell.configure(with:product)
        
        return featuredCell
    }
    
    
}

extension ProductListViewController: UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let totalWidth: CGFloat = ((self.view.frame.width / 2))

            print(totalWidth) // this prints 106.666666667

        return CGSize(width:totalWidth, height:195)
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
            return 0
        }
        func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
            return 8
        }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
            let product = productArray[indexPath.row]
            
            let vc = SingleProductViewController()
            vc.product = product
            self.navigationController?.pushViewController(vc, animated: true)
    }
}
