//
//  changyonyu+tableview.swift
//  temp1
//
//  Created by miaoz on 2019/5/7.
//  Copyright © 2019 miaoz All rights reserved.
//

import Foundation
extension changyonyu_ViewController{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print(textdata.count)
         return textdata.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == textdata.count {
            let cell=tableview.dequeueReusableCell(withIdentifier: "addcell", for: indexPath)
            return cell
        }
        else{
        let cell=tableview.dequeueReusableCell(withIdentifier: "cyycell", for: indexPath)
        let label=cell.viewWithTag(101) as! UILabel
        let label2=cell.viewWithTag(102) as! UILabel
        label.adjustsFontSizeToFitWidth=true
        label2.adjustsFontSizeToFitWidth=true
        label.text="   "+soucet[indexPath.row]
        label.backgroundColor=#colorLiteral(red: 0.8156862745, green: 0.8156862745, blue: 0.8156862745, alpha: 1)
        label2.backgroundColor=#colorLiteral(red: 0.937254902, green: 0.937254902, blue: 0.937254902, alpha: 1)
        //label.layer.cornerRadius = 20;
        label.textAlignment=NSTextAlignment(rawValue: 0)!
        //label.clipsToBounds = true
        label2.text="   "+tart[indexPath.row]
       // label2.layer.cornerRadius = 20;
        label2.textAlignment=NSTextAlignment(rawValue: 0)!
        //label2.clipsToBounds = true
        cell.layer.cornerRadius=10
        cell.clipsToBounds=true
        print(label.text)
        return cell
        }
    }
    
}
