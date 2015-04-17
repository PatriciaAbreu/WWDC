//
//  KnowledgeViewController.swift
//  WWDCPatriciaAbreu
//
//  Created by Patricia de Abreu on 16/04/15.
//  Copyright (c) 2015 Patricia de Abreu. All rights reserved.
//

import UIKit

class KnowledgeViewController: UIViewController {

    @IBOutlet weak var btnComputerScience: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

//        setar gradiente no background
        var gradient: CAGradientLayer = CAGradientLayer()
        var color1: UIColor = UIColor(red: 136/255, green: 129/255, blue: 240/255, alpha: 1)
        var color2: UIColor = UIColor(red: 244, green: 81, blue: 186, alpha: 1)
        
        gradient.colors = [color1.CGColor, color2.CGColor]
        gradient.frame = view.bounds
        view.layer.insertSublayer(gradient, atIndex: 0)
        
//        btnComputerScience.titleLabel?.numberOfLines = 2
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
