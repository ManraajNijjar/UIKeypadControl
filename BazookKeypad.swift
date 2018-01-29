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
            twoButton.backgroundColor = UIColor.red
            threeButton.backgroundColor = UIColor.green
            
            stackViewRowOne = stackViewSetup(views: [oneButton, twoButton, threeButton])
            
            stackViewRowTwo = stackViewSetup(views: [fourButton, fiveButton, sixButton])
            stackViewRowThree = stackViewSetup(views: [sevenButton, eightButton, nineButton])
            stackViewRowFour = stackViewSetup(views: [UIButton(), zeroButton, deleteButton])
            stackViewRowFive = stackViewSetup(views: [submitButton])
            
            
            addSubview(stackViewRowOne)
            //addSubview(stackViewRowTwo)
            //addSubview(stackViewRowThree)
            
        }
    }
    
    func stackViewSetup(views: [UIView]) -> UIStackView {
        var stackViewForSetup = UIStackView()
        stackViewForSetup = UIStackView(arrangedSubviews: views)
        stackViewForSetup.axis = .horizontal
        stackViewForSetup.distribution = .fillEqually
        stackViewForSetup.spacing = (frame.width / 10)
        stackViewForSetup.frame.size = CGSize(width: frame.width, height: frame.height / 5)
        
        return stackViewForSetup
    }
    
    
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
