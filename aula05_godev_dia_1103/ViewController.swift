//
//  ViewController.swift
//  aula05_godev_dia_1103
//
//  Created by Victor Pizetta on 11/03/22.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK: - IBOutlets
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var senhaTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.gradientBackGround(firstColor: .goDevPurple, secondColor: .goDevLightPurple)
    }
    
    //MARK: - IBActions
    
    @IBAction func autenticarButton(_ sender: UIButton) {
        
        let errorMessage = "Insira um usuário válido"
        let sucessMessage = "Logado com sucesso"
        
        let errorAlert = UIAlertController(title: "Atenção", message: errorMessage, preferredStyle: .alert)
        let sucessAlert = UIAlertController(title: "Atenção", message: sucessMessage, preferredStyle: .alert)
        
        errorAlert.addAction(UIAlertAction(title: "Confirmar", style: .default, handler: {confirmar in
            print("Clicou em confirmar")
        }))
        
        sucessAlert.addAction(UIAlertAction(title: "Confirmar", style: .default, handler: {confirmar in
            print("Clicou em confirmar")
        }))
        
        guard let email = emailTextField.text else { return }
        guard let senha = senhaTextField.text else { return }
        
        print("Email: \(email)")
        print("Senha: \(senha)")
        
        if email == "" {
            present(errorAlert, animated: true, completion: nil)
        } else if senha == ""{
            present(errorAlert, animated: true, completion: nil)
        } else {
            present(sucessAlert, animated: true, completion: nil)
        }
    }
}
