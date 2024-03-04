//
//  TossViewController.swift
//  Cricket
//
//  Created by Sri Chanakya Yennana on 2/25/24.
//

import UIKit

class TossViewController: UIViewController {

    let coinArray = ["Head", "Tail"]
    
    var UserChoice:String = ""
    
    func pickRandomElement(from array: [String]) -> String? {
        print("Called random")
        return array.randomElement()
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func userChoiceMethod(_ sender: UIButton) {
        print(sender.titleLabel?.text ?? "")
        
        let computerChoice = pickRandomElement(from: coinArray)
        
        print(computerChoice ?? "")
        UserChoice = sender.titleLabel?.text ?? "Head"
        
        if(computerChoice == UserChoice){
            self.performSegue(withIdentifier: "TossWon", sender: self)
        }
        else{
            self.performSegue(withIdentifier: "TossLoss", sender: self)
        }
        
        
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
