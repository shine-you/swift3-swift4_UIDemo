//
//  ViewController.swift
//  TestUINavigationController0718
//
//  Created by Vincent hoover on 2018/7/18.
//  Copyright © 2018年 YH. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
//MARK:- 导航栏上面添加按钮
        //1,根据文字添加
        let rightBarBtn = UIBarButtonItem.init(title: "right", style: UIBarButtonItemStyle.plain, target: self, action: #selector(action_riht))
        self.navigationItem.rightBarButtonItem = rightBarBtn
        //2,系统样式添加
        let leftBarBtn = UIBarButtonItem.init(barButtonSystemItem: UIBarButtonSystemItem.cancel, target: self, action: #selector(action_left))
        
        //3,
        let image = UIImage(named:"icon_iPad-29")?.withRenderingMode(.alwaysOriginal)
        let leftBarBtn2 = UIBarButtonItem.init(image: image, style: UIBarButtonItemStyle.done, target: self, action: #selector(action_left))
        self.navigationItem.leftBarButtonItem = leftBarBtn2
//        self.navigationItem.leftBarButtonItems = [leftBarBtn,leftBarBtn2]

        let imv = UIImageView.init(image: UIImage.init(named: "icon_iPad-29"))
        imv.frame = CGRect.init(x: 20, y: 70, width: 40, height: 40)
        self.view.addSubview(imv)
        
        
    }
    @objc func action_riht(){
        print("right")
    }
    @objc func action_left(){
        print("action_left")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

