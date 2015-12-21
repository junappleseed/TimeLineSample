//
//  CustomUICollectionViewCell.swift
//  TimeLineSample
//
//  Created by Jun on 2015/12/12.
//  Copyright © 2015年 junappleseed. All rights reserved.
//

import UIKit

class CustomUICollectionViewCell: UICollectionViewCell {

    var imageView: UIImageView!
    var textLabel: UILabel!
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        let image = UIImage(named: "picture.png")
        
        UIGraphicsBeginImageContext(CGSizeMake(60, 60))
        image!.drawInRect(CGRectMake(0, 0, 60, 60))
        let resizedImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()

        imageView = UIImageView(image: resizedImage)
        
        textLabel = UILabel(frame: CGRectMake(60, 0, frame.width - 60, frame.height))
        textLabel?.text = "nil"
        textLabel?.backgroundColor = UIColor.whiteColor()
        textLabel?.textAlignment = NSTextAlignment.Center
        
        self.contentView.addSubview(imageView!)
        self.contentView.addSubview(textLabel!)
    }
}
