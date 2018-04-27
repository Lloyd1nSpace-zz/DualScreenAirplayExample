//
//  ViewController.swift
//  DualScreenAirplayExample
//
//  Created by Lloyd Sykes on 4/24/18.
//  Copyright © 2018 URBN. All rights reserved.
//

import UIKit

final class CharacterViewController: UIViewController {
    
    private let tableView = UITableView()
    private let characters = Character.allCharacters
    private var externalWindow: UIWindow?
    
    private static let cellId = "CharacterCell"
    private static var prototypeCell = CharacterCell()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Metal Gear Solid"
        navigationController?.navigationBar.prefersLargeTitles = true
        
        tableView.delegate = self
        tableView.dataSource = self
        tableView.tableFooterView = UIView()
        tableView.register(CharacterCell.self, forCellReuseIdentifier: CharacterViewController.cellId)
        
        view.addSubview(tableView)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.leadingAnchor.constraint(equalTo: view.safeAreaLeadingAnchor, constant: 8).isActive = true
        tableView.trailingAnchor.constraint(equalTo: view.safeAreaTrailingAnchor, constant: -8).isActive = true
        tableView.topAnchor.constraint(equalTo: view.safeAreaTopAnchor).isActive = true
        tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        
        NotificationCenter.default.addObserver(self, selector: #selector(externalDisplayConnected), name: .UIScreenDidConnect, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(externalDisplayDisconnected), name: .UIScreenDidDisconnect, object: nil)
    }
    
    @objc private func externalDisplayConnected(notification: Notification) {
        guard UIScreen.screens.count > 1 else { return }
        
        let externalDisplay = UIScreen.screens[1]
        externalWindow = UIWindow(frame: externalDisplay.bounds)
        externalWindow?.screen = externalDisplay
        externalWindow?.isHidden = false
    }
    
    @objc private func externalDisplayDisconnected(notification: Notification) {
        guard externalWindow != nil else { return }
        
        externalWindow?.isHidden = true
        externalWindow = nil
    }
}

// MARK: TableViewDelegate & DataSource
extension CharacterViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return characters.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: CharacterViewController.cellId, for: indexPath) as? CharacterCell else {
            return UITableViewCell()
        }
        
        CharacterViewController.prototypeCell = cell
        
        cell.largeImageView.image = characters[indexPath.row].smallImage
        cell.nameLabel.text = characters[indexPath.row].name
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return CharacterViewController.prototypeCell.height()
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let imageView = UIImageView(image: characters[indexPath.row].largeImage)
        
        let titleLabel = UILabel()
        titleLabel.text = characters[indexPath.row].name
        
        let descriptionLabel = UILabel()
        descriptionLabel.text = characters[indexPath.row].bio
        
        let characterDetailView = CharacterDetailViewController(imageView: imageView, textLabel: titleLabel, detailLabel: descriptionLabel)
        characterDetailView.view.bounds = externalWindow?.bounds ?? .zero
        
        externalWindow?.rootViewController = characterDetailView
    }
}

final class CharacterCell: UITableViewCell {
    
    fileprivate var largeImageView = UIImageView()
    fileprivate var nameLabel = UILabel()
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        separatorInset = .zero
        
        let stackView = UIStackView(arrangedSubviews: [largeImageView, nameLabel])
        stackView.axis = .vertical
        stackView.spacing = 8
        
        largeImageView.setContentCompressionResistancePriority(.defaultHigh, for: .vertical)
        nameLabel.font = UIFont.boldSystemFont(ofSize: 20)
        nameLabel.textAlignment = .center
        
        contentView.addSubview(stackView)
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.leadingAnchor.constraint(equalTo: contentView.safeAreaLeadingAnchor).isActive = true
        stackView.trailingAnchor.constraint(equalTo: contentView.safeAreaTrailingAnchor).isActive = true
        stackView.topAnchor.constraint(equalTo: contentView.safeAreaTopAnchor).isActive = true
        stackView.bottomAnchor.constraint(equalTo: contentView.safeAreaBottomAnchor, constant: -8).isActive = true
    }
    
    fileprivate func height() -> CGFloat {
        let allowedWidth = UIScreen.main.bounds.width - 8 * 2
        nameLabel.preferredMaxLayoutWidth = allowedWidth
        return systemLayoutSizeFitting(UILayoutFittingCompressedSize).height
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
