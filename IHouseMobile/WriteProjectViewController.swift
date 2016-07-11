//
//  WriteProjectViewController.swift
//  IHouseMobile
//
//  Created by Add Creative Inc. on 17.06.16.
//  Copyright © 2016 DevLabs. All rights reserved.
//

import UIKit

class WriteProjectViewController: UIViewController {

    var imageView: UIImageView!
    
    @IBOutlet weak var build: UILabel!
    @IBOutlet weak var nextStep: UIButton!
    @IBOutlet weak var toRedactor: UIButton!
    @IBOutlet weak var backView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        let image = UIImage(named: "remont_elements-100")!
        build.text = "Постройте план квартиры таким,\nкакой он есть сейчас"
        build.font = UIFont(name: "Circe-Regular", size: 20	)
        // initialize the value of imageView with a CGRectZero, resize it later
        self.imageView = UIImageView(frame: CGRectZero)
        
        // set the appropriate contentMode and add the image to your imageView property
        self.imageView.contentMode = .ScaleAspectFill
        self.imageView.image = image
        backView.layer.cornerRadius = 20
        backView.layer.shadowColor = UIColor.blackColor().CGColor
        backView.layer.shadowOffset = CGSize(width: 5,height: 17)
        backView.layer.shadowRadius = 15
        backView.layer.shadowOpacity = 0.3
        backView.layer.cornerRadius = 20
        toRedactor.layer.cornerRadius = 30
        // add the imageView to your view hierarchy
        self.view.addSubview(imageView)

        // Do any additional setup after loading the view.
    }
    
    override func viewDidLayoutSubviews() {
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
