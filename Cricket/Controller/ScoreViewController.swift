//
//  ScoreViewController.swift
//  Cricket
//
//  Created by Sri Chanakya Yennana on 2/26/24.
//

import UIKit

class ScoreViewController: UIViewController {
    
    
    var score:Int = 0

    @IBOutlet weak var ScoreLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        ScoreLabel.text = String(score)
        
        self.performSegue(withIdentifier: "Bowl2nd", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        
        if segue.identifier == "Bowl2nd"{
            let VC = segue.destination as! BowlingViewController
            VC.Target = String(score)
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
