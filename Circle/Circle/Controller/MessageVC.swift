//
//  MessageVC.swift
//  Circle
//
//  Created by Jacob Duell on 1/22/21.
//

import UIKit

class MessageVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func dismissMessageTapped(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
}
