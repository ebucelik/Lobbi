//
//  ViewController.swift
//  Lobbi
//
//  Created by Ebu Bekir Celik on 06.10.21.
//

import UIKit

class ViewController: UIViewController {
    
    fileprivate let collectionView: UICollectionView = {
        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        layout.sectionInset = UIEdgeInsets(top: 10, left: 5, bottom: 15, right: 0)
        layout.minimumLineSpacing = 10
        layout.scrollDirection = .vertical
        
        return UICollectionView(frame: .zero, collectionViewLayout: layout)
    }()
    
    let data: [Lobbi] = [
        Lobbi(uuid: UUID(), name: "RabbitLobbi", status: .searching),
        Lobbi(uuid: UUID(), name: "HorseLobbi", status: .created),
        Lobbi(uuid: UUID(), name: "CoolLobbi", status: .created),
        Lobbi(uuid: UUID(), name: "DanceLobbi", status: .aborted),
        Lobbi(uuid: UUID(), name: "EatLobbi", status: .searching),
        Lobbi(uuid: UUID(), name: "ShowerLobbi", status: .aborted),
        Lobbi(uuid: UUID(), name: "DirtyLobbi", status: .created),
        Lobbi(uuid: UUID(), name: "FreshLobbi", status: .searching),
        Lobbi(uuid: UUID(), name: "BabyLobbi", status: .searching),
        Lobbi(uuid: UUID(), name: "AdultLobbi", status: .created),
        Lobbi(uuid: UUID(), name: "WorkerLobbi", status: .aborted),
        Lobbi(uuid: UUID(), name: "StudyLobbi", status: .aborted),
        Lobbi(uuid: UUID(), name: "PoliticianLobbi", status: .aborted)
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureView()
    }
    
    private func configureView() {
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.backgroundColor = .white
        collectionView.alwaysBounceVertical = true
        collectionView.register(LobbiCollectionViewCell.self, forCellWithReuseIdentifier: LobbiCollectionViewCell.identifier)
    }
    
    override func loadView() {
        view = collectionView
    }
}

