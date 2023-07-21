//
//  HomeViewController.swift
//  OpenFashion
//
//  Created by Amr El-Fiqi on 19/07/2023.
//

import UIKit

class HomeViewController: UIViewController {
    
    // MARK: -  Variables
    
    var viewModel =  HomeViewModel()
    var timer: Timer?
    var pageControl = UIPageControl()
    
    // MARK: - IBOutlets
    
    @IBOutlet weak var tableView: UITableView!
    
    
    // MARK: - Class Methods

    override func viewDidLoad() {
        super.viewDidLoad()

        // Setup Custom Navigation Bar
        setupNavigationBar()
        setupTableView()
        startBannerTimer()
    }
    
    func startBannerTimer() {
        timer = Timer.scheduledTimer(timeInterval: 3.0, target: self, selector: #selector(scrollToNextImage), userInfo: nil, repeats: true)
    }
    
    func setupPageControl() {
            pageControl.numberOfPages = viewModel.numberOfBannerImages
            pageControl.currentPage = viewModel.currentIndex
            pageControl.currentPageIndicatorTintColor = .systemBlue
            pageControl.pageIndicatorTintColor = .systemGray
            pageControl.translatesAutoresizingMaskIntoConstraints = false
            view.addSubview(pageControl)
            
            NSLayoutConstraint.activate([
                pageControl.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                pageControl.bottomAnchor.constraint(equalTo: tableView.topAnchor, constant: -16)
            ])
        }
    
    // MARK: - Button Actions
    
    @objc func scrollToNextImage() {
        viewModel.scrollToNextImage()
    }
}


// MARK: - Extensions

extension HomeViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        viewModel.numberOfRows(in: section)
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        viewModel.numberOfSections()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell  = tableView.dequeueReusableCell(withIdentifier: "BannerCell", for: indexPath) as! BannerTableViewCell
        let imageName = viewModel.imageNameForCurrentIndex()
        cell.bannerImageView.image = UIImage(named: imageName)
//        cell.textLabel?.text = "\(indexPath.row)"
        pageControl.currentPage = viewModel.currentIndex
        return cell
        
    }
    
    func registerCells() {
        tableView.register(UINib(nibName: "BannerTableViewCell", bundle: nil), forCellReuseIdentifier: "BannerCell")
    }
    
    func setupTableView() {
        self.tableView.delegate = self
        self.tableView.dataSource = self
        self.registerCells()
        
    }
    
}
