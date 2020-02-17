//
//  changyonyu_ViewController.swift
//  temp1
//
//  Created by miaoz on 2019/5/7.
//  Copyright © 2019 miaoz All rights reserved.
//

import UIKit

class changyonyu_ViewController: UIViewController,choice_delgate,UITableViewDelegate,UITableViewDataSource {
    var tar:String="中文"{
        didSet{
            DispatchQueue.main.async {
                //self.tar_btn.setTitle(NSLocalizedString(self.tar, comment: "back1"), for: .normal)
                
            }
        }
    }
    
    var souce:String="英语"{
        didSet{
            DispatchQueue.main.async {
                //self.souce_btn.setTitle(NSLocalizedString(self.souce, comment: "back1"), for: .normal)
            }
        }
    }
    var textdata:[String:String]=Lautype_Apikey_date.cyytext
    let lau_date:[String:String]=Lautype_Apikey_date().Lau_date
    let speech_lau_date:[String:String]=Lautype_Apikey_date().ios_Speech_laudate()
    var soucet=Array(Lautype_Apikey_date.cyytext.keys)
    let tart=Array(Lautype_Apikey_date.cyytext.values)
    @IBAction func back2(_ sender: Any) {
        print(123)
        self.dismiss(animated: true, completion: nil)
    }
    @IBAction func Back(_ sender: Any) {
        print(123)
        self.dismiss(animated: true, completion: nil)
    }
    @IBAction func speech_btn(_ sender: Any) {
        
        let btn=sender as!UIButton
        let cell=btn.superView(of: UITableViewCell.self) as!UITableViewCell
        let rrow = self.tableview.indexPath(for: cell)?.row
        let label=cell.viewWithTag(102)as! UILabel
        tart[rrow!].speakText(lautype: speech_lau_date[tar]!)
        
    }
    @IBOutlet weak var tableview: UITableView!
    @IBAction func add_btn(_ sender: Any) {
        
    }
    func inits()
    {
        
    }
    override func viewDidAppear(_ animated: Bool) {
        inits()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableview.rowHeight=CGFloat(integerLiteral: 100)
        self.tableview.separatorStyle = UITableViewCell.SeparatorStyle.none
        self.tableview.delegate=self
        self.tableview.dataSource=self
        self.tableview.allowsSelection=false        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
