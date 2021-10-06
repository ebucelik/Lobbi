//
//  ViewController.swift
//  Lobbi
//
//  Created by Ebu Bekir Celik on 06.10.21.
//

import UIKit

class ViewController: UIViewController {
    
    var collectionView: UICollectionView? = nil
    
    let data: [String] = ["Ebu", "Haki", "Oguz", "Ebu", "Haki", "Oguz", "Ebu", "Haki", "Oguz", "Ebu", "Haki", "Oguz", "Ebu", "Haki", "Oguz", "Ebu", "Haki", "Oguz", "Ebu", "Haki", "Oguz"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureView()
    }
    
    private func configureView() {
        collectionView?.dataSource = self
        collectionView?.delegate = self
        collectionView?.alwaysBounceVertical = true
        collectionView?.backgroundColor = .white
        collectionView?.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "cell")
    }
    
    override func loadView() {
        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        layout.sectionInset = UIEdgeInsets(top: 0, left: 0, bottom: 15, right: 0)
        layout.minimumLineSpacing = 15
        layout.scrollDirection = .vertical
        
        collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        
        view = collectionView
    }
}

