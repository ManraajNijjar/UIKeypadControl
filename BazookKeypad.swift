//
//  BazookKeypad.swift
//  BazookKeypadControl
//
//  Created by Manraaj Nijjar on 1/28/18.
//  Copyright © 2018 Manraaj Nijjar. All rights reserved.
//

import UIKit

@IBDesignable
class BazookKeypad: UIControl {
    
    var associatedTextField: UITextField!
    
    var oneButton: UIButton = UIButton()
    
    var twoButton: UIButton = UIButton()
    
    var threeButton: UIButton = UIButton()
    
    var fourButton: UIButton = UIButton()
    
    var fiveButton: UIButton = UIButton()
    
    var sixButton: UIButton = UIButton()
    
    var sevenButton: UIButton = UIButton()
    
    var eightButton: UIButton = UIButton()
    
    var nineButton: UIButton = UIButton()
    
    var zeroButton: UIButton = UIButton()
    
    var deleteButton: UIButton = UIButton()
    
    var submitButton: UIButton = UIButton()
    
    var stackViewRowOne: UIStackView = UIStackView()
    var stackViewRowTwo: UIStackView = UIStackView()
    var stackViewRowThree: UIStackView = UIStackView()
    var stackViewRowFour: UIStackView = UIStackView()
    var stackViewRowFive: UIStackView = UIStackView()
    
    @IBInspectable
    var buttonSize: CGFloat = 5;
    
    @IBInspectable
    var active: Bool = false {
        didSet{
            
            oneButton.backgroundColor = UIColor.blue
            
            stackViewRowOne = UIStackView(arrangedSubviews: [oneButton, twoButton, threeButton])
            stackViewRowOne.axis = .horizontal
            stackViewRowTwo = UIStackView(arrangedSubviews: [fourButton, fiveButton, sixButton])
            stackViewRowTwo.axis = .horizontal
            stackViewRowThree = UIStackView(arrangedSubviews: [sevenButton, eightButton, nineButton])
            stackViewRowThree.axis = .horizontal
            stackViewRowFour = UIStackView(arrangedSubviews: [UIButton(), zeroButton, deleteButton])
            stackViewRowFour.axis = .horizontal
            stackViewRowFive = UIStackView(arrangedSubviews: [submitButton])
            stackViewRowFive.axis = .horizontal
            
            
            stackViewRowOne.frame.size = CGSize(width: frame.width, height: frame.height / 5)
            stackViewRowTwo.frame.size = CGSize(width: frame.width, height: frame.height / 5)
            stackViewRowThree.frame.size = CGSize(width: frame.width, height: frame.height / 5)
            stackViewRowFour.frame.size = CGSize(width: frame.width, height: frame.height / 5)
            stackViewRowFive.frame.size = CGSize(width: frame.width, height: frame.height / 5)
            
            //stackViewRowOne.frame.origin = CGPoint(x: 0, y: 0)
            
            //stackViewRowOne.addSubview(UISwitch())
            //stackViewRowOne.addSubview(UISwitch())
            //stackViewRowTwo.addSubview(UIStepper())
            
            stackViewRowOne.layer.borderWidth = 1
            stackViewRowOne.layer.borderColor = CGColor(colorSpace: CGColorSpaceCreateDeviceRGB(), components: [1.0, 1, 1, 0])!
            
            
            addSubview(stackViewRowOne)
            //addSubview(stackViewRowTwo)
            //addSubview(stackViewRowThree)
            
        }
    }
    
    
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
