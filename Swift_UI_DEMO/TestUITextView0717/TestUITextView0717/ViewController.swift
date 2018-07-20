//
//  ViewController.swift
//  TestUITextView0717
//
//  Created by Vincent hoover on 2018/7/17.
//  Copyright © 2018年 YH. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITextViewDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let myTextView = UITextView.init(frame: CGRect.init(x: 20, y: 40, width: 200, height: 44));
        myTextView.backgroundColor = UIColor.groupTableViewBackground
        self.view.addSubview(myTextView)
        //设置代理
        myTextView.delegate = self
        //字体设置
        myTextView.textAlignment = .left
        myTextView.textColor = UIColor.blue
        myTextView.font = UIFont.systemFont(ofSize: 14)
        //光标颜色
        myTextView.tintColor = UIColor.red
        //滑动指示器
        myTextView.showsHorizontalScrollIndicator = true
        
        //设置第一响应
        myTextView.becomeFirstResponder()
        myTextView.text = "12345"
        //指定位置插入光标
        myTextView.selectedRange = NSMakeRange(2, 0)
        //光标选中指定文本位置
//        myTextView.selectedRange = NSMakeRange(1, 2)
        
        NotificationCenter.default.addObserver(self, selector: #selector(textViewTextDidChange(_:)), name: NSNotification.Name.UITextViewTextDidChange, object: myTextView)
        
        
    }
    @objc private func textViewTextDidChange(_ notification: NSNotification){
        print("文本改变了")
    }
    
// MARK: - UITextViewDelegate
    func textViewDidBeginEditing(_ textView: UITextView) {
        print("开始编辑")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

