//
//  CharacterDetailViewController.swift
//  DualScreenAirplayExample
//
//  Created by Lloyd Sykes on 4/25/18.
//

import UIKit

final class CharacterDetailViewController: UIViewController {
    
    private let imageView: UIImageView
    private let textLabel: UILabel
    private let detailLabel: UILabel
    
    init(imageView: UIImageView, textLabel: UILabel, detailLabel: UILabel) {
        self.imageView = imageView
        self.textLabel = textLabel
        self.detailLabel = detailLabel

        super.init(nibName: nil, bundle: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        let horizontalStack = UIStackView(arrangedSubviews: [UIView(), imageView, UIView()])
        horizontalStack.axis = .horizontal
        horizontalStack.distribution = .fillEqually
        
        textLabel.font = UIFont.boldSystemFont(ofSize: 50)
        textLabel.textAlignment = .center
        textLabel.backgroundColor = .white
        
        detailLabel.font = UIFont.systemFont(ofSize: 30)
        detailLabel.numberOfLines = 0
        detailLabel.lineBreakMode = .byTruncatingTail
        detailLabel.backgroundColor = .white
        
        let stackView = UIStackView(arrangedSubviews: [horizontalStack, textLabel, detailLabel])
        stackView.axis = .vertical
        stackView.spacing = 8
        stackView.distribution = .fill
        
        view.addSubview(stackView)
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.topAnchor.constraint(equalTo: view.topAnchor, constant: 8).isActive = true
        stackView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -8).isActive = true
        stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 12).isActive = true
        stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -12).isActive = true
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
