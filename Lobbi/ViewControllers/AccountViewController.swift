//
//  AccountViewController.swift
//  Lobbi
//
//  Created by Ebu Bekir Celik on 17.10.21.
//

import Foundation
import UIKit

class AccountViewController: UIViewController {
    
    fileprivate var collectionView: UICollectionView = {
        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        layout.sectionInset = UIEdgeInsets(top: 10, left: 0, bottom: 10, right: 0)
        layout.minimumLineSpacing = 5
        layout.scrollDirection = .horizontal
        
        return UICollectionView(frame: .zero, collectionViewLayout: layout)
    }()
    
    override func viewDidLoad() {
        configureView()
    }
    
    override func loadView() {
        view = collectionView
    }
    
    private func configureView() {
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.backgroundColor = .white
        collectionView.alwaysBounceVertical = true
        collectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "cell")
    }
}
