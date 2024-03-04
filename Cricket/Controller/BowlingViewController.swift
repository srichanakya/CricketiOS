//
//  BowlingViewController.swift
//  Cricket
//
//  Created by Sri Chanakya Yennana on 2/26/24.
//

import UIKit

class BowlingViewController: UIViewController {
    @IBOutlet weak var ScoreLabel: UILabel!
    @IBOutlet weak var BallsLeft: UILabel!
    @IBOutlet weak var target: UILabel!
    
    var Target:String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        target.text = Target
        // Do any additional setup after loading the view.
    }
    
    @IBAction func BallsBowled(_ sender: UIButton) {
        let randomNumber = Int(arc4random_uniform(7))
    var user = sender.titleLabel?.text ?? "0"
        print(type(of: user))
        print(type(of: randomNumber))
        print(type(of: ScoreLabel.text ?? ""))
        if(Int(user) == randomNumber){
            print("out")
            self.performSegue(withIdentifier: "BowlingDone", sender: self)
            
        }
        else{
            let userInt = Int(user ?? "0") ?? 0
            let scoreInt = Int(ScoreLabel.text ?? "0") ?? 0
            let sum = randomNumber + scoreInt
            ScoreLabel.text = String(sum)
            
            let balls = Int(BallsLeft.text ?? "0") ?? 0
            let left = balls - 1
            BallsLeft.text = String(left)
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
