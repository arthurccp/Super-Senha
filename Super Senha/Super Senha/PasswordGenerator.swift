//
//  PasswordGenerator.swift
//  Super Senha
//
//  Created by Mac on 19/11/2021.
//  Copyright © 2021 br.com.arthursilva. All rights reserved.
//

import Foundation

class PasswordGenerator {
    var numberOfCharacters: Int
    var numberOfPassword: Int
    var userletters: Bool
    var userNumbers: Bool
    var userCapitalLetters: Bool
    var userSpecialCharacters: Bool
    
    var passwords:[String] = []
    
    private let letter = "abcdefghijklmnopqrstuvwxyz"
    private let SpecialCharacters = "!@#$%ˆ&*()_+=˜`|]}[{':;?/<>.,"
    private let number = "0123456789"
    
    init(numberOfCharacters: Int,numberOfPassword: Int, userletters: Bool, userNumbers: Bool, userCapitalLetters: Bool, userSpecialCharacters: Bool) {
        
        
        var numchars = min(numberOfCharacters, 16)
        numchars = max(numchars,1)
        self.numberOfCharacters = numberOfCharacters
        self.numberOfPassword = numberOfPassword
        self.userletters = userletters
        self.userNumbers = userNumbers
        self.userCapitalLetters = userCapitalLetters
        self.userSpecialCharacters = userSpecialCharacters
    }
    
    func generate(total:Int) -> [String]{
        passwords.removeAll()
        var universe: String = ""
        if userletters {
            universe += letter
        }
        if userNumbers{
            universe += number
            
        }
        if userSpecialCharacters{
            universe += SpecialCharacters
        }
        if userCapitalLetters{
            universe += letter.uppercased()
        }
        
        let universeArray = Array(universe)
        while passwords.count < total {
            var password = ""
            for _ in 1...numberOfCharacters{
                let index = Int(arc4random_uniform(UInt32(universeArray.count)))
                password += String(universeArray[index])
            }
            passwords.append(password)
        }
        
        
        return passwords
    }

}

