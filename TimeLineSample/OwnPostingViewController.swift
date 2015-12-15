//
//  OwnPostingViewController.swift
//  TimeLineSample
//
//  Created by Jun on 2015/12/12.
//  Copyright © 2015年 junappleseed. All rights reserved.
//

import UIKit

class OwnPostingViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    var myCollectionView : UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let screenWidth = UIScreen.mainScreen().bounds.size.width
        
        let layout = UICollectionViewFlowLayout()
        layout.headerReferenceSize = CGSizeMake(screenWidth, 25)
        layout.itemSize = CGSizeMake(screenWidth, 100)
        layout.minimumLineSpacing = 1.0
        
        myCollectionView = UICollectionView(frame: self.view.frame, collectionViewLayout: layout)
        myCollectionView.registerClass(CustomUICollectionViewCell.self, forCellWithReuseIdentifier: "MyCell")
        myCollectionView.delegate = self
        myCollectionView.dataSource = self
        
        self.view.addSubview(myCollectionView)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
    }
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 50
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell : CustomUICollectionViewCell = collectionView.dequeueReusableCellWithReuseIdentifier("MyCell", forIndexPath: indexPath) as! CustomUICollectionViewCell
        cell.textLabel?.text = indexPath.row.description
        return cell
    }
}