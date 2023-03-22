//
//  ViewController.swift
//  LearnSnapKit
//
//  Created by Jeff Umandap on 3/22/23.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    private lazy var imageContentView: UIView = {
        let view = UIView()
        view.backgroundColor = .clear
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(systemName: "pencil.slash")
        return imageView
    }()
    
    private lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Title label"
        label.textAlignment = .center
        label.font = UIFont.boldSystemFont(ofSize: 18)
        return label
    }()
    
    private lazy var descriptionLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Long Description Label\nLong Description Label"
        label.numberOfLines = 0
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 14)
        label.textColor = .gray
        return label
    }()
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.addSubview(self.imageContentView)
        self.imageContentView.addSubview(self.imageView)
        self.view.addSubview(self.titleLabel)
        self.view.addSubview(self.descriptionLabel)
        
//        self.imageContentView.backgroundColor = .systemRed
//        self.imageView.backgroundColor = .systemGreen
//        self.titleLabel.backgroundColor = .systemYellow
//        self.descriptionLabel.backgroundColor = .systemBlue
        
        self.setupLayout()
    }
    
    private func setupLayout() {
        
        self.imageContentView.snp.makeConstraints { [weak self] make in
            guard let self = self else { return }
            make.leading.trailing.top.width.equalToSuperview()
            make.height.equalTo(self.imageContentView.snp.width)
        }
        
//        NSLayoutConstraint.activate([
//            self.imageContentView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
//            self.imageContentView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor),
//            self.imageContentView.topAnchor.constraint(equalTo: self.view.topAnchor),
//            self.imageContentView.widthAnchor.constraint(equalTo: self.view.widthAnchor),
//            self.imageContentView.heightAnchor.constraint(equalTo: self.imageContentView.widthAnchor)
//        ])
        
            
        self.imageView.snp.makeConstraints { [weak self] make in
            guard let self = self else { return }
            make.width.equalTo(self.imageContentView.snp.width).multipliedBy(0.5)
            make.height.equalTo(self.imageView.snp.width)
            make.center.equalTo(self.imageContentView.snp.center)
        }
        
//        NSLayoutConstraint.activate([
//            self.imageView.widthAnchor.constraint(equalTo: self.imageContentView.widthAnchor, multiplier: 0.5),
//            self.imageView.heightAnchor.constraint(equalTo: self.imageView.widthAnchor),
//            self.imageView.centerXAnchor.constraint(equalTo: self.imageContentView.centerXAnchor),
//            self.imageView.centerYAnchor.constraint(equalTo: self.imageContentView.centerYAnchor)
//        ])
        
        
        self.titleLabel.snp.makeConstraints { [weak self] make in
            guard let self = self else { return }
            make.leading.trailing.equalToSuperview().inset(16)
            make.top.equalTo(self.imageContentView.snp.bottom).offset(16)
        }
        
//        NSLayoutConstraint.activate([
//            self.titleLabel.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 16),
//            self.titleLabel.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -16),
//            self.titleLabel.topAnchor.constraint(equalTo: self.imageContentView.bottomAnchor, constant: 16)
//        ])
        
        self.descriptionLabel.snp.makeConstraints { [weak self] make in
            guard let self = self else { return }
            make.leading.trailing.equalToSuperview().inset(16)
            make.top.equalTo(self.titleLabel.snp.bottom).offset(16)
        }
        
//        NSLayoutConstraint.activate([
//            self.descriptionLabel.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 16),
//            self.descriptionLabel.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -16),
//            self.descriptionLabel.topAnchor.constraint(equalTo: self.titleLabel.bottomAnchor, constant: 16)
//        ])
        
        // https://www.youtube.com/watch?v=Tu8AgAXGc8g
        
        
    }


}

