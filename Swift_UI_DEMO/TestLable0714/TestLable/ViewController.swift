//
//  ViewController.swift
//  TestLable
//
//  Created by Vincent hoover on 2018/7/14.
//  Copyright © 2018年 YH. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.view.backgroundColor = UIColor.groupTableViewBackground
        
        
        //创建一个经常使用的lable
        let label: UILabel = UILabel()
        label.frame = CGRect(x:20,y:30,width:130,height:40)
        
        label.backgroundColor = UIColor.gray
        label.text = "labelText"
        label.font = UIFont.systemFont(ofSize: 18);//(system font 17 plain)
        //        label.font = UIFont.boldSystemFont(ofSize: 17);//加粗
        //        label.font = UIFont.italicSystemFont(ofSize: 17);//斜体字体
        //        label.font = UIFont.init(name: "Arial", size: 17)
        //        label.font = UIFont.systemFont(ofSize: 17, weight: UIFont.Weight(rawValue: 18))
        
        label.textColor = UIColor.blue
        label.shadowColor = UIColor.red
        label.shadowOffset = CGSize.init(width: 1, height:1);//shadow 向右偏移width,向下偏移height
        label.textAlignment = .center
        label.lineBreakMode = NSLineBreakMode.byCharWrapping//已字符为显示单位,可以避免中英文不正确分行
        
        label.highlightedTextColor = .red
        //        label.isHighlighted = true
        label.isUserInteractionEnabled = true// default is NO
        
        self.view.addSubview(label)
        
        
        //创建一个带属性attribute富文本的lable
        let myAttributeLabel = UILabel.init(frame: CGRect.init(x: 20, y: 250, width: 200, height: 100));
        myAttributeLabel.numberOfLines = 0
        myAttributeLabel.backgroundColor = UIColor.groupTableViewBackground
        let attributeStr = NSMutableAttributedString.init(string: "这是一段属性文字,文字行间距为5", attributes: [NSAttributedStringKey.backgroundColor:UIColor.red])//NSAttributedString 不可变
        attributeStr.addAttributes([NSAttributedStringKey.foregroundColor:UIColor.yellow,NSAttributedStringKey.font:UIFont.systemFont(ofSize: 12)], range:NSMakeRange(0, 2));
        //设置行间距
        let paragraphStyle = NSMutableParagraphStyle()//NSParagraphStyle 不可变
        paragraphStyle.lineSpacing = 5
        attributeStr.addAttributes([NSAttributedStringKey.paragraphStyle: paragraphStyle], range: NSMakeRange(0, attributeStr.length))
        myAttributeLabel.attributedText = attributeStr
        
        myAttributeLabel.sizeToFit()
        
        self.view.addSubview(myAttributeLabel)
        
        
        
        //创建一个固定宽度文本宽度,自适应文字大小的lable
        let fitWidthLabel: UILabel = UILabel()
        fitWidthLabel.text = "根据文本宽度自适应文字大小"
        fitWidthLabel.backgroundColor = UIColor.gray
        fitWidthLabel.frame = CGRect(x:152,y:30,width:160,height:30)
        //        label2.isHighlighted = true
        fitWidthLabel.adjustsFontSizeToFitWidth = true
        //控制文本的基线位置，只有文本行数为1是有效,与adjustsFontSizeToFitWidth 配合使用,形成根据文本frame宽度自适应文字font大小
        //        label.baselineAdjustment = UIBaselineAdjustment.alignBaselines//默认值文本最上端和label中线对齐
        fitWidthLabel.baselineAdjustment = UIBaselineAdjustment.alignCenters//文本中线和label中线对齐
        self.view.addSubview(fitWidthLabel)

    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

