//
//  TYXIBViewController.swift
//  CellTypeTableView
//
//  Created by 汤义 on 16/5/30.
//  Copyright © 2016年 汤义. All rights reserved.
//

import UIKit

class TYXIBViewController: UIViewController ,UITableViewDelegate ,UITableViewDataSource{
    let id = "cell"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.view.backgroundColor = UIColor.whiteColor()
        self.initTableview()
    }

    func initTableview() -> Void {
        let tableView = UITableView(frame: UIScreen.mainScreen().bounds, style: UITableViewStyle.Plain)
        tableView.delegate = self
        tableView.dataSource = self
        self.view.addSubview(tableView)
        
        let nib = UINib(nibName: "TYXIBTableViewCell", bundle: nil)
        tableView.registerNib(nib, forCellReuseIdentifier: id)
        
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell : TYXIBTableViewCell = (tableView.dequeueReusableCellWithIdentifier(id, forIndexPath: indexPath)) as! TYXIBTableViewCell
        return cell
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
