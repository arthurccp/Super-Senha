//
//  ViewController.swift
//  Super Senha
//
//  Created by Mac on 19/11/2021.
//  Copyright © 2021 br.com.arthursilva. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tfTotalPasswords: UITextField!
    @IBOutlet weak var tfNumbersOfCharacters: UITextField!
    @IBOutlet weak var swletters: UISwitch!
    @IBOutlet weak var swNumbers: UISwitch!
    @IBOutlet weak var swCapitalLetters: UISwitch!
    @IBOutlet weak var swSpecialcharacters: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let passwordViewController = segue.destination as! PassowordViewController
        if let numberOfpassword  = Int(tfTotalPasswords.text!){
            passwordViewController.numberOfPassword = numberOfpassword
        }
        if let numberOfCharacters  = Int(tfNumbersOfCharacters.text!){
            passwordViewController.numberOfCharacters = numberOfCharacters
        }
        passwordViewController.userletters = swletters.isOn
        passwordViewController.userNumbers = swNumbers.isOn
        passwordViewController.userCapitalLetters = swCapitalLetters.isOn
        passwordViewController.userSpecialCharacters = swSpecialcharacters.isOn
        
        view.endEditing(true) //teclado perder o foco e desaparecer
        
    }
    
}




