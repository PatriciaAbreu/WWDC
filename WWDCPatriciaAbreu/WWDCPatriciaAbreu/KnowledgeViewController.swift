//
//  KnowledgeViewController.swift
//  WWDCPatriciaAbreu
//
//  Created by Patricia de Abreu on 16/04/15.
//  Copyright (c) 2015 Patricia de Abreu. All rights reserved.
//

import UIKit

class KnowledgeViewController: UIViewController {
    
    @IBOutlet weak var imageKnowledge: UIImageView!
    
    @IBOutlet weak var btnComputerScience: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        //        setar gradiente no background
//        var gradient: CAGradientLayer = CAGradientLayer()
//        var color1: UIColor = UIColor(red: 148/255, green: 31/255, blue: 253/255, alpha: 1)
//        var color2: UIColor = UIColor(red: 244, green: 81, blue: 186, alpha: 1)
//        
//        gradient.colors = [color1.CGColor, color2.CGColor]
//        gradient.frame = view.bounds
//        view.layer.insertSublayer(gradient, atIndex: 0)
        
//        imageKnowledge.layer.opacity = 0.8
        
        //        Animação de Swipe
        var downSwipe: UISwipeGestureRecognizer = UISwipeGestureRecognizer(target: self, action: Selector("downSwipe"))
        downSwipe.direction = UISwipeGestureRecognizerDirection.Down
        
        self.view!.addGestureRecognizer(downSwipe)
        

    }
    
    func downSwipe(){
        
        self.dismissViewControllerAnimated(true, completion: nil)
    }

}
