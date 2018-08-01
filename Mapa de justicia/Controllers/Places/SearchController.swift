//
//  ViewController.swift
//  SearchBarInTable
//
//  Created by Xiaodan Wang on 10/20/17.
//  Copyright © 2017 Xiaodan Wang. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, UISearchBarDelegate {

    @IBOutlet weak var tableView: UITableView!
    
    @IBOutlet weak var mapKit: MKMapView!
    @IBOutlet weak var maskingView: UIView!
    @IBOutlet weak var searchBar: UISearchBar!
    
    var data = ["dogs", "Cats", "Goofs", "Apples", "Frogs", "Orange"]
    
    var filteredData = [String]()
    
    var inSearchMode = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        
        tableView.dataSource = self
        
        searchBar.delegate = self
        
        searchBar.returnKeyType = UIReturnKeyType.done
        searchBar.searchBarStyle = .minimal
        mapKit.addSubview(maskingView)
        maskingView.isUserInteractionEnabled = false
        if #available(iOS 11.0, *) {
            
            searchBar.tintColor = .white
            searchBar.barTintColor = .white
            
            if let textfield = searchBar.value(forKey: "searchField") as? UITextField {
                textfield.textColor = UIColor.blue
                if let backgroundview = textfield.subviews.first {
                    
                    // Background color
                    backgroundview.backgroundColor = .white
                    
                    // Rounded corner
                    backgroundview.layer.cornerRadius = 1
                    backgroundview.clipsToBounds = true
                }
            }
            
            if let navigationbar = self.navigationController?.navigationBar {
                navigationbar.barTintColor = .lightGray
            }
            
        }
    }
    
    // MARK: - UITableViewDataSource
    
    func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if inSearchMode {
            
            return filteredData.count
        }
        
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as? TableCell {
            
            let text: String!
            
            if inSearchMode {
                
                text = filteredData[indexPath.row]
                
            } else {
                
                text = data[indexPath.row]
            }
            
            cell.congigureCell(text: text)
            
            return cell
            
        } else {
            
            return UITableViewCell()
        }
    }
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        
        if searchBar.text == nil || searchBar.text == "" {
            
            inSearchMode = false
            
            view.endEditing(true)
            
            tableView.reloadData()
            tableView.isHidden = true
            
            
        } else {
            if searchText.count > 2{
            self.inSearchMode = true
                tableView.isHidden = false
                
            self.filteredData = data.filter({$0 == searchBar.text})
            
            self.tableView.reloadData()
            }
        }
    }
}

