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
        
        view.backgroundColor = .red
        
        setupBooks()
    }
    
    func setupBooks() {
        let book = Book(title: "Steve Jobs", author: "Walter Isaacson", pages: [
            Page(number: 1, text: "Text for the firs page"),
            Page(number: 2, text: "Text for the second page")
            ])
        
        let book2 = Book(title: "Bill Gates: A Biography", author: "Michael Becraft", pages: [
            Page(number: 1, text: "Text for page 1"),
            Page(number: 2, text: "Text for page 2"),
            Page(number: 3, text: "Text for page 3"),
            Page(number: 4, text: "Text for page 4")
            ])
        
        self.books = [book, book2]
        
        guard let books = self.books else { return }
        for book in books {
            print(book.title)
            for page in book.pages {
                print(page.text)
            }
        }
    }
}

