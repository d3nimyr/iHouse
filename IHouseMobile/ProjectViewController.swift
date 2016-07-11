//
//  ProjectViewController.swift
//  IHouseMobile
//
//  Created by Add Creative Inc. on 17.06.16.
//  Copyright © 2016 DevLabs. All rights reserved.
//

import UIKit

class ProjectViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    @IBOutlet weak var steps: UILabel!
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var sub: UILabel!
    @IBOutlet weak var sub2: UILabel!
    @IBOutlet weak var sub3: UILabel!
    @IBOutlet weak var sub4: UILabel!
    
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var heightConstraint: NSLayoutConstraint!
    @IBOutlet weak var landscapeHeight: NSLayoutConstraint!
    
    @IBOutlet weak var iPadHeight: NSLayoutConstraint!
    var deleteable:CGFloat!
    var imageView: UIImageView!
    let elements = [("Супер пупер кортежи", UIColor.whiteColor()),("Супер пупер кортежи", UIColor.whiteColor()),("Супер пупер кортежи", UIColor.whiteColor()),("Супер пупер кортежи", UIColor.blackColor()),("Супер пупер кортежи", UIColor.whiteColor()),("Супер пупер кортежи", UIColor.whiteColor()),("Супер пупер кортежи", UIColor.blackColor()),("Супер пупер кортежи", UIColor.whiteColor()),("Супер пупер кортежи", UIColor.whiteColor()),("Супер пупер кортежи", UIColor.whiteColor()),("Супер пупер кортежи", UIColor.whiteColor()),("Супер пупер кортежи", UIColor.whiteColor()),("Супер пупер кортежи", UIColor.whiteColor()),("Супер пупер кортежи", UIColor.blackColor()),("Супер пупер кортежи", UIColor.blackColor()),("Супер пупер кортежи", UIColor.whiteColor()),("Супер пупер кортежи", UIColor.whiteColor()),("Супер пупер кортежи", UIColor.whiteColor()),("Супер пупер кортежи", UIColor.whiteColor()),("Супер пупер кортежи", UIColor.whiteColor()),("Супер пупер кортежи", UIColor.whiteColor()),("Супер пупер кортежи", UIColor.whiteColor()),("Супер пупер кортежи", UIColor.whiteColor()),("Супер пупер кортежи", UIColor.whiteColor()),("Супер пупер кортежи", UIColor.blackColor())]
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return elements.count
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = self.colView.dequeueReusableCellWithReuseIdentifier("cell", forIndexPath: indexPath) as! ProjectCollectionViewCell
        cell.lablos.text = elements[indexPath.row].0
        cell.lablos.textColor = elements[indexPath.row].1
        cell.buyButton.setTitleColor(elements[indexPath.row].1, forState: .Normal)
        cell.buyButton.layer.borderColor = elements[indexPath.row].1.CGColor
        
        if self.getDevice() == Devicer.iPad || self.getDevice() == Devicer.iPadPro || self.getDevice() == Devicer.iPadProLandscape || self.getDevice() == Devicer.iPadLandscape {
            cell.buyButton.layer.cornerRadius = 12
        } else {
            cell.buyButton.layer.cornerRadius = 18
        }
        
        return cell
    }
    
    @IBOutlet weak var colView: UICollectionView!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        deleteable = self.view.frame.height - self.colView.frame.height
        let image = UIImage(named: "Bez_imeni-1-4")!
        
        self.imageView = UIImageView(frame: CGRectZero)
        self.imageView.contentMode = .ScaleAspectFill
        self.imageView.image = image

        self.view.addSubview(imageView)
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        self.imageView.frame = self.view.bounds
        self.view.sendSubviewToBack(self.imageView)
        
        delay(0.05) {
            
            if self.getDevice() == Devicer.iPad || self.getDevice() == Devicer.iPadPro {
                self.scrollView.contentSize.width = self.view.frame.width
                let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
                layout.sectionInset = UIEdgeInsets(top: 20, left: 45, bottom: 0, right: 45)
                layout.minimumInteritemSpacing = 1
                layout.minimumLineSpacing = 1
                layout.itemSize = CGSize(width: 380, height: 74)
                
                self.colView.setCollectionViewLayout(layout, animated: true)
                self.landscapeHeight.constant = CGFloat(self.elements.count) * 76
                self.scrollView.contentSize.height = self.colView.frame.height + self.view.frame.height / 2
            } else if self.getDevice() == Devicer.iPadProLandscape || self.getDevice() == Devicer.iPadLandscape {
                self.scrollView.contentSize.width = self.view.frame.width
                let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
                layout.sectionInset = UIEdgeInsets(top: 20, left: 45, bottom: 0, right: 45)
                layout.minimumInteritemSpacing = 1
                layout.minimumLineSpacing = 1
                layout.itemSize = CGSize(width: 380, height: 74)
                
                self.colView.setCollectionViewLayout(layout, animated: true)
                self.landscapeHeight.constant = CGFloat(self.elements.count) * 41
                self.scrollView.contentSize.height = self.colView.frame.height + self.view.frame.height / 2
            
            } else {
                let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
                layout.sectionInset = UIEdgeInsets(top: 20, left: 0, bottom: 0, right: 0)
                layout.minimumInteritemSpacing = 1
                layout.minimumLineSpacing = 1
                let layoutWidth = self.colView.frame.width
                layout.itemSize = CGSize(width: layoutWidth, height: 74)
                
                self.colView.setCollectionViewLayout(layout, animated: true)
                self.scrollView.frame.size = self.view.frame.size
                
           
                
                self.colView.center.x = self.view.center.x
                self.landscapeHeight.constant = CGFloat(self.elements.count) * 76
                self.heightConstraint.constant = CGFloat(self.elements.count) * 76
                self.scrollView.contentSize.height = self.deleteable + self.colView.frame.height + 100
            }
        }
        
        print(view.frame.size)
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
