//
//  SecondViewController.swift
//  DataPassingThroughClosures
//
//  Created by Sainath Bamen on 19/08/23.
//

import UIKit

class SecondViewController: UIViewController {
    typealias text = (String) -> ()
    
    var closure:text!

    @IBOutlet weak var myTxtFIeld: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        

        
    }
    

    @IBAction func moveToBack(_ sender: Any) {
        guard let newText = myTxtFIeld.text else {return}
        closure(newText)
        
        navigationController?.popViewController(animated: true)
        
    }
    

}
