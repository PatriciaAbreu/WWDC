//
//  Math.swift
//  WWDCPatriciaAbreu
//
//  Created by Patricia de Abreu on 21/04/15.
//  Copyright (c) 2015 Patricia de Abreu. All rights reserved.
//

import UIKit

class Math: UIViewController {

    @IBOutlet weak var btnTeacher: UIButton!
    
    @IBOutlet weak var btnStudent: UIButton!
    
    @IBOutlet weak var labelText: UILabel!
    
    override func viewDidLoad() {
        //        setar gradiente no background
        var gradient: CAGradientLayer = CAGradientLayer()
        var color1: UIColor = UIColor(red: 251/255, green: 82/255, blue: 8/255, alpha: 1)
        var color2: UIColor = UIColor(red: 244, green: 81, blue: 186, alpha: 1)
        
        gradient.colors = [color1.CGColor, color2.CGColor]
        gradient.frame = view.bounds
        view.layer.insertSublayer(gradient, atIndex: 0)
        
        //        Animação de Swipe
        var downSwipe: UISwipeGestureRecognizer = UISwipeGestureRecognizer(target: self, action: Selector("downSwipe"))
        downSwipe.direction = UISwipeGestureRecognizerDirection.Down
        
        self.view!.addGestureRecognizer(downSwipe)
        
        //        notification Button
        let notificationTeacher: NSNotificationCenter = NSNotificationCenter.defaultCenter()
        notificationTeacher.addObserver(self, selector: "backTeacher:", name: "buttonBackTeacher", object: nil)

        let notificationStudent: NSNotificationCenter = NSNotificationCenter.defaultCenter()
        notificationStudent.addObserver(self, selector: "backStudent:", name: "buttonBackStudent", object: nil)
    }
    
    //    função que retorna para a página anterior (Knowledge)
    func downSwipe(){
        
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    

    @IBAction func buttonTeacher(sender: AnyObject) {
        self.btnTeacher.hidden = true
        self.btnStudent.hidden = true
        self.labelText.hidden = true
    }
    
    func backTeacher (message: NSNotification) {
        self.btnTeacher.hidden = false
        self.btnStudent.hidden = false
        self.labelText.hidden = false
    }
    
    @IBAction func buttonStudent(sender: AnyObject) {
        self.btnTeacher.hidden = true
        self.btnStudent.hidden = true
        self.labelText.hidden = true
    }
    
    func backStudent (message: NSNotification) {
        self.btnTeacher.hidden = false
        self.btnStudent.hidden = false
        self.labelText.hidden = false
    }
}
