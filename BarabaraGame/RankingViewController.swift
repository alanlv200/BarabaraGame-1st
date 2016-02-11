//
//  RankingViewController.swift
//  BarabaraGame
//
//  Created by 平山大翼 on 2016/02/11.
//  Copyright © 2016年 平山大翼. All rights reserved.
//

import UIKit

class RankingViewController: UIViewController {
    
    @IBOutlet var ranking1: UILabel!
    @IBOutlet var ranking2: UILabel!
    @IBOutlet var ranking3: UILabel!
    
    let defaults: NSUserDefaults = NSUserDefaults.standardUserDefaults()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        ranking1.text = String(defaults.integerForKey("score1"))
        ranking2.text = String(defaults.integerForKey("score2"))
        ranking3.text = String(defaults.integerForKey("score3"))
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func toTop() {
        self.dismissViewControllerAnimated(true, completion: nil)
    
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
