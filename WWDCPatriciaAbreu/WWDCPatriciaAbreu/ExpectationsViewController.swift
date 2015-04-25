//
//  ExpectationsViewController.swift
//  WWDCPatriciaAbreu
//
//  Created by Patricia de Abreu on 23/04/15.
//  Copyright (c) 2015 Patricia de Abreu. All rights reserved.
//

import UIKit

class ExpectationsViewController: UIViewController {

    override func viewDidLoad() {
        //        Animação de Swipe
        var downSwipe: UISwipeGestureRecognizer = UISwipeGestureRecognizer(target: self, action: Selector("downSwipe"))
        downSwipe.direction = UISwipeGestureRecognizerDirection.Down
        
        self.view!.addGestureRecognizer(downSwipe)
        
    }
    func downSwipe(){
        
        self.dismissViewControllerAnimated(true, completion: nil)
    }

}
