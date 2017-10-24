//
//  HomeViewController.swift
//  Rippton
//
//  Created by mao on 10/23/17.
//  Copyright © 2017 com.icomico.comi. All rights reserved.
//

import UIKit

class HomeViewController: KMViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //self.transparentNavibar()
        self.navBarBgAlpha = 0
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func naviBtnClick(_ sender: Any) {
        let testController = TestViewController(nibName:"TestViewController", bundle:nil)
        testController.hidesBottomBarWhenPushed = true
        self.navigationController?.pushViewController(testController, animated: true)
    }
}
