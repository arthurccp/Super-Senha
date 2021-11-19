
import UIKit

class PassowordViewController: UIViewController {

    
    
    @IBOutlet weak var tvPassword: UITextView!
    
    var numberOfCharacters: Int = 10
    var numberOfPassword: Int = 1
    var userletters: Bool!
    var userNumbers: Bool!
    var userCapitalLetters: Bool!
    var userSpecialCharacters: Bool!
    
    var passwordGenerator: PasswordGenerator!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Total de Senhas: \(numberOfPassword)"
        passwordGenerator = PasswordGenerator(numberOfCharacters: numberOfCharacters, numberOfPassword: numberOfPassword, userletters: userletters, userNumbers: userNumbers, userCapitalLetters: userCapitalLetters, userSpecialCharacters: userSpecialCharacters)
       
            generatePassword()
        }
        
        func generatePassword(){
            tvPassword.scrollRangeToVisible(NSRange(location: 0, length: 0))
            tvPassword.text = " "
            let passwords = passwordGenerator.generate(total: numberOfPassword)
            for password in passwords{
                tvPassword.text.append(password + "\n\n")
            }
    }
    
    
    @IBAction func Generate(_ sender: UIButton) {
        generatePassword()
        
    }

    
    
    
}
