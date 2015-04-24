//
//  ViewController.swift
//  WWDCPatriciaAbreu
//
//  Created by Patricia de Abreu on 14/04/15.
//  Copyright (c) 2015 Patricia de Abreu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
//    @IBOutlet weak var imagemW: UIImageView!
    
    @IBOutlet weak var imagemP: UIImageView!
    
    @IBOutlet weak var imagemPP: UIImageView!
    
    @IBOutlet weak var imagemPPP: UIImageView!
    
    @IBOutlet weak var imagemPPPP: UIImageView!
    
//    var imagemTocadaP: Bool = false
//    var imagemTocadaPP: Bool = false
    
//    @IBOutlet weak var profileImage: UIImageView!
    var flag: Bool = true
    
    @IBAction func tapImage(sender: AnyObject) {
        
        var hobbies: HobbiesViewController = HobbiesViewController()
        self.performSegueWithIdentifier("hobbies", sender: hobbies)
        
        UIView.animateWithDuration(1, animations: { () -> Void in
            self.imagemP.transform = CGAffineTransformMakeScale(3, 3)
        })
        
    }
    
    @IBAction func tapImagePerfil(sender: AnyObject) {
        
        var perfil: ProfileViewController = ProfileViewController()
        self.performSegueWithIdentifier("profile", sender: perfil)
        
        UIView.animateWithDuration(1, animations: { () -> Void in
            self.imagemPP.transform = CGAffineTransformMakeScale(3, 3)
        })
        
    }

    
    @IBAction func tapImageKnowledge(sender: AnyObject) {

        var knowledge: KnowledgeViewController = KnowledgeViewController()
        self.performSegueWithIdentifier("knowledge", sender: knowledge)
        
        UIView.animateWithDuration(1, animations: { () -> Void in
            self.imagemPPP.transform = CGAffineTransformMakeScale(3, 3)
        })

    }
    
    
    @IBAction func tapImageExpectations(sender: AnyObject) {
        
        var expectations: ExpectationsViewController = ExpectationsViewController()
        self.performSegueWithIdentifier("expectations", sender: expectations)
        
        UIView.animateWithDuration(1, animations: { () -> Void in
            self.imagemPPPP.transform = CGAffineTransformMakeScale(3, 3)
        })

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // setar o gradiente de cores para backgroud
        var gradient: CAGradientLayer = CAGradientLayer()
        var color1: UIColor = UIColor(red: 91/255, green: 1/255, blue: 199/255, alpha: 1)
        var color2: UIColor = UIColor(red: 236/255, green: 4/255, blue: 147/255, alpha: 1)
        
        gradient.colors = [color1.CGColor, color2.CGColor]
        gradient.frame = view.bounds
        view.layer.insertSublayer(gradient, atIndex: 0)
        
        
        self.view.addSubview(imagemP)
        self.view.addSubview(imagemPP)
        self.view.addSubview(imagemPPP)
        self.view.addSubview(imagemPPPP)
    }
    

    override func viewWillAppear(animated: Bool) {
        UIView.animateWithDuration(1, animations: { () -> Void in
            
            self.imagemP.transform = CGAffineTransformMakeTranslation(-82, -200)
            
            self.imagemP.transform = CGAffineTransformScale(self.imagemP.transform, 1.2, 1.2)
            
            self.imagemP.transform = CGAffineTransformRotate(self.imagemP.transform, 320)
            
            self.imagemPP.transform = CGAffineTransformMakeTranslation(51, -140)
            
            self.imagemPP.transform = CGAffineTransformScale(self.imagemPP.transform, 1.2, 1.2)
            
            self.imagemPP.transform = CGAffineTransformRotate(self.imagemPP.transform, 120)
            
            self.imagemPPP.transform = CGAffineTransformMakeTranslation(-82, 140)
            
            self.imagemPPP.transform = CGAffineTransformScale(self.imagemPPP.transform, 1.2, 1.2)
            
            self.imagemPPP.transform = CGAffineTransformRotate(self.imagemPPP.transform, 120)
            
            self.imagemPPPP.transform = CGAffineTransformMakeTranslation(51, 200)
            
            self.imagemPPPP.transform = CGAffineTransformScale(self.imagemPPPP.transform, 1.2, 1.2)
            
            self.imagemPPPP.transform = CGAffineTransformRotate(self.imagemPPPP.transform, 320)
        })
        

    }


//    override func touchesMoved(touches: Set<NSObject>, withEvent event: UIEvent) {
//        var touch = touches.first as! UITouch
//        var localTocado: CGPoint = touch.locationInView(self.view)
//        var point: CGPoint = touch.locationInView(self.view)
//
//        
//        if CGRectContainsPoint(imagemP.frame, point) {
//            UIView.animateWithDuration(0, animations: { () -> Void in
//                self.imagemP.transform = CGAffineTransformMakeTranslation(localTocado.x - self.imagemP.center.x, localTocado.y - self.imagemP.center.y)
//            })
//
//        }else if CGRectContainsPoint(imagemPP.frame, point) {
//            UIView.animateWithDuration(0, animations: { () -> Void in
//                self.imagemPP.transform = CGAffineTransformMakeTranslation(localTocado.x - self.imagemP.center.x, localTocado.y - self.imagemP.center.y)
//            })
//        }else if CGRectContainsPoint(imagemPPP.frame, point){
//            UIView.animateWithDuration(0, animations: { () -> Void in
//                self.imagemPPP.transform = CGAffineTransformMakeTranslation(localTocado.x - self.imagemPPP.center.x, localTocado.y - self.imagemPPP.center.y)
//            })
//        }else if CGRectContainsPoint(imagemPPPP.frame, point){
//            UIView.animateWithDuration(0, animations: { () -> Void in
//                self.imagemPPPP.transform = CGAffineTransformMakeTranslation(localTocado.x - self.imagemPPPP.center.x, localTocado.y - self.imagemPPPP.center.y)
//            })
//        }
    
        
//        UITouch *touch = [touches anyObject];
//        CGPoint localTocado = [touch locationInView:self.view];
//        if (imagemTocada) {
//            [UIView animateWithDuration:0 animations:^{
//                imageView.transform = CGAffineTransformMakeTranslation(localTocado.x-imageView.center.x, localTocado.y-imageView.center.y);
//                }];
//        }
//    }
    
   
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

