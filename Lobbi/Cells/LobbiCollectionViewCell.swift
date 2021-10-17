//
//  LobbiCollectionViewCell.swift
//  Lobbi
//
//  Created by Ebu Bekir Celik on 17.10.21.
//

import UIKit

class LobbiCollectionViewCell: UICollectionViewCell {
    
    public static let identifier: String = "LobbiCollectionViewCell"
    
    var lobbiData: Lobbi? {
        didSet {
            guard let data = lobbiData else { return }
            
            var backColor: UIColor?
            
            switch data.status {
            case .created:
                backColor = .systemGreen
            case .searching:
                backColor = .gray
            case .aborted:
                backColor = .red
            }
        
            lobbiName.text = data.name
            lobbiStatus.text = String(describing: data.status)
            lobbiStatus.textColor = backColor
        }
    }
    
    fileprivate var stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.setContentHuggingPriority(.required, for: .horizontal)
        stackView.axis = .horizontal
        stackView.distribution = .fillEqually
        stackView.spacing = 20
        return stackView
    }()
    
    fileprivate let lobbiButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .orange
        button.setTitle("Enter", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.setBackgroundColor(.lightGray, for: .highlighted)
        button.layer.cornerRadius = 8
        return button
    }()
    
    fileprivate var lobbiName: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        return label
    }()
    
    fileprivate var lobbiStatus: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: .zero)
        
        stackView.addArrangedSubview(lobbiButton)
        stackView.addArrangedSubview(lobbiName)
        stackView.addArrangedSubview(lobbiStatus)
        
        contentView.addSubview(stackView)
        
        NSLayoutConstraint.activate([
            stackView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            stackView.topAnchor.constraint(equalTo: contentView.topAnchor),
            stackView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            stackView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor)
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
