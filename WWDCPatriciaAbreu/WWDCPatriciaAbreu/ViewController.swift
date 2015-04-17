//
//  ViewController.swift
//  WWDCPatriciaAbreu
//
//  Created by Patricia de Abreu on 14/04/15.
//  Copyright (c) 2015 Patricia de Abreu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var profileImage: UIImageView!
    var flag: Bool = true
    
    override func prefersStatusBarHidden() -> Bool {
        return false
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // setar o gradiente de cores para backgroud
        var gradient: CAGradientLayer = CAGradientLayer()
        var color1: UIColor = UIColor(red: 136/255, green: 129/255, blue: 240/255, alpha: 1)
        var color2: UIColor = UIColor(red: 244/255, green: 81/255, blue: 186/255, alpha: 1)
        
        gradient.colors = [color1.CGColor, color2.CGColor]
        gradient.frame = view.bounds
        view.layer.insertSublayer(gradient, atIndex: 0)
        
//        faz com a imagem do perfil fique circular
        profileImage.layer.cornerRadius = profileImage.frame.size.width/2.4
        profileImage.layer.borderWidth = 3
        profileImage.clipsToBounds = true
        
    }

    override func viewDidAppear(animated: Bool) {
        
//        alert inicial para informar o motivo do app. Só aparece na primeira vez que o app é aberto
        if flag == true {
        let inicialAlert: UIAlertController = UIAlertController(title: "About de App", message: "Olá, sou a Patrícia, e este app foi feito com o intuito de que você possa me conhecer. Tudo aqui é interativo, então qualquer dúvida ou curiosidade basta desbravar as diversas opções.", preferredStyle: .Alert)
        
        let action: UIAlertAction = UIAlertAction(title: "OK", style: .Default) { action -> Void in
            println("Entrou no App")
        }
        
        inicialAlert.addAction(action)
        self.presentViewController(inicialAlert, animated: true, completion: nil)
            flag = false
    }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

