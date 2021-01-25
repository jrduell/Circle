//
//  ContentVC.swift
//  Circle
//
//  Created by Jacob Duell on 1/22/21.
//

import UIKit

class ContentVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func messageBtnTapped(_ sender: Any) {
        guard let message_VC = storyboard?.instantiateViewController(withIdentifier: "message_VC") else { return }
        presentDetailRight(message_VC)
    }
    
    @IBAction func userProfileBtnTapped(_ sender: Any) {
        guard let profile_VC = storyboard?.instantiateViewController(identifier: "user_profile_VC") else { return }
        presentDetailLeft(profile_VC)
    }
    

}
