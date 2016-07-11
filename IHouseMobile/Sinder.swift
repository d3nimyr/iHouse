//
//  Sinder.swift
//  FamilyApp
//
//  Created by Add Creative Inc. on 09.06.16.
//  Copyright © 2016 Add Creative Inc. All rights reserved.
//

import UIKit
public enum transferMethod {
    case PUSH
    case POP
    case PRESENT
    case West
}

public enum Devicer {
    case iPadPro
    case iPad
    case iPhone4
    case iPhone5
    case iPhone6
    case iPhone6Plus
    case iPhone4Landscape
    case iPhone5Landscape
    case iPhone6Landscape
    case iPhone6PlusLandscape
    case iPadProLandscape
    case iPadLandscape
    case undefiened
}

public extension UIViewController {
    
    func getDevice() -> Devicer {
        let frame = self.view.frame.size
        
        if frame == CGSize(width: 1024, height: 1366) {
            return Devicer.iPadPro
        } else if frame == CGSize(width: 768, height: 1024) {
            return Devicer.iPad
        } else if frame == CGSize(width: 320, height: 480) {
            return Devicer.iPhone4
        } else if frame == CGSize(width: 320, height: 568) {
            return Devicer.iPhone5
        } else if frame == CGSize(width: 375, height: 667) {
            return Devicer.iPhone6
        } else if frame == CGSize(width: 414, height: 736) {
            return Devicer.iPhone6Plus
        } else if frame == CGSize(width: 1366, height: 1024) {
            return Devicer.iPadProLandscape
        } else if frame == CGSize(width: 1024, height: 768) {
            return Devicer.iPadLandscape
        } else if frame == CGSize(width: 480, height: 320) {
            return Devicer.iPhone4Landscape
        } else if frame == CGSize(width: 568, height: 320) {
            return Devicer.iPhone5Landscape
        } else if frame == CGSize(width: 667, height: 375) {
            return Devicer.iPhone6Landscape
        } else if frame == CGSize(width: 736, height: 414) {
            return Devicer.iPhone6PlusLandscape
        } else {
            return Devicer.undefiened
        }
    }
    
    //delay in seconds with closure
    func delay(delay:Double, closure:()->()) {
        
        dispatch_after(
            dispatch_time(
                DISPATCH_TIME_NOW,
                Int64(delay * Double(NSEC_PER_SEC))
            ),
            dispatch_get_main_queue(), closure)
    }
    
    //set image to View and add new elemnt UIImageView
    func setImageToBackground(image: UIImage) {
        let replaceView = UIImageView(image: image)
        replaceView.frame = view.bounds
        replaceView.contentMode = .ScaleAspectFill
        self.view.addSubview(replaceView)
        self.view.sendSubviewToBack(replaceView)
    }
    
    // open new VC
    func transferVCwith(identifier: String, method: transferMethod) {
        if method == .POP {
            self.navigationController?.popViewControllerAnimated(true)
        } else if method == .PRESENT {
            self.presentViewController(self.storyboard!.instantiateViewControllerWithIdentifier(identifier), animated: true, completion: nil)
        } else if method == .PUSH {
            self.navigationController?.pushViewController(self.storyboard!.instantiateViewControllerWithIdentifier(identifier), animated: true)
        }
    }
    
    //easy way to show alert
    func showAlert(title: String, message: String) {
        let alertController = UIAlertController(title: title, message:
            message, preferredStyle: UIAlertControllerStyle.Alert)
        alertController.addAction(UIAlertAction(title: "Ок", style: UIAlertActionStyle.Default,handler: nil))
        
        self.presentViewController(alertController, animated: true, completion: nil)
    }
    
    //checking email string is valid
    func isValid(email : String) -> Bool {
        
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}"
        
        let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        
        if emailTest.evaluateWithObject(email) {
            return true
        }
        return false
    }
}


//set image to imageView from string
public extension UIImageView {
    convenience init(string: String) {
        self.init(image: UIImage(named: string))
    }
}

public extension UIColor {
    //UIColor from HEX
    convenience init(red: Int, green: Int, blue: Int) {
        assert(red >= 0 && red <= 255, "Invalid red component")
        assert(green >= 0 && green <= 255, "Invalid green component")
        assert(blue >= 0 && blue <= 255, "Invalid blue component")
        self.init(red: CGFloat(red) / 255.0, green: CGFloat(green) / 255.0, blue: CGFloat(blue) / 255.0, alpha: 1.0)
    }
    convenience init(netHex:Int) {
        self.init(red:(netHex >> 16) & 0xff, green:(netHex >> 8) & 0xff, blue:netHex & 0xff)
    }
}

