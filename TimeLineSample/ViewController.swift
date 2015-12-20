//
//  ViewController.swift
//  TimeLineSample
//
//  Created by Jun on 2015/12/12.
//  Copyright © 2015年 junappleseed. All rights reserved.
//

import UIKit

class ViewController: UITabBarController {
    
    var feedTabView: FeedTabViewController!
    var allTabView: AllPostTabViewController!

    override func viewDidLoad() {
        super.viewDidLoad()

        /* フィードタブ */
        feedTabView = FeedTabViewController()
        feedTabView.tabBarItem = UITabBarItem(title: "フィード", image: UIImage(named: "feed.png"), tag: 1)
        /* すべての投稿タブ */
        allTabView = AllPostTabViewController()
        allTabView.tabBarItem = UITabBarItem(title: "すべて", image: UIImage(named: "post.png"), tag: 2)
        
        let feedTabViewController = UINavigationController(rootViewController: feedTabView)
        let allTabViewController = UINavigationController(rootViewController: allTabView)

        self.setViewControllers([feedTabViewController, allTabViewController], animated: false)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

