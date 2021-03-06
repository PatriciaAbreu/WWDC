//
//  TeacherViewController.swift
//  WWDCPatriciaAbreu
//
//  Created by Patricia de Abreu on 21/04/15.
//  Copyright (c) 2015 Patricia de Abreu. All rights reserved.
//

import UIKit

class TeacherViewController: UIViewController {

    @IBOutlet weak var labelText: UILabel!
    
    override func viewDidLoad() {
        
        //        down swipe
        var downSwipe: UISwipeGestureRecognizer = UISwipeGestureRecognizer(target: self, action: Selector("downSwipe"))
        downSwipe.direction = UISwipeGestureRecognizerDirection.Down
        
        self.view!.addGestureRecognizer(downSwipe)

    }
    
    func downSwipe(){
        
        //        envia notificacao para a view controller para dar retornar o botao para a posicao inicial
        let notificacao:NSNotificationCenter = NSNotificationCenter.defaultCenter()
        
        notificacao.postNotificationName("buttonBackTeacher", object: self)
        
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
}
