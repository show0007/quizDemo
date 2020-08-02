//
//  LoginViewController.swift
//  quizDemo
//
//  Created by 林家宇 on 2020/8/2.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet var loginBtn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        loginBtn.backgroundColor = .clear
        loginBtn.layer.cornerRadius = 5
        loginBtn.layer.borderWidth = 2
        loginBtn.layer.borderColor = UIColor.gray.cgColor
        // Do any additional setup after loading the view.
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
