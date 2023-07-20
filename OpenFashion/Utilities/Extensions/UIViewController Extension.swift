//
//  File.swift
//  OpenFashion
//
//  Created by Amr El-Fiqi on 20/07/2023.
//

import UIKit

extension UIViewController {
    
    
    func setupNavigationBar() {
        setupNavigationBarLogo()
        setupNavigationMenuButton()
        setupNavigationRightButtons()
        navigationController?.navigationBar.tintColor = .black
    }
    
    func setupNavigationBarLogo() {
        
        // Custome Logo View
        let logoImageView = UIImageView(image: UIImage(named: "logo"))
        logoImageView.contentMode = .scaleAspectFit
        navigationItem.titleView = logoImageView

    }
    
    func setupNavigationMenuButton() {
        let menuButtonImage = UIImage(named: "menu")
        let menuButton = UIBarButtonItem(image: menuButtonImage, style: .plain, target: self, action: #selector(menuButtonClicked))
        navigationItem.leftBarButtonItem = menuButton
    }
    
    func setupNavigationRightButtons() {
        let cartButtonImage = UIImage(named: "shopcart")
        let cartButton = UIBarButtonItem(image: cartButtonImage, style: .plain, target: self, action: #selector(cartButtonClicked))
        
        let searchButtonImage = UIImage(named: "searching")
        let searchButton = UIBarButtonItem(image: searchButtonImage, style: .plain, target: self, action: #selector(searchButtonClicked))
        navigationItem.rightBarButtonItems = [cartButton, searchButton]
    }
    
    @objc func menuButtonClicked() {
        
    }
    
    @objc func cartButtonClicked() {
        
    }
    
    @objc func searchButtonClicked() {
        
    }
}
