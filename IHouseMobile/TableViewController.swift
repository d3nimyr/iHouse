
//
//  TableViewController.swift
//  IHouseMobile
//
//  Created by Add Creative Inc. on 18.06.16.
//  Copyright © 2016 DevLabs. All rights reserved.
//

import UIKit

class TableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var downloadButton: UIButton!
    @IBOutlet weak var sendEmailButto: UIButton!
    @IBOutlet weak var table: UITableView!
    
    let elements = [("Укрытие пленкой", "чел/день", "3584"), ("Укрытие пленкой", "чел/день", "3584"),("Укрытие пленкой", "чел/день", "3584"),("Укрытие пленкой", "чел/день", "3584"),("Укрытие пленкой", "чел/день", "3584"),("Изготовление вспомогательных средств (кисть, валик, полированный шпатель)", "чел/день", "3584"),("Укрытие пленкой", "чел/день", "3584"),("Укрытие пленкой", "чел/день", "3584"),("Укрытие пленкой", "чел/день", "3584")]
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return elements.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = table.dequeueReusableCellWithIdentifier("tbcell", forIndexPath: indexPath) as! TableViewCell
        if indexPath.row == 0 {
            cell.labelname.text = "НАИМИНОВАНИЕ РАБОТ"
            cell.labelname.font = UIFont(name:"Circe-Bold", size: 17.0)
            cell.labelcount.font = UIFont(name:"Circe-Bold", size: 17.0)
            cell.labelSystem.font = UIFont(name:"Circe-Bold", size: 17.0)
            cell.labelSystem.text = "ЕД. ИЗМ."
            cell.labelcount.text = "ЦЕНА, РУБ."
            cell.labelname.textColor = UIColor(netHex: 0x2AA9AE)
            cell.labelSystem.textColor = UIColor(netHex: 0x2AA9AE)
            cell.labelcount.textColor = UIColor(netHex: 0x2AA9AE)
        } else if indexPath.row % 2 == 0 {
            cell.labelname.text = elements[indexPath.row - 1].0
            cell.labelSystem.text = elements[indexPath.row - 1].1
            cell.labelcount.text = elements[indexPath.row - 1].2
            
            cell.labelname.textColor = UIColor.blackColor()
            cell.labelSystem.textColor = UIColor.blackColor()
            cell.labelcount.textColor = UIColor.blackColor()
            cell.backgroundColor = UIColor(netHex: 0xE6F7F8)
        } else {
            cell.labelname.text = elements[indexPath.row - 1].0
            cell.labelSystem.text = elements[indexPath.row - 1].1
            cell.labelcount.text = elements[indexPath.row - 1].2
            
            cell.labelname.textColor = UIColor.blackColor()
            cell.labelSystem.textColor = UIColor.blackColor()
            cell.labelcount.textColor = UIColor.blackColor()
            cell.backgroundColor = UIColor.whiteColor()
        }
        
        if getDevice() == Devicer.iPhone4 || getDevice() == Devicer.iPhone5 || getDevice() == Devicer.iPhone6 || getDevice() == Devicer.iPhone6Plus || getDevice() == Devicer.iPhone6PlusLandscape || getDevice() == Devicer.iPhone6Landscape || getDevice() == Devicer.iPhone5Landscape || getDevice() == Devicer.iPhone4Landscape {
            cell.labelname.font = UIFont(name: "Circe-Regular", size: 16.0)
            cell.labelSystem.font = UIFont(name: "Circe-Regular", size: 16.0)
            cell.labelcount.font = UIFont(name: "Circe-Regular", size: 16.0)
        }
        
        
        return cell

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        table.delegate = self
        table.dataSource = self
        downloadButton.layer.cornerRadius = 24
        sendEmailButto.layer.cornerRadius = 24
        sendEmailButto.layer.borderColor = UIColor(netHex: 0xFC4755).CGColor
        sendEmailButto.layer.borderWidth = 1.5
        
        table.estimatedRowHeight = 44
        table.rowHeight = UITableViewAutomaticDimension
 
        // Do any additional setup after loading the view.
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        downloadButton.layer.cornerRadius = 24
        sendEmailButto.layer.cornerRadius = 24
        if getDevice() == Devicer.iPhone4 || getDevice() == Devicer.iPhone5 || getDevice() == Devicer.iPhone6 || getDevice() == Devicer.iPhone6Plus {
            sendEmailButto.layer.cornerRadius = 15
            downloadButton.layer.cornerRadius = 15
        } else if getDevice() == Devicer.iPhone6PlusLandscape || getDevice() == Devicer.iPhone6Landscape || getDevice() == Devicer.iPhone5Landscape || getDevice() == Devicer.iPhone4Landscape {
            downloadButton.layer.cornerRadius = 20
            sendEmailButto.layer.cornerRadius = 20
        }
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
