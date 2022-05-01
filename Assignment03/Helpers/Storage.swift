//
//  Storage.swift
//  madAssignment3
//
//  Created by Ushini Avindika.
//

import Foundation
import UIKit

class Storage {
    static var featuredProductsArray:[Product] = [
        Product(prodTitle: "Cheese Veggie Pizza", prodPrice: 4.99, prodImage: UIImage(named: "featured_product_01")!, prodCode: "CVP01", availability: 6, prodDesc: "Cheese veggie pizza lore Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do "),
        
        Product(prodTitle: "Masala Veggie Pizza", prodPrice: 7.99, prodImage: UIImage(named: "featured_product_02")!, prodCode: "CVP02", availability: 8, prodDesc: "Masala veggie pizza lore Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do "),
        
        Product(prodTitle: "Tanduri Veggie Pizza", prodPrice: 13.99, prodImage: UIImage(named: "featured_product_03")!, prodCode: "CVP03", availability: 4, prodDesc: "Tanduri veggie pizza lore Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do "),
        
        Product(prodTitle: "Naan Veggie Pizza", prodPrice: 3.99, prodImage: UIImage(named: "featured_product_04")!, prodCode: "CVP04", availability: 12, prodDesc: "Naan veggie pizza lore Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do "),
        
        Product(prodTitle: "Paneer Veggie Pizza", prodPrice: 17.99, prodImage: UIImage(named: "featured_product_05")!, prodCode: "CVP05", availability: 18, prodDesc: "Paneer veggie pizza lore Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do "),
        
        Product(prodTitle: "Cheese Veggie Pasta", prodPrice: 6.99, prodImage: UIImage(named: "featured_product_06")!, prodCode: "CVP06", availability: 3, prodDesc: "Cheese Veggie Pasta lore Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do "),
        
        Product(prodTitle: "HotnSpicy Veggie Pasta", prodPrice: 17.99, prodImage: UIImage(named: "featured_product_07")!, prodCode: "CVP07", availability: 7, prodDesc: "HotnSpicy Veggie Pasta lore Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do "),
        
        Product(prodTitle: "Malayalam Veggie Pasta", prodPrice: 8.99, prodImage: UIImage(named: "featured_product_08")!, prodCode: "CVP08", availability: 13, prodDesc: "Malayalam Veggie Pasta lore Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do ")
    ]
    
    static var newProductsArray:[Product] = [
        Product(prodTitle: "Caramel Veggie Pizza", prodPrice: 23.99, prodImage: UIImage(named: "new_product_01")!, prodCode: "CNP01", availability: 3, prodDesc: "Cheese veggie pizza lore Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do "),
        
        Product(prodTitle: "Specialē Hot Lava Cake", prodPrice: 6.99, prodImage: UIImage(named: "new_product_05")!, prodCode: "CNP05", availability: 20, prodDesc: "Speciale Hot Lava Cake lore Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do "),
        
        Product(prodTitle: "Fruity Pizza", prodPrice: 12.99, prodImage: UIImage(named: "new_product_02")!, prodCode: "CNP02", availability: 2, prodDesc: "Fruity Pizza lore Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do "),
        
        Product(prodTitle: "Tomato Pizza", prodPrice: 5.99, prodImage: UIImage(named: "new_product_03")!, prodCode: "CNP03", availability: 6, prodDesc: "Tomato pizza lore Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do "),
        
        Product(prodTitle: "Naan Veggie Pizza", prodPrice: 12.99, prodImage: UIImage(named: "new_product_04")!, prodCode: "CNP04", availability: 12, prodDesc: "Naan veggie pizza lore Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do ")
        
    ]
}
