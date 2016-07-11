//
//  MenuViewController.swift
//  IHouseMobile
//
//  Created by Add Creative Inc. on 17.06.16.
//  Copyright © 2016 DevLabs. All rights reserved.
//

import UIKit

class MenuViewController: UIViewController {
    
    var imageView: UIImageView!
    
    
    @IBOutlet weak var mainLabel: UILabel!
    @IBOutlet weak var projects: UIButton!
    @IBOutlet weak var my: UIButton!
    @IBOutlet weak var new: UIButton!
    @IBOutlet weak var how: UIButton!
    var attrs = [
        NSFontAttributeName : UIFont.boldSystemFontOfSize(16),
        NSForegroundColorAttributeName : UIColor.whiteColor(),
        NSUnderlineStyleAttributeName : 1]
    var attributedString = NSMutableAttributedString(string:"")
    var attributedString1 = NSMutableAttributedString(string:"")
    var attributedString2 = NSMutableAttributedString(string:"")
    var attributedString3 = NSMutableAttributedString(string:"")
    override func viewDidLoad() {
        super.viewDidLoad()
        let buttonTitleStr = NSMutableAttributedString(string:"СОЗДАТЬ НОВЫЙ ПЛАН ПРОЕКТА", attributes:attrs)
        attributedString.appendAttributedString(buttonTitleStr)
        new.setAttributedTitle(attributedString, forState: .Normal)
        let buttonTitleStr1 = NSMutableAttributedString(string:"МОИ ПРОЕКТЫ", attributes:attrs)
        attributedString1.appendAttributedString(buttonTitleStr1)
        my.setAttributedTitle(attributedString1, forState: .Normal)
        let buttonTitleStr2 = NSMutableAttributedString(string:"ПРОЕКТЫ ТИПОВЫХ КВАРТИР", attributes:attrs)
        attributedString2.appendAttributedString(buttonTitleStr2)
        projects.setAttributedTitle(attributedString2, forState: .Normal)
        let buttonTitleStr3 = NSMutableAttributedString(string:"КАК ПОЛЬЗОВАТЬСЯ ПРОГРАММОЙ", attributes:attrs)
        attributedString3.appendAttributedString(buttonTitleStr3)
        how.setAttributedTitle(attributedString3, forState: .Normal)
        // get the correct image out of your assets cataloge
        let image = UIImage(named: "12-2")!
        
        // initialize the value of imageView with a CGRectZero, resize it later
        self.imageView = UIImageView(frame: CGRectZero)
        
        // set the appropriate contentMode and add the image to your imageView property
        self.imageView.contentMode = .ScaleAspectFill
        self.imageView.image = image
        
        // add the imageView to your view hierarchy
        self.view.addSubview(imageView)
        

        
        // Do any additional setup after loading the view.
    }
    
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        //set the frame of your imageView here to automatically adopt screen size changes (e.g. by rotation or splitscreen)
        
        mainLabel.text = "ПОШАГОВАЯ \nИНСТРУКЦИЯ ПО РЕМОНТУ \nВАШЕЙ КВАРТИРЫ"
        
        self.imageView.frame = self.view.bounds
        self.view.sendSubviewToBack(imageView)
    }
    
    
    
        
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
