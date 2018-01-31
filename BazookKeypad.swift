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
    var submitFunction : (()  -> Void)!
    
    var stackViewRowOne: UIStackView = UIStackView()
    var stackViewRowTwo: UIStackView = UIStackView()
    var stackViewRowThree: UIStackView = UIStackView()
    var stackViewRowFour: UIStackView = UIStackView()
    var stackViewRowFive: UIStackView = UIStackView()
    
    var encompassingStackView: UIStackView = UIStackView()
    
    @IBInspectable
    var buttonSize: CGFloat = 5;
    
    @IBInspectable
    var buttonColor: UIColor = UIColor.orange
    
    @IBInspectable
    var active: Bool = false {
        didSet{
            
            oneButton = setupButton(buttonText: "1")
            twoButton = setupButton(buttonText: "2")
            threeButton = setupButton(buttonText: "3")
            
            fourButton = setupButton(buttonText: "4")
            fiveButton = setupButton(buttonText: "5")
            sixButton = setupButton(buttonText: "6")
            
            sevenButton = setupButton(buttonText: "7")
            eightButton = setupButton(buttonText: "8")
            nineButton = setupButton(buttonText: "9")
            
            zeroButton = setupButton(buttonText: "0")
            deleteButton = setupButton(buttonText: "Delete")
            submitButton = setupButton(buttonText: "Submit")
            
            stackViewRowOne = stackViewSetup(views: [oneButton, twoButton, threeButton])
            stackViewRowTwo = stackViewSetup(views: [fourButton, fiveButton, sixButton])
            stackViewRowThree = stackViewSetup(views: [sevenButton, eightButton, nineButton])
            stackViewRowFour = stackViewSetup(views: [UIButton(), zeroButton, deleteButton])
            stackViewRowFive = stackViewSetup(views: [submitButton])

            
            
            encompassingStackView = UIStackView(arrangedSubviews: [stackViewRowOne, stackViewRowTwo, stackViewRowThree, stackViewRowFour, stackViewRowFive])
            encompassingStackView.axis = .vertical
            encompassingStackView.distribution = .fillEqually
            encompassingStackView.frame = frame
            encompassingStackView.frame.origin = CGPoint(x: 0, y: 0)
            encompassingStackView.spacing = (frame.height * 0.05)
            addSubview(encompassingStackView)
            
            /*
            //oneButton.frame.size = CGSize(width: stackViewRowOne.frame.height, height: stackViewRowOne.frame.height)
            oneButton.widthAnchor.constraint(equalToConstant: stackViewRowOne.frame.height).isActive = true
            oneButton.heightAnchor.constraint(equalToConstant: stackViewRowOne.frame.height).isActive = true
            oneButton.layer.cornerRadius = stackViewRowOne.frame.height / 2
            
            //oneButton.frame.size = CGSize(width: 50, height: 50) */
            
            
        }
    }
    
    func setupButton(buttonText: String) -> UIButton {
        let buttonForSetup = UIButton()
        buttonForSetup.backgroundColor = UIColor.clear
        buttonForSetup.layer.masksToBounds = false
        buttonForSetup.layer.shadowColor = buttonColor.cgColor
        buttonForSetup.layer.shadowOpacity = 0.5
        buttonForSetup.layer.shadowOffset = CGSize(width: 2, height: 2)
        buttonForSetup.layer.shadowRadius = 1
        buttonForSetup.layer.borderWidth = 1
        buttonForSetup.layer.borderColor = UIColor.orange.cgColor
        
        buttonForSetup.setTitle(buttonText, for: .normal)
        buttonForSetup.setTitleColor(UIColor.black, for: .normal)
        buttonForSetup.titleLabel?.font =  UIFont(name: "Helvetica", size: 20)
        
        return buttonForSetup
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
    
    
    @objc func oneTapped(button: UIButton){
        if (associatedTextField != nil) {
            associatedTextField.text = associatedTextField.text! + "1";
        } else {
            print("You must attach a text field to this function")
        }
        
    }
    
    @objc func twoTapped(button: UIButton){
        if (associatedTextField != nil) {
            associatedTextField.text = associatedTextField.text! + "2";
        } else {
            print("You must attach a text field to this function")
        }
    }
    
    @objc func threeTapped(button: UIButton){
        if (associatedTextField != nil) {
            associatedTextField.text = associatedTextField.text! + "3";
        } else {
            print("You must attach a text field to this function")
        }
    }
    
    @objc func fourTapped(button: UIButton){
        if (associatedTextField != nil) {
            associatedTextField.text = associatedTextField.text! + "4";
        } else {
            print("You must attach a text field to this function")
        }
    }
    
    @objc func fiveTapped(button: UIButton){
        if (associatedTextField != nil) {
            associatedTextField.text = associatedTextField.text! + "5";
        } else {
            print("You must attach a text field to this function")
        }
    }
    
    @objc func sixTapped(button: UIButton){
        if (associatedTextField != nil) {
            associatedTextField.text = associatedTextField.text! + "6";
        } else {
            print("You must attach a text field to this function")
        }
    }
    
    @objc func sevenTapped(button: UIButton){
        if (associatedTextField != nil) {
            associatedTextField.text = associatedTextField.text! + "7";
        } else {
            print("You must attach a text field to this function")
        }
    }
    
    @objc func eightTapped(button: UIButton){
        if (associatedTextField != nil) {
            associatedTextField.text = associatedTextField.text! + "8";
        } else {
            print("You must attach a text field to this function")
        }
    }
    
    @objc func nineTapped(button: UIButton){
        if (associatedTextField != nil) {
            associatedTextField.text = associatedTextField.text! + "9";
        } else {
            print("You must attach a text field to this function")
        }
    }
    
    @objc func zeroTapped(button: UIButton){
        if (associatedTextField != nil) {
            associatedTextField.text = associatedTextField.text! + "0";
        } else {
            print("You must attach a text field to this function")
        }
    }
    
    @objc func deleteTapped(button: UIButton){
        if (associatedTextField != nil) {
            let textString = associatedTextField.text!
            associatedTextField.text = String(textString.dropLast())
        } else {
            print("You must attach a text field to this function")
        }
    }
    
    @objc func submitTapped(button: UIButton){
        submitFunction()
    }
    
    /*
    func arrangeStackViews(views: [UIView]) {
        views[1].frame.origin = CGPoint(x: 0, y: (frame.width / 5))
        views[2].frame.origin = CGPoint(x: 0, y: (frame.width / 5) * 2)
        views[3].frame.origin = CGPoint(x: 0, y: (frame.width / 5) * 3)
        views[4].frame.origin = CGPoint(x: 0, y: (frame.width / 5) * 4)
    } */
    
}
