//
//  ViewController.swift
//  TestUITextField0716
//
//  Created by Vincent hoover on 2018/7/16.
//  Copyright © 2018年 YH. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let myTextFiled = UITextField.init(frame: CGRect.init(x: 20, y: 40, width: 100, height: 44))
        myTextFiled.backgroundColor = UIColor.groupTableViewBackground
        self.view.addSubview(myTextFiled)
        //设置代理
        myTextFiled.delegate = self
        myTextFiled.placeholder = "input"
        myTextFiled.clearButtonMode = UITextFieldViewMode.always
        //设置文本框外观样式
        myTextFiled.borderStyle = UITextBorderStyle.roundedRect//没有样式
        
        //文本沿着基线缩小到minFontSize
        myTextFiled.adjustsFontSizeToFitWidth = true
        //设置最小字号(配合adjustsFontSizeToFitWidth使用)
        myTextFiled.minimumFontSize = 14
        
        myTextFiled.autocapitalizationType = UITextAutocapitalizationType.words//单词首字母大写（以空格为区分）
        
        //设置对文本加密
        myTextFiled.isSecureTextEntry = true
        //设置键盘样式
        myTextFiled.keyboardType = .numberPad
        //设置键盘风格
        myTextFiled.keyboardAppearance = UIKeyboardAppearance.light//亮色的
        //设置键盘的return键样式
        myTextFiled.returnKeyType = UIReturnKeyType.go
        
        
        //设置自定义弹出视图
        let keyBordView = UIView.init(frame: CGRect.init(x: 0, y: 25, width: 200, height: 300))
        keyBordView.backgroundColor = UIColor.brown
//        myTextFiled.inputView = keyBordView
        
        
    }
//TODO: swift中标注的分类
//MARK: swift中mark标注
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
  
//MARK: <UITextFieldDelegate>
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        view.endEditing(true)
        return true
    }
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        print(string)
        return true
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

