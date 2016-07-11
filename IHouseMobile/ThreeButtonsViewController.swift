//
//  ThreeButtonsViewController.swift
//  IHouseMobile
//
//  Created by Add Creative Inc. on 17.06.16.
//  Copyright © 2016 DevLabs. All rights reserved.
//

import UIKit

class ThreeButtonsViewController: UIViewController {
    
    var imageView: UIImageView!
    
    @IBOutlet weak var backVIew: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        choose.text = "Выбрать \nготовое решение"
        backVIew.layer.cornerRadius = 20
        backVIew.layer.shadowColor = UIColor.blackColor().CGColor
        backVIew.layer.shadowOffset = CGSize(width: 1,height: 17)
        backVIew.layer.shadowRadius = 15
        backVIew.layer.shadowOpacity = 0.3
        backVIew.layer.cornerRadius = 20
        
        let image = UIImage(named: "remont_elements-100")!
        
        // initialize the value of imageView with a CGRectZero, resize it later
        self.imageView = UIImageView(frame: CGRectZero)
        
        // set the appropriate contentMode and add the image to your imageView property
        self.imageView.contentMode = .ScaleAspectFill
        self.imageView.image = image
        
        // add the imageView to your view hierarchy
        self.view.addSubview(imageView)
        

        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var choose: UILabel!
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        self.imageView.frame = self.view.bounds
        self.view.sendSubviewToBack(imageView)
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
