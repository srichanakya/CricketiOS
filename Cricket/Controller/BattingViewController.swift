//
//  BattingViewController.swift
//  Cricket
//
//  Created by Sri Chanakya Yennana on 2/25/24.
//

import UIKit

class BattingViewController: UIViewController {

    
    
    @IBOutlet weak var Score: UILabel!
    @IBOutlet weak var BallsLeft: UILabel!
    
    @IBOutlet weak var target: UILabel!
    
    var Target:String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        target.text = Target
        // Do any additional setup after loading the view.
    }
    
    @IBAction func Score(_ sender: UIButton) {
        let randomNumber = Int(arc4random_uniform(7))
    var user = sender.titleLabel?.text ?? "0"
        print(type(of: user))
        print(type(of: randomNumber))
        print(type(of: Score.text ?? ""))
        if(Int(user) == randomNumber){
            print("out")
            self.performSegue(withIdentifier: "Out", sender: self)
            
        }
        else{
            let userInt = Int(user ?? "0") ?? 0
            let scoreInt = Int(Score.text ?? "0") ?? 0
            let sum = userInt + scoreInt
            Score.text = String(sum)
            
            let balls = Int(BallsLeft.text ?? "0") ?? 0
            let left = balls - 1
            BallsLeft.text = String(left)
        }
        
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "Out"{
            var OutVC = segue.destination as! ScoreViewController
            OutVC.score = Int(Score.text ?? "0") ?? 0
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
