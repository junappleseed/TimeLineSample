//
//  FeedTabViewController.swift
//  TimeLineSample
//
//  Created by Jun on 2015/12/12.
//  Copyright © 2015年 junappleseed. All rights reserved.
//

import UIKit

class FeedTabViewController: BaseTabViewController {
    
    var myCollectionView : UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.title = "フィード"
        
        let screenWidth = UIScreen.mainScreen().bounds.size.width
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = CGSizeMake(screenWidth, 70)
        layout.minimumLineSpacing = 1.0
        
        myCollectionView = UICollectionView(frame: self.view.frame, collectionViewLayout: layout)
        myCollectionView.registerClass(CustomUICollectionViewCell.self, forCellWithReuseIdentifier: "MyCell")
        myCollectionView.backgroundColor = UIColor.init(white: 0.9, alpha: 1.0)
        
        myCollectionView.delegate = self
        myCollectionView.dataSource = self
        
        self.view.addSubview(myCollectionView)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}