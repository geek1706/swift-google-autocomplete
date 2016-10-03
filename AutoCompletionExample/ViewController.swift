//
//  ViewController.swift
//  AutoCompletionExample
//
//  Created by trungnd on 10/3/16.
//  Copyright © 2016 redvn. All rights reserved.
//

import UIKit
import AutoComplete

extension NSObject {
    class func className() -> String {
        return String(describing: self.self)
    }
}


class AutoCompleteCell: UITableViewCell {
    
}

class ViewController: UITableViewController {
    
    let searchBar: UISearchBar = {
        let searchBar = UISearchBar()
        searchBar.showsCancelButton = true
        return searchBar
    }()
    
    var suggestions = [String]()

    override func viewDidLoad() {
        super.viewDidLoad()
        searchBar.delegate = self
        tableView.delegate = self
        tableView.dataSource = self
        tableView.tableFooterView = UIView()
        navigationItem.titleView = searchBar
    }

    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        searchBar.becomeFirstResponder()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

extension ViewController {
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return suggestions.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: AutoCompleteCell.className(), for: indexPath) as! AutoCompleteCell
        cell.textLabel?.text = suggestions[indexPath.row]
        return cell
    }
}

extension ViewController: UISearchBarDelegate {
    
    func searchBarTextDidEndEditing(_ searchBar: UISearchBar) {
        
    }
    
    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
        suggestions.removeAll()
        searchBar.resignFirstResponder()
        tableView.reloadData()
    }
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        guard let term = searchBar.text, term.isEmpty == false else {
            suggestions.removeAll()
            tableView.reloadData()
            return
        }
        
        // Clear results
        suggestions.removeAll()
        
        AutoComplete.getQuerySuggestions(term) { [unowned self] (suggestions, error) in
            if let suggestions = suggestions, suggestions.count > 0 {
                self.suggestions = suggestions
                self.tableView.reloadData()
            }
        }
    }
}

