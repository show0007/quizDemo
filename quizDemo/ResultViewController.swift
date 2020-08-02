//
//  ResultViewController.swift
//  quizDemo
//
//  Created by 林家宇 on 2020/8/1.
//

import UIKit

class ResultViewController: UIViewController {
    @IBOutlet var recommendCareer: UILabel!
    @IBOutlet var recommendTextView: UITextView!
    @IBOutlet var recommendImage: UIImageView!
    
    var career:Career!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(career!)
        // Do any additional setup after loading the view.
        recommendCareer.text = recommendList[career]!.Name
        recommendImage.image = UIImage(named: recommendList[career]!.ImageName)
        recommendTextView.text = recommendList[career]?.Introduction
        
        recommendImage.layer.cornerRadius = 30
//        recommendImage.layer.borderWidth = 2
        
        recommendTextView.layer.cornerRadius = 5
        recommendTextView.layer.borderWidth = 2
        recommendTextView.layer.borderColor = UIColor.gray.cgColor
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
