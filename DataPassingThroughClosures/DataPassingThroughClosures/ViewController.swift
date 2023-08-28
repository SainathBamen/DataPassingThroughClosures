//
//  ViewController.swift
//  DataPassingThroughClosures
//
//  Created by Sainath Bamen on 19/08/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var petLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func goToSecondVC(_ sender: Any) {
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let vc =  storyBoard.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        vc.closure = { newText in
            self.petLabel.text = newText
            
            
        }
        navigationController?.pushViewController(vc, animated: true)
        
    }
    
}

