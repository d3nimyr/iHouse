//
//  RegisterViewController.swift
//  IHouseMobile
//
//  Created by Add Creative Inc. on 17.06.16.
//  Copyright © 2016 DevLabs. All rights reserved.
//

import UIKit

class RegisterViewController: UIViewController {

    @IBOutlet weak var fbbuton: UIButton!
    @IBOutlet weak var loginField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var mailField: UITextField!
    @IBOutlet weak var confirmMailField: UITextField!
    @IBOutlet weak var checkboxfield: UIButton!
    @IBOutlet weak var registerbutton: UIButton!
    @IBOutlet weak var Back: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //Making a padding object of view for first textField
        let paddingForFirst = UIView(frame: CGRectMake(0, 0, 25, self.loginField.frame.size.height))
        //Adding the padding to the second textField
        loginField.leftView = paddingForFirst
        loginField.leftViewMode = UITextFieldViewMode .Always
        //Making a padding object of view for second textField
        let paddingForSecond = UIView(frame: CGRectMake(0, 0, 25, self.passwordField.frame.height))
        //Adding the padding to the second textField
        passwordField.leftView = paddingForSecond
        passwordField.leftViewMode = UITextFieldViewMode .Always
        loginField.attributedPlaceholder = NSAttributedString(string: "Логин", attributes: [NSForegroundColorAttributeName: UIColor(red: 179/255, green: 179/255, blue: 179/255, alpha: 1)])
        passwordField.attributedPlaceholder = NSAttributedString(string: "Пароль", attributes: [NSForegroundColorAttributeName: UIColor(red: 179/255, green: 179/255, blue: 179/255, alpha: 1)])
        self.navigationController?.navigationBarHidden = true
        // Do any additional setup after loading the view.
    
    
    //Making a padding object of view for first textField
    let paddingForFirst1 = UIView(frame: CGRectMake(0, 0, 25, self.mailField.frame.size.height))
    //Adding the padding to the second textField
    mailField.leftView = paddingForFirst1
    mailField.leftViewMode = UITextFieldViewMode .Always
    //Making a padding object of view for second textField
    let paddingForSecond1 = UIView(frame: CGRectMake(0, 0, 25, self.confirmMailField.frame.height))
    //Adding the padding to the second textField
    confirmMailField.leftView = paddingForSecond1
    confirmMailField.leftViewMode = UITextFieldViewMode .Always
    mailField.attributedPlaceholder = NSAttributedString(string: "Email", attributes: [NSForegroundColorAttributeName: UIColor(red: 179/255, green: 179/255, blue: 179/255, alpha: 1)])
    confirmMailField.attributedPlaceholder = NSAttributedString(string: "Подтвердите Email", attributes: [NSForegroundColorAttributeName: UIColor(red: 179/255, green: 179/255, blue: 179/255, alpha: 1)])
    self.navigationController?.navigationBarHidden = true

    }
    override func viewDidLayoutSubviews() {
        fbbuton.layer.cornerRadius = fbbuton.frame.height / 2
        registerbutton.layer.cornerRadius = registerbutton.frame.height / 2
        
        loginField.layer.cornerRadius = 10
        passwordField.layer.cornerRadius = 10
        checkboxfield.layer.cornerRadius = 10
        mailField.layer.cornerRadius = 10
        confirmMailField.layer.cornerRadius = 10
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func check(sender: AnyObject) {
        if checkboxfield.imageView?.image == UIImage(named: "v") {
            checkboxfield.layer.borderColor = UIColor(netHex: 0x008080).CGColor
            checkboxfield.layer.borderWidth = 1.5
            checkboxfield.setImage(UIImage(), forState: .Normal)
        } else {
            checkboxfield.layer.borderWidth = 0
            checkboxfield.setImage(UIImage(named: "v"), forState: .Normal)
        }
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
