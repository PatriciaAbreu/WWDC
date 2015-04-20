//
//  ScienceComputerViewController.swift
//  WWDCPatriciaAbreu
//
//  Created by Patricia de Abreu on 20/04/15.
//  Copyright (c) 2015 Patricia de Abreu. All rights reserved.
//

import UIKit

class ComputerScienceViewController: UIViewController {

    @IBOutlet weak var titleComputerScience: UILabel!
    
    @IBOutlet weak var textComputerScience: UILabel!
    
    @IBOutlet weak var btnHtml: UIButton!
    
    @IBOutlet weak var btnJava: UIButton!
    
    @IBOutlet weak var btnObjectiveC: UIButton!
    
    override func viewDidLoad() {
        
        //        setar gradiente no background
        var gradient: CAGradientLayer = CAGradientLayer()
        var color1: UIColor = UIColor(red: 136, green: 129, blue: 240, alpha: 1)
        var color2: UIColor = UIColor(red: 244/255, green: 81/255, blue: 186/255, alpha: 1)
        
        gradient.colors = [color1.CGColor, color2.CGColor]
        gradient.frame = view.bounds
        view.layer.insertSublayer(gradient, atIndex: 0)
        
        
        //        Animação de Swipe
        var downSwipe: UISwipeGestureRecognizer = UISwipeGestureRecognizer(target: self, action: Selector("downSwipe"))
        downSwipe.direction = UISwipeGestureRecognizerDirection.Down
        
        self.view!.addGestureRecognizer(downSwipe)
        
        //        notification Button
        let notificationHtml: NSNotificationCenter = NSNotificationCenter.defaultCenter()
        notificationHtml.addObserver(self, selector: "backHtml:", name: "buttonBackHtml", object: nil)
        
        let notificationJava: NSNotificationCenter = NSNotificationCenter.defaultCenter()
        notificationJava.addObserver(self, selector: "backJava:", name: "buttonBackJava", object: nil)
        
        let notificationObjectiveC: NSNotificationCenter = NSNotificationCenter.defaultCenter()
        notificationObjectiveC.addObserver(self, selector: "backObjectiveC:", name: "buttonBackObjectiveC", object: nil)
        
    }
    
//    função que retorna para a página anterior (Knowledge)
    func downSwipe(){
        
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
//    botão segue para a página HTML
    @IBAction func buttonHtml(sender: AnyObject) {
        
        UIView.animateWithDuration(0.5, animations: { () -> Void in
        
            self.btnHtml.transform = CGAffineTransformMakeTranslation(-2, -110)
    
            self.btnHtml.transform = CGAffineTransformScale(self.btnHtml.transform, 1.7, 1.7)
        
        })

        self.titleComputerScience.hidden = true
        self.textComputerScience.hidden = true
        self.btnJava.hidden = true
        self.btnObjectiveC.hidden = true
       
    }
    
//    função que faz a animação de retorno da página HTML
    func backHtml (message:NSNotification) {
        
        UIView.animateWithDuration(0.5, animations: { () -> Void in
            
            self.btnHtml.transform = CGAffineTransformMakeTranslation(10, 0)
            
        })
        
        self.titleComputerScience.hidden = false
        self.textComputerScience.hidden = false
        self.btnJava.hidden = false
        self.btnObjectiveC.hidden = false
    }
    
    
    //    botão segue para a página HTML
    @IBAction func buttonJava(sender: AnyObject) {
        
        UIView.animateWithDuration(0.5, animations: { () -> Void in
            
            self.btnJava.transform = CGAffineTransformMakeTranslation(-10, -100)
            
            self.btnJava.transform = CGAffineTransformScale(self.btnJava.transform, 2, 2)
        })
        
        self.titleComputerScience.hidden = true
        self.textComputerScience.hidden = true
        self.btnHtml.hidden = true
        self.btnObjectiveC.hidden = true
        
    }
    
    //    função que faz a animação de retorno da página HTML
    func backJava (message: NSNotification) {
        
        UIView.animateWithDuration(0.5, animations: { () -> Void in
            
            self.btnJava.transform = CGAffineTransformMakeTranslation(10, 0)
        })
        
        self.titleComputerScience.hidden = false
        self.textComputerScience.hidden = false
        self.btnHtml.hidden = false
        self.btnObjectiveC.hidden = false
    }
    
    
    //    botão segue para a página HTML
    @IBAction func buttonObjectiveC(sender: AnyObject) {
        
        UIView.animateWithDuration(0.5, animations: { () -> Void in
            
            self.btnObjectiveC.transform = CGAffineTransformMakeTranslation(-2, -130)
            
            self.btnObjectiveC.transform = CGAffineTransformScale(self.btnObjectiveC.transform, 2, 2)
        })
        
        self.titleComputerScience.hidden = true
        self.textComputerScience.hidden = true
        self.btnHtml.hidden = true
        self.btnJava.hidden = true
    }
    
    //    função que faz a animação de retorno da página HTML
    func backObjectiveC (message: NSNotification) {
        
        UIView.animateWithDuration(0.5, animations: { () -> Void in
            
            self.btnObjectiveC.transform = CGAffineTransformMakeTranslation(10, 0)
        })
        
        self.titleComputerScience.hidden = false
        self.textComputerScience.hidden = false
        self.btnHtml.hidden = false
        self.btnJava.hidden = false
    }
}
