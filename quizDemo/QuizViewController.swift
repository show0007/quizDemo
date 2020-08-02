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
        
        questionList.shuffle()//問題順序打亂
        
        loadQuiz(questionNum: ongoingQuizIndex)//先載入第一題
        
        //畫面調整一下
        question.layer.cornerRadius = 5
        question.layer.borderWidth = 2
        question.layer.borderColor = UIColor.gray.cgColor
        buttonView.layer.cornerRadius = 5
        buttonView.layer.borderWidth = 2
        buttonView.layer.borderColor = UIColor.gray.cgColor
    }
    
    @IBAction func answer(_ sender: UIButton) {
        let index = sender.tag //取得tag -> 選項的index
        let contentList = questionList[ongoingQuizIndex-1].options //ongoingQuizIndex在載入時已經+1過了，這邊-1取得上一筆
        let careerList = contentList[index].belongTo //取得該選項加分的職業
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
            var careerChoice:Career?
            //判斷各職業那個分數較高
            var careerChoiceScore:Int = 0
            for list in scoreList {
                if list.Score > careerChoiceScore{
                    careerChoiceScore = list.Score
                    careerChoice = list.Career
                }
            }
            recommendCareer = careerChoice
            //跳轉controller 會觸發prepare ，要傳值需要設定
            performSegue(withIdentifier: "showRecommendSegue", sender: sender)
        }else{
            //沒回答完載入下一題
            loadQuiz(questionNum: ongoingQuizIndex)
        }
        
    }
    
    
    func loadQuiz(questionNum:Int){
        //載入題目
        let questionItem = questionList[questionNum]
        var questionOptions = questionItem.options
        questionOptions.shuffle()//選項打亂
        question.text = questionItem.question
        //因為選項的個數不定，只好用下面這樣去做了
        for i in 0..<questionOptions.count{
            option[i].setTitle(questionOptions[i].content, for: .normal)
            option[i].tag = questionOptions[i].index //用tag去讓他知道原本的index
            option[i].isHidden = false
        }
        if questionItem.options.count != 4{
            for j in questionOptions.count...3{
                option[j].tag = 999
                option[j].isHidden = true //沒用到的選項隱藏
            }
        }
        ongoingQuizIndex += 1
        //載入畫面上方的progress 進度條
        progress.progress = Float(ongoingQuizIndex)/Float(questionList.count)
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let controller = segue.destination as? ResultViewController // 指定要去的controller
        if let recommendCareer = recommendCareer{
            controller?.career = recommendCareer //傳入推薦職業
        }
    }
    
}
