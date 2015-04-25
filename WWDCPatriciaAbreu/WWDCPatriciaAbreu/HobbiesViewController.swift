//
//  PuzzleViewController.swift
//  WWDCPatriciaAbreu
//
//  Created by Patricia de Abreu on 23/04/15.
//  Copyright (c) 2015 Patricia de Abreu. All rights reserved.
//

import UIKit

class HobbiesViewController: UIViewController {

   
    override func viewDidLoad() {
        super.viewDidLoad()
        

//        // setar o gradiente de cores para backgroud
//        var gradient: CAGradientLayer = CAGradientLayer()
//        var color1: UIColor = UIColor(red: 252/255, green: 94/255, blue: 210/255, alpha: 1)
//        var color2: UIColor = UIColor(red: 236, green: 4, blue: 147, alpha: 1)
//        
//        gradient.colors = [color1.CGColor, color2.CGColor]
//        gradient.frame = view.bounds
//        view.layer.insertSublayer(gradient, atIndex: 0)
        
        //        Animação de Swipe
        var downSwipe: UISwipeGestureRecognizer = UISwipeGestureRecognizer(target: self, action: Selector("downSwipe"))
        downSwipe.direction = UISwipeGestureRecognizerDirection.Down
        
        self.view!.addGestureRecognizer(downSwipe)
    }

    //    função que retorna para a página anterior
    func downSwipe(){
        
        self.dismissViewControllerAnimated(true, completion: nil)
    }

}

