//
//  Html.swift
//  WWDCPatriciaAbreu
//
//  Created by Patricia de Abreu on 20/04/15.
//  Copyright (c) 2015 Patricia de Abreu. All rights reserved.
//

import UIKit

class HtmlViewController: UIViewController {

    
    override func viewDidLoad() {
        
//        setar background na view
        var gradient: CAGradientLayer = CAGradientLayer()
        var color1: UIColor = UIColor(red: 219/255, green: 54/255, blue: 30/255, alpha: 1)
        var color2: UIColor = UIColor(red: 235, green: 78, blue: 32, alpha: 1)
        
        gradient.colors = [color1.CGColor, color2.CGColor]
        gradient.frame = view.bounds
        view.layer.opacity = 0.8
        view.layer.insertSublayer(gradient, atIndex: 0)
        
//        down swipe
        var downSwipe: UISwipeGestureRecognizer = UISwipeGestureRecognizer(target: self, action: Selector("downSwipe"))
        downSwipe.direction = UISwipeGestureRecognizerDirection.Down
        
        self.view!.addGestureRecognizer(downSwipe)

    }
    
    func downSwipe(){
        
        //        envia notificacao para a view controller para dar retornar o botao para a posicao inicial
        let notificacao:NSNotificationCenter = NSNotificationCenter.defaultCenter()
        
        notificacao.postNotificationName("buttonBackHtml", object: self)
        
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    
}
