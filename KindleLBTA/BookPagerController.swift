//
//  BookPagerController.swift
//  KindleLBTA
//
//  Created by sieder on 12/3/17.
//  Copyright © 2017 sieder. All rights reserved.
//

import UIKit

class BookPagerController: UICollectionViewController, UICollectionViewDelegateFlowLayout {
    
    let pageNumber: UILabel = {
        let label = UILabel()
        
        
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView?.backgroundColor = .white
        navigationItem.title = "Book"
        
        collectionView?.register(PageCell.self, forCellWithReuseIdentifier: "cellId")
        
        let layout = collectionView?.collectionViewLayout as? UICollectionViewFlowLayout
        layout?.scrollDirection = .horizontal
        layout?.minimumLineSpacing = 0
        
        collectionView?.isPagingEnabled = true
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width, height: view.frame.height)
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cellId", for: indexPath)
        
        view.addSubview(pageNumber)
        pageNumber.frame = CGRect(x: view.frame.midX, y: view.frame.midY, width: 10, height: 10)
        
//        if indexPath.item % 2 == 0 {
//            cell.backgroundColor = .red
//            pageNumber.text = String(indexPath.item)
//            print(indexPath.item)
//        } else {
//            cell.backgroundColor = .blue
//            pageNumber.text = String(indexPath.item)
//        }
        
        
        
        
        
        
        return cell
    }
}
