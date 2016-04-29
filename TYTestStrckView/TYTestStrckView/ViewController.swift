//
//  ViewController.swift
//  TYTestStrckView
//
//  Created by Mac on 16/4/1.
//  Copyright © 2016年 TY. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var stackView:UIStackView! = UIStackView()
    var nestedStackView = UIStackView()
    var label1 : UILabel?
    override func viewDidLoad() {
        super.viewDidLoad()
        
        stackView.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(stackView)
        // Main UIStackView contraints, nearly fills its parent view
        self.view.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("V:|-30-[stackView]-30-|",options: NSLayoutFormatOptions.AlignAllLeading,metrics: nil, views: ["stackView":stackView]))
        self.view.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("H:|-10-[stackView]-10-|",options: NSLayoutFormatOptions.AlignAllLeading,metrics: nil, views: ["stackView":stackView]))
        stackView.backgroundColor = UIColor.brownColor();
        stackView.axis = .Vertical
        stackView.alignment = .Fill
        stackView.spacing = 10
        stackView.distribution = .FillEqually
        
        var lbl = UILabel()
        lbl.text = "Label 1"
        lbl.backgroundColor = UIColor.redColor()
        stackView.addArrangedSubview(lbl)
        label1 = lbl
        
        lbl = UILabel()
        lbl.text = "Label 2"
        lbl.backgroundColor = UIColor.greenColor()
        stackView.addArrangedSubview(lbl)
        
        nestedStackView.axis = .Horizontal
        nestedStackView.alignment = .Fill
        nestedStackView.spacing = 10
        nestedStackView.distribution = .FillEqually
        nestedStackView.addArrangedSubview(UIButton(type: .InfoDark))
        nestedStackView.addArrangedSubview(UIButton(type: .InfoLight))
        nestedStackView.addArrangedSubview(UIButton(type: .ContactAdd))
        stackView.addArrangedSubview(nestedStackView)
        
        let btn = UIButton(type: .System)
        btn.setTitle("Press Me", forState: .Normal)
        btn.backgroundColor = UIColor.blueColor()
//        btn.addTarget(self, action: "pressedMe:", forControlEvents: UIControlEvents.TouchUpInside)
        btn.addTarget(self, action: Selector("pressedMe:"), forControlEvents: UIControlEvents.TouchUpInside)
        stackView.addArrangedSubview(btn)

    }
    
//    func pressedMe(sender: UIButton!){
//        UIView.animateWithDuration(0) {
//            self.nestedStackView.hidden = !self.nestedStackView.hidden
//        }
//    }
    func pressedMe(sender: UIButton!){
        stackView.removeArrangedSubview(label1!)
        stackView.removeArrangedSubview(nestedStackView)
        nestedStackView.removeFromSuperview()
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

