//
//  ViewController.swift
//  KindleLBTA
//
//  Created by sieder on 11/27/17.
//  Copyright © 2017 sieder. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    
    var books: [Book]?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.register(BookCell.self, forCellReuseIdentifier: "cellId")
        tableView.tableFooterView = UIView()
        
        navigationItem.title = "Kindle"
        
        setupBooks()
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let layout = UICollectionViewFlowLayout()
        let bookPagerController = BookPagerController(collectionViewLayout: layout)
        let navController = UINavigationController(rootViewController: bookPagerController)
        present(navController, animated: true, completion: nil)
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellId", for: indexPath) as! BookCell
        
        let book = books?[indexPath.row]
        
        cell.book = book
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if let count = books?.count {
            return count
        }
        
        return 0
    }
    
    func setupBooks() {
        let book = Book(title: "Steve Jobs", author: "Walter Isaacson", image: #imageLiteral(resourceName: "steve_jobs"), pages: [
            Page(number: 1, text: "Text for the firs page"),
            Page(number: 2, text: "Text for the second page")
            ])
        
        let book2 = Book(title: "Bill Gates: A Biography", author: "Michael Becraft", image: #imageLiteral(resourceName: "bill_gates"), pages: [
            Page(number: 1, text: "Text for page 1"),
            Page(number: 2, text: "Text for page 2"),
            Page(number: 3, text: "Text for page 3"),
            Page(number: 4, text: "Text for page 4")
            ])
        
        self.books = [book, book2]
    }
}

