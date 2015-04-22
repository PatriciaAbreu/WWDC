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
    
    override func viewWillAppear(animated: Bool) {
        //        AlertSheet
        let alerta: UIAlertController = UIAlertController(title: "Teacher", message: "Você consegue se lembrar do nome de uma professor(a) que marcou sua formação?", preferredStyle: .ActionSheet)
        
        let acaoS: UIAlertAction = UIAlertAction(title: "Sim", style: .Default) { action -> Void in
            
            self.labelText.text = "Impossível não lembrar né?! Sempre temos uma professor(a) que nos marcou, seja pela aula, pela matéria ou porque ela era legal."
        }
        
        let acaoN: UIAlertAction = UIAlertAction(title: "Não", style: .Default) { (action) -> Void in
            
            self.labelText.text = "Por mais que ache que nenhum professor te marcou, pode ter certeza que está errado, pois se está conseguindo ler o que está escrito nesse app no mínimo um professor te ajudou nisso."
        }
        
        alerta.addAction(acaoS)
        alerta.addAction(acaoN)
        
        self.presentViewController(alerta, animated: true, completion: nil)

    }
}
