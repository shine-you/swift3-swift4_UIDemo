//
//  ViewController.swift
//  TestUIViewController0718
//
//  Created by Vincent hoover on 2018/7/18.
//  Copyright © 2018年 YH. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIViewControllerTransitioningDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
       self.view.backgroundColor = UIColor.groupTableViewBackground
        
        
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        //1,窗口跳转
        self.jumpWithWindow()
        //2,Modal 跳转
        jumpWithPresent()
        //3,nav压栈的方式
        jumpWithPush()
    }

    func jumpWithWindow() {
        let firstVC = FirstViewController()
        //窗口跳转
        let myWindow = UIApplication.shared.delegate?.window
        myWindow??.rootViewController = firstVC
        
        //动画转换
        let key = "transition"
        let transition = CATransition()
        /// 动画时长
        transition.duration = CFTimeInterval(1.2)
        /// 动画类型
        transition.type = "moveIn"
        /// 动画方向
        transition.subtype = "fromRight"
        /// 缓动函数
        transition.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseIn)
        /// 完成动画删除
        transition.isRemovedOnCompletion = true
        myWindow??.layer.add(transition, forKey: key)
    }
   
    func jumpWithPresent() {
    
        //Modal 的方式
        let firstVC = FirstViewController()
        firstVC.modalTransitionStyle = UIModalTransitionStyle.flipHorizontal
        self.present(firstVC, animated: true, completion: nil)
        //消失
//        self.dismiss(animated: true, completion: nil)

    }
    func jumpWithPush() {
        //nav压栈的方式
        let firstVC = FirstViewController()
        self.navigationController?.pushViewController(firstVC, animated: true)
        //返回
//        self.navigationController?.popViewController(animated: true)
        
    }
}












