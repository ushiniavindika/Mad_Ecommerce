//
//  MainPageViewController.swift
//  madAssesment3
//
//  Created by Ushini Avindika.
//

import UIKit

class HomeViewController: BaseViewController {
    
    @IBOutlet weak var featuredCollectionView: UICollectionView!
    @IBOutlet weak var newProductCollectionView: UICollectionView!
    @IBOutlet weak var featuredViewAllLabel: UILabel!
    @IBOutlet weak var newViewAllLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupCollectionViews()
        // This is an extension I am using instead of UITapGesture Traditional Way
        featuredViewAllLabel.addTapGestureRecognizer {
            let vc = ProductListViewController()
            vc.topNavigationTitle = "Featured Products"
            vc.productArray = Storage.featuredProductsArray
            self.navigationController?.pushViewController(vc, animated: true)
        }
        newViewAllLabel.addTapGestureRecognizer {
            let vc = ProductListViewController()
            vc.topNavigationTitle = "New Products"
            vc.productArray = Storage.newProductsArray
            self.navigationController?.pushViewController(vc, animated: true)
        }
    }
    
    func setupCollectionViews(){
        featuredCollectionView.delegate = self
        featuredCollectionView.dataSource = self
        newProductCollectionView.delegate = self
        newProductCollectionView.dataSource = self
        featuredCollectionView.register(ProductCollectionViewCell.nib(), forCellWithReuseIdentifier: ProductCollectionViewCell.identifier)
        newProductCollectionView.register(ProductCollectionViewCell.nib(), forCellWithReuseIdentifier: ProductCollectionViewCell.identifier)
    }

}

extension HomeViewController: UICollectionViewDelegate, UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == featuredCollectionView{
            if Storage.featuredProductsArray.count >= 4{
                return 4
            }else{
                return Storage.featuredProductsArray.count
            }
        }else{
            if Storage.newProductsArray.count >= 4{
                return 4
            }else{
                return Storage.newProductsArray.count
            }
            
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == featuredCollectionView{
            let featuredCell = collectionView.dequeueReusableCell(withReuseIdentifier: ProductCollectionViewCell.identifier, for: indexPath) as! ProductCollectionViewCell
            
            let product = Storage.featuredProductsArray[indexPath.row]
            
            featuredCell.configure(with:product)
            
            return featuredCell
        }else{
            let newCell = collectionView.dequeueReusableCell(withReuseIdentifier: ProductCollectionViewCell.identifier, for: indexPath) as! ProductCollectionViewCell
            
            let product = Storage.newProductsArray[indexPath.row]
            
            newCell.configure(with:product)
            
            return newCell
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if collectionView == featuredCollectionView{
            let product = Storage.featuredProductsArray[indexPath.row]
            
            let vc = SingleProductViewController()
            vc.product = product
            self.navigationController?.pushViewController(vc, animated: true)
            
            
        }else{
            let product = Storage.newProductsArray[indexPath.row]
            
            let vc = SingleProductViewController()
            vc.product = product
            self.navigationController?.pushViewController(vc, animated: true)
            
            
        }
    }
    
    
}

extension HomeViewController: UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let totalWidth: CGFloat = ((self.view.frame.width / 2))

            print(totalWidth) // this prints 106.666666667

        return CGSize(width:totalWidth, height:195)
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
            return 0
        }
        func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
            return 6
        }
}
