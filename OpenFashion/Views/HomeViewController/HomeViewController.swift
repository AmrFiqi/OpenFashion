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
    
    // MARK: - IBOutlets
    
    @IBOutlet weak var tableView: UITableView!
    
    
    // MARK: - Class Methods

    override func viewDidLoad() {
        super.viewDidLoad()

        // Setup Custom Navigation Bar
        setupNavigationBar()
        setupTableView()
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
        
        let cell  = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = "\(indexPath.row)"
        return cell
    }
    
    func regiterCells() {
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
    }
    
    func setupTableView() {
        self.tableView.delegate = self
        self.tableView.dataSource = self
        self.regiterCells()
    }
    
}
