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
    
    //接收獲選職業
    var career:Career!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //載入職業介紹
        recommendCareer.text = recommendList[career]!.Name
        recommendImage.image = UIImage(named: recommendList[career]!.ImageName)
        recommendTextView.text = recommendList[career]?.Introduction
        
        //調一下畫面
        recommendImage.layer.cornerRadius = 30
        recommendTextView.layer.cornerRadius = 5
        recommendTextView.layer.borderWidth = 2
        recommendTextView.layer.borderColor = UIColor.gray.cgColor
    }

}
