//
//  WonViewController.swift
//  Cricket
//
//  Created by Sri Chanakya Yennana on 2/25/24.
//

import UIKit

class WonViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func Back(_ sender: UIButton) {
        self.dismiss(animated: true)
    }
    
    @IBAction func Batting(_ sender: UIButton) {
        self.performSegue(withIdentifier: "Batting", sender: self)
    }
    
    @IBAction func Bowl(_ sender: UIButton) {
        self.performSegue(withIdentifier: "Bowling", sender: self)
    }
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        
        if segue.identifier == "Batting"{
            let VC = segue.destination as! BattingViewController
            VC.Target = "nil"
        }
        
        else{
            let VC = segue.destination as! BowlingViewController
            VC.Target = "nil"
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
