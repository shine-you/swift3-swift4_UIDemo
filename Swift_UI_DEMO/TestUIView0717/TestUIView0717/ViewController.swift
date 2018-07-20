//
//  ViewController.swift
//  TestUIView0717
//
//  Created by Vincent hoover on 2018/7/17.
//  Copyright © 2018年 YH. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let myView = UIView.init(frame: CGRect.init(x: 20, y: 40, width: 300, height: 44))
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        myView.backgroundColor = UIColor.brown
        view.addSubview(myView)
        //设置透明度
        myView.alpha = 0.8
        
        //设置圆角
        myView.layer.cornerRadius = 5
        myView.layer.masksToBounds = true
        
        //设置边框
        myView.layer.borderColor = UIColor.red.cgColor
        myView.layer.borderWidth = 3;
        
        
        UIView.animate(withDuration: 2.6, animations: {
            var lastFrame = self.myView.frame
            lastFrame.origin.y += 50
            self.myView.frame = lastFrame
            //不执行动画
            UIView.performWithoutAnimation {
                self.myView.alpha = 0.3
            }
            
        }) { (true) in
            print("complete")
            self.myView.alpha = 0.9
        }


        let xorig = myView.center.x
        //动画往返
        let opts = UIViewAnimationOptions.autoreverse
        //动画重复/往返
        let opts2: UIViewAnimationOptions = [.autoreverse , .repeat]
        UIView.animate(withDuration: 2, delay: 5, options: opts2, animations: {
            self.myView.center.x += 100
            UIView.setAnimationRepeatCount(4)
        }, completion: { _ in
            self.myView.center.x = xorig
        })

    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        //移除所有动画
        self.myView.layer.removeAllAnimations()
    }
}

class MyView: UIView {
    
    
    override func didMoveToSuperview() {
        print("didMoveToSuperview")
    }
    override func willMove(toSuperview newSuperview: UIView?) {
        print("willMove")
    }
    
}
