//
//  QuizViewController.swift
//  quizDemo
//
//  Created by 林家宇 on 2020/7/31.
//

import UIKit

class QuizViewController: UIViewController {
    
    @IBOutlet var question: UILabel!
    @IBOutlet var option: [UIButton]!
    @IBOutlet var progress: UIProgressView!
    
    @IBOutlet var buttonView: UIView!
    
    var ongoingQuizIndex = 0 //現在題目index
    var recommendCareer:Career? //最後推薦的職業
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        questionList.shuffle()
        
        loadQuiz(questionNum: ongoingQuizIndex)
        progress.progress = Float(ongoingQuizIndex)/Float(questionList.count)
        
        question.layer.cornerRadius = 5
        question.layer.borderWidth = 2
        question.layer.borderColor = UIColor.gray.cgColor
        buttonView.layer.cornerRadius = 5
        buttonView.layer.borderWidth = 2
        buttonView.layer.borderColor = UIColor.gray.cgColor
    }
    
    @IBAction func answer(_ sender: UIButton) {
        let index = sender.tag
        let contentList = questionList[ongoingQuizIndex-1].options
        let careerList = contentList[index].belongTo
        for career in careerList{
            //分數計算
            switch career {
            case .Swordman:
                scoreList[0].Score += 1
            case .Magician:
                scoreList[1].Score += 1
            case .Acolyte:
                scoreList[2].Score += 1
            case .Thief:
                scoreList[3].Score += 1
            case .Merchant:
                scoreList[4].Score += 1
            case .Archer:
                scoreList[5].Score += 1
            }
        }
        
        //判斷是否回答完所有題目
        if ongoingQuizIndex == questionList.count{
//            print("Swordman:\(scoreList[0].Score)")
//            print("Magician:\(scoreList[1].Score)")
//            print("acolyteScore:\(scoreList[2].Score)")
//            print("thiefScore:\(scoreList[3].Score)")
//            print("merchantScore:\(scoreList[4].Score)")
//            print("archerScore:\(scoreList[5].Score)")
            var careerChoice:Career = .Swordman
            var careerChoiceScore:Int = 0
            for list in scoreList {
                if list.Score > careerChoiceScore{
                    careerChoiceScore = list.Score
                    careerChoice = list.Career
                }
            }
            recommendCareer = careerChoice
            performSegue(withIdentifier: "showRecommendSegue", sender: sender)
        }else{
            loadQuiz(questionNum: ongoingQuizIndex)
        }
        
    }
    
    
    func loadQuiz(questionNum:Int){
        let questionItem = questionList[questionNum]
        var questionOptions = questionItem.options
        questionOptions.shuffle()
        question.text = questionItem.question
        for i in 0..<questionOptions.count{
            option[i].setTitle(questionOptions[i].content, for: .normal)
            option[i].tag = questionOptions[i].index
            option[i].isHidden = false
        }
        if questionItem.options.count != 4{
            for j in questionOptions.count...3{
                option[j].tag = 999
                option[j].isHidden = true
            }
        }
        ongoingQuizIndex += 1
        progress.progress = Float(ongoingQuizIndex)/Float(questionList.count)
//        print(ongoingQuizIndex)
//        print(questionList.count)
//        print(Float(ongoingQuizIndex/questionList.count))
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let controller = segue.destination as? ResultViewController // 指定要去的controller
        if let recommendCareer = recommendCareer{
            controller?.career = recommendCareer
        }
    }
    
}
