	//
//  ViewController.swift
//  IHouseMobile
//
//  Created by d3nimyr on 16/06/16.
//  Copyright © 2016 DevLabs. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var orientation: UIDeviceOrientation = UIDevice.currentDevice().orientation
    @IBOutlet weak var facebookbutton: UIButton!
    @IBOutlet weak var logintext: UITextField!
    @IBOutlet weak var passwordtext: UITextField!
    @IBOutlet weak var registration: UIButton!
    @IBOutlet weak var forgotpassword: UIButton!
    @IBOutlet weak var Checkbox: UIButton!
    @IBOutlet weak var loginbutton: UIButton!
    
    var attrs = [
        NSFontAttributeName : UIFont(name:"Circe-Bold",size: 17)! ,
        NSForegroundColorAttributeName : UIColor(red: 45/255, green: 182/255, blue: 187/255, alpha: 1),
        NSUnderlineStyleAttributeName : 1  ]
    
    var attributedString = NSMutableAttributedString(string:"")
    var attributedString1 = NSMutableAttributedString(string:"")

    
    override func viewDidLoad() {
        let buttonTitleStr = NSMutableAttributedString(string:"Зарегистрироваться", attributes:attrs)
        
        attributedString.appendAttributedString(buttonTitleStr)
        registration.setAttributedTitle(attributedString, forState: .Normal)
        
        let buttonTitleStr1 = NSMutableAttributedString(string:"Забыли имя пользователя или пароль?", attributes:attrs)
        attributedString1.appendAttributedString(buttonTitleStr1)
        forgotpassword.setAttributedTitle(attributedString1, forState: .Normal)
        //Making a padding object of view for first textField
        let paddingForFirst = UIView(frame: CGRectMake(0, 0, 25, self.logintext.frame.size.height))
        //Adding the padding to the second textField
        logintext.leftView = paddingForFirst
        logintext.leftViewMode = UITextFieldViewMode .Always
        //Making a padding object of view for second textField
        let paddingForSecond = UIView(frame: CGRectMake(0, 0, 25	, self.passwordtext.frame.height))
        //Adding the padding to the second textField
        passwordtext.leftView = paddingForSecond
        passwordtext.leftViewMode = UITextFieldViewMode .Always
        
        logintext.attributedPlaceholder = NSAttributedString(string: "Логин", attributes: [NSForegroundColorAttributeName: UIColor(red: 179/255, green: 179/255, blue: 179/255, alpha: 1)])
        passwordtext.attributedPlaceholder = NSAttributedString(string: "Пароль", attributes: [NSForegroundColorAttributeName: UIColor(red: 179/255, green: 179/255, blue: 179/255, alpha: 1)])
        self.navigationController?.navigationBarHidden = true
        
        passwordtext.layer.cornerRadius = 10
        logintext.layer.cornerRadius = 10
        Checkbox.layer.cornerRadius = 10
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func check(sender: AnyObject) {
        if Checkbox.imageView?.image == UIImage(named: "v") {
            Checkbox.layer.borderColor = UIColor(netHex: 0x008080).CGColor
            Checkbox.layer.borderWidth = 1.5
            Checkbox.setImage(UIImage(), forState: .Normal)
        } else {
            Checkbox.layer.borderWidth = 0
            Checkbox.setImage(UIImage(named: "v"), forState: .Normal)
        }}
    

    override func viewDidAppear(animated: Bool) {
        if self.view.frame.size.height >  736   {
            facebookbutton.layer.cornerRadius = 20
            loginbutton.layer.cornerRadius = 20
            print(facebookbutton.titleLabel?.font)
        }
            
            
            
        else if(UIDeviceOrientationIsLandscape(UIDevice.currentDevice().orientation))
        {
            facebookbutton.layer.cornerRadius = 15
            loginbutton.layer.cornerRadius = 15
            registration.contentHorizontalAlignment = UIControlContentHorizontalAlignment.Left
            haventacc.textAlignment = NSTextAlignment.Right
        }
            
        else
        {
            facebookbutton.layer.cornerRadius = 15
            loginbutton.layer.cornerRadius = 20
            registration.contentHorizontalAlignment = UIControlContentHorizontalAlignment.Center
            haventacc.textAlignment = NSTextAlignment.Center
        }
        
        

    }
    
    
        
    @IBOutlet weak var haventacc: UILabel!
    
    override func viewWillTransitionToSize(size: CGSize, withTransitionCoordinator coordinator: UIViewControllerTransitionCoordinator) {
        print(123)
        if self.view.frame.size.height >  736   {
            facebookbutton.layer.cornerRadius = 20
            loginbutton.layer.cornerRadius = 20
        }

        else if(UIDeviceOrientationIsLandscape(UIDevice.currentDevice().orientation))
                {
                    facebookbutton.layer.cornerRadius = 15
                    loginbutton.layer.cornerRadius = 15
                      registration.contentHorizontalAlignment = UIControlContentHorizontalAlignment.Left
                    haventacc.textAlignment = NSTextAlignment.Right
                }
                
        else
                {
                    facebookbutton.layer.cornerRadius = 15
                    loginbutton.layer.cornerRadius = 20
                    registration.contentHorizontalAlignment = UIControlContentHorizontalAlignment.Center
                    haventacc.textAlignment = NSTextAlignment.Center
                }
                
                
            
}
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

