//
//  HomeViewModel.swift
//  OpenFashion
//
//  Created by Amr El-Fiqi on 20/07/2023.
//

import Foundation

class HomeViewModel {
    
    // MARK: - Variables
    
    var currentIndex = 0
    var numberOfBannerImages = 3
    
    // MARK: - Class Methods
    
    func numberOfSections() -> Int {
        10
    }
    
    func numberOfRows(in section: Int) -> Int {
        1
    }
    
    func imageNameForCurrentIndex() -> String {
        return "banner\(currentIndex)"
    }
    
    func scrollToNextImage() {
        currentIndex = (currentIndex + 1) % numberOfBannerImages
    }
}
