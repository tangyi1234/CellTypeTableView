//
//  ViewController.swift
//  CellTypeTableView
//
//  Created by 汤义 on 16/5/30.
//  Copyright © 2016年 汤义. All rights reserved.
//

import UIKit

class ViewController: UIViewController ,UITableViewDelegate ,UITableViewDataSource{
    private var array : NSArray?
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.view.backgroundColor = UIColor.whiteColor()
        self.initTableview()
        array = ["纯代码创建","xib","storyboard创建"]
    }

    func initTableview() -> Void {
        let tableView = UITableView(frame: UIScreen.mainScreen().bounds, style: UITableViewStyle.Plain)
        tableView.delegate = self
        tableView.dataSource = self
        self.view.addSubview(tableView)
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let identifier="identtifier";
        var cell = tableView.dequeueReusableCellWithIdentifier(identifier);
        if(cell == nil){
            cell=UITableViewCell(style: UITableViewCellStyle.Value1, reuseIdentifier: identifier);
        }
        cell!.textLabel?.text = array![indexPath.row] as? String
        return cell!
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        switch indexPath.row {
        case 0:
            let code = TYCodeViewController()
            self.navigationController?.pushViewController(code, animated: true)
            break
        case 1:
            let code = TYXIBViewController()
            self.navigationController?.pushViewController(code, animated: true)
            break
        case 2:
            let storyboard = UIStoryboard(name: "type", bundle: NSBundle.mainBundle())
            let resultViewController = storyboard.instantiateViewControllerWithIdentifier("TYStoryboardViewController")
            self.navigationController?.pushViewController(resultViewController, animated: true)
            break
        default:
            break
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

