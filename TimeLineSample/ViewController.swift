//
//  ViewController.swift
//  TimeLineSample
//
//  Created by Jun on 2015/12/12.
//  Copyright © 2015年 junappleseed. All rights reserved.
//

import UIKit

class ViewController: UITabBarController {
    
    var allPostingViewController: AllPostingViewController!
    var feedViewController: FeedViewController!
    var stockViewController: StockViewController!
    var ownPostingViewController: OwnPostingViewController!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        /* フィードタブ */
        feedViewController = FeedViewController()
        feedViewController.tabBarItem = UITabBarItem(tabBarSystemItem: UITabBarSystemItem.Featured, tag: 1)
        /* すべての投稿タブ */
        allPostingViewController = AllPostingViewController()
        allPostingViewController.tabBarItem = UITabBarItem(tabBarSystemItem: UITabBarSystemItem.TopRated, tag: 2)
        /* ストックタブ */
        stockViewController = StockViewController()
        stockViewController.tabBarItem = UITabBarItem(tabBarSystemItem: UITabBarSystemItem.Bookmarks, tag: 3)
        /* 自分の投稿タブ */
        ownPostingViewController = OwnPostingViewController()
        ownPostingViewController.tabBarItem = UITabBarItem(tabBarSystemItem: UITabBarSystemItem.Contacts, tag: 4)
        
        let tabs = NSArray(objects: feedViewController!, allPostingViewController!, stockViewController!, ownPostingViewController!)
        self.setViewControllers(tabs as? [UIViewController], animated: false)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

