//
//  ViewController.swift
//  TestButton
//
//  Created by Vincent hoover on 2018/7/14.
//  Copyright © 2018年 YH. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        let myBtn = UIButton.init(type: .custom)
        myBtn.backgroundColor = UIColor.brown
        myBtn.frame = .init(x: 30, y: 30, width: 100, height: 40)
        myBtn.setTitle("带图片的按钮", for: .normal)
        //按钮内容的边距（顶部，左边，底部，左边）
        myBtn.contentEdgeInsets = (UIEdgeInsets.init(top: 20, left: -20, bottom: 0, right: 0))
        //按钮上文本框的边距
        myBtn.titleEdgeInsets = UIEdgeInsetsMake(5,0, 10,0)
        
        //设置按钮UIImageView上的图片
        myBtn.setImage(UIImage.init(named: "icon"), for: .normal)
        //设置按钮背景上的图片
        myBtn.setBackgroundImage(UIImage.init(named: "iconBg"), for: .normal)
        //按钮上图片的边距
        myBtn.imageEdgeInsets = UIEdgeInsetsMake(10, 0, 20, 0)
        //高亮状态下变灰
        myBtn.showsTouchWhenHighlighted = true

        self.view.addSubview(myBtn)
       
        
        
        
        let myBtn2 = UIButton.init(frame: .init(x: 30, y: 130, width: 100, height: 40))
        myBtn2.backgroundColor = UIColor.init(white: 0.9, alpha: 1)
        self.view.addSubview(myBtn2)
        
        //设置按钮的文字和文字的颜色
        //普通状态
        myBtn2.setTitle("普通", for: UIControlState.normal)
        myBtn2.setTitleColor(UIColor.blue, for: .normal)
        
        //高亮状态
        myBtn2.setTitle("高亮", for:.highlighted)
        myBtn2.setTitleColor(.red, for: .highlighted)
        //添加点击事件
        myBtn2.addTarget(self, action: #selector(action_btn(btn:)), for: .touchUpInside)
 
    }


    @objc func action_btn(btn: UIButton) -> () {
        print("点击\(btn.currentTitle!)")

    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
        
        
        
    }

    
    
    


}

