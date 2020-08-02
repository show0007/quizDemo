//
//  Quiz.swift
//  quizDemo
//
//  Created by 林家宇 on 2020/7/31.
//

import Foundation

struct Quiz{
    let question:String
    let options:[Option]
}
struct Option{
    let index:Int
    let content:String
    let belongTo:[Career]
    
}
enum Career{
    case Swordman   //劍士
    case Magician   //魔法師
    case Acolyte    //服事
    case Thief      //盜賊
    case Merchant   //商人
    case Archer     //弓箭手
}
struct Recommend {
    let Career:Career
    let Name:String
    let ImageName:String
    let Introduction:String
}
struct Score {
    let Career:Career
    var Score:Int = 0
}

var questionList = [
    Quiz(question: "請選擇下列選項中你認為較符合自己的詞彙。", options: [
        Option(index:0, content: "暴力", belongTo: [.Swordman,.Thief]),
        Option(index:1, content: "服務", belongTo: [.Acolyte,.Merchant]),
        Option(index:2, content: "運動", belongTo: [.Archer]),
        Option(index:3, content: "唸書", belongTo: [.Magician])
    ]),
    Quiz(question: "請選擇下列選項中你認為較符合自己的詞彙。", options: [
        Option(index:0, content: "變化", belongTo: [.Swordman,.Magician,.Merchant]),
        Option(index:1, content: "保存", belongTo: [.Acolyte,.Thief,.Archer])
    ]),
    Quiz(question: "請選擇下列選項中你認為較符合自己的詞彙。", options: [
        Option(index:0, content: "消費者", belongTo: [.Swordman,.Magician,.Acolyte,.Thief]),
        Option(index:1, content: "販賣者", belongTo: [.Merchant]),
        Option(index:2, content: "生產者", belongTo: [.Archer])
    ]),
    Quiz(question: "請選擇下列選項中你認為較符合自己的詞彙。", options: [
        Option(index:0, content: "迅速", belongTo: [.Swordman,.Thief,.Archer]),
        Option(index:1, content: "慎重者", belongTo: [.Magician,.Acolyte,.Merchant])
    ]),
    Quiz(question: "請選擇下列選項中你認為較符合自己的詞彙。", options:[
        Option(index:0, content: "理論", belongTo: [.Magician,.Acolyte]),
        Option(index:1, content: "經驗", belongTo: [.Swordman,.Thief,.Merchant,.Archer])
    ]),
    Quiz(question: "請選擇下列選項中你認為較符合自己的詞彙。", options: [
        Option(index:0, content: "過去", belongTo: [.Thief,.Archer]),
        Option(index:1, content: "現實", belongTo: [.Swordman,.Merchant]),
        Option(index:2, content: "未來", belongTo: [.Magician,.Acolyte])
    ]),
    Quiz(question: "認為死寧願重於泰山也不願輕於鴻毛。", options: [
        Option(index:0, content: "是", belongTo: [.Swordman]),
        Option(index:1, content: "不是", belongTo: [.Magician,.Thief,.Archer,.Merchant,.Acolyte])
    ]),
    Quiz(question: "看到別人成功，會很生氣。", options: [
        Option(index:0, content: "是", belongTo: [.Magician,.Thief,.Merchant]),
        Option(index:1, content: "不是", belongTo: [.Swordman,.Archer,.Acolyte])
    ]),
    Quiz(question: "處於危險的地方時，會先到處走走。", options: [
        Option(index:0, content: "是", belongTo: [.Thief]),
        Option(index:1, content: "不是", belongTo: [.Swordman,.Archer,.Acolyte,.Magician,.Merchant])
    ]),
    Quiz(question: "在一群人中總是想要當指揮者，任何事都想要站在前頭。", options: [
        Option(index:0, content: "是", belongTo: [.Swordman]),
        Option(index:1, content: "不是", belongTo: [.Thief,.Archer,.Acolyte,.Magician,.Merchant])
    ]),
    Quiz(question: "看到寫著 ' 推 ' 的字樣，反而會想要用拉的。", options: [
        Option(index:0, content: "是", belongTo: [.Thief]),
        Option(index:1, content: "不是", belongTo: [.Swordman,.Archer,.Acolyte,.Magician,.Merchant])
    ]),
    Quiz(question: "有時候除了活著的生物之外，還會看到一些非現實生活中的其他生物。", options: [
        Option(index:0, content: "是", belongTo: [.Magician,.Acolyte]),
        Option(index:1, content: "不是", belongTo: [.Swordman,.Archer,.Thief,.Merchant])
    ]),
    Quiz(question: "從高處掉下來時，感覺好像在飛翔。", options: [
        Option(index:0, content: "是", belongTo: [.Archer]),
        Option(index:1, content: "不是", belongTo: [.Swordman,.Thief,.Merchant,.Magician,.Acolyte])
    ]),
    Quiz(question: "認為只要有錢的話沒有買不到的東西，甚至認為可以買到人的心。", options: [
        Option(index:0, content: "是", belongTo: [.Merchant]),
        Option(index:1, content: "不是", belongTo: [.Swordman,.Thief,.Archer,.Magician,.Acolyte])
    ]),
    Quiz(question: "看著緊緊的時間表會…", options: [
        Option(index:0, content: "覺得鬱悶", belongTo: [.Swordman,.Magician,.Thief]),
        Option(index:1, content: "覺得很好", belongTo: [.Merchant,.Acolyte]),
        Option(index:2, content: "我是自由人", belongTo: [.Archer])
    ]),
    Quiz(question: "當你在購買物品之前", options: [
        Option(index:0, content: "看是否需要", belongTo: [.Swordman,.Magician,.Acolyte,.Archer]),
        Option(index:1, content: "先買了再說", belongTo: [.Thief]),
        Option(index:2, content: "先查看金額", belongTo: [.Merchant])
    ]),
    Quiz(question: "你對於跟很多人競爭這件事…", options: [
        Option(index:0, content: "很喜歡", belongTo: [.Swordman,.Magician,.Thief,.Merchant]),
        Option(index:1, content: "很討厭", belongTo: [.Acolyte,.Archer])
    ]),
    Quiz(question: "很多人一起做的話，可以做的很快又容易，如果是你的話…", options: [
        Option(index:0, content: "一個人處理", belongTo: [.Swordman,.Magician,.Thief,.Merchant]),
        Option(index:1, content: "請周圍的人幫忙", belongTo: [.Acolyte,.Archer])
    ]),
    Quiz(question: "如果她需要你幫忙的話…", options: [
        Option(index:0, content: "先幫忙再說", belongTo: [.Swordman,.Acolyte]),
        Option(index:1, content: "視情況而定", belongTo: [.Magician,.Merchant,.Archer]),
        Option(index:2, content: "置之不理", belongTo: [.Thief])
    ]),
    Quiz(question: "走路途中偶然撿到了 ' 衣服 ' ，如果是你的話…", options: [
        Option(index:0, content: "是誰的衣服呢?", belongTo: [.Swordman]),
        Option(index:1, content: "拿了就走", belongTo: [.Magician,.Thief]),
        Option(index:2, content: "放在原地不拿", belongTo: [.Acolyte,.Archer]),
        Option(index:3, content: "確認是什麼的牌子", belongTo: [.Merchant])
    ]),
    Quiz(question: "聊天時遇到難為或尷尬的情況時…", options: [
        Option(index:0, content: "用開玩笑緩和氣氛", belongTo: [.Swordman,.Magician,.Acolyte,.Archer,.Thief,.Merchant]),
    ]),
    Quiz(question: "當你的愛人向你要求買給他不好看又沒用的旅行紀念品的時候，你會…", options: [
        Option(index:0, content: "愛人的話絕對是對的", belongTo: [.Swordman,.Magician,.Acolyte,.Archer,.Thief,.Merchant]),
    ])
]

var scoreList = [
    Score(Career: .Swordman),
    Score(Career: .Magician),
    Score(Career: .Acolyte),
    Score(Career: .Thief),
    Score(Career: .Merchant),
    Score(Career: .Archer)
]
let recommendList = [
    Career.Swordman:Recommend(Career: .Swordman, Name: "劍士",ImageName: "Swordman", Introduction: "劍士大多使用中重量級的武器跟盾甲，以至於敏捷度較低，但是劍士的攻擊是極強有力的，而其技能大多屬於攻擊面。初期在城村附近可說是毫無對手，可以輕鬆升級，到後期更是團隊中不可或缺的職業。"),
    Career.Magician:Recommend(Career: .Magician, Name: "魔法師",ImageName: "Magician", Introduction: "可以施展不同屬性的魔法技能，並在短時間施展強大的法術擊倒敵人。不過虛弱的體質是魔法師最大的致命傷，大家在戰鬥的時候要記得保護好他唷！初期等級相當難練，到後期強力的魔法會成為隊伍中的主力攻擊。"),
    Career.Thief: Recommend(Career: .Thief, Name: "盜賊",ImageName: "Thief", Introduction: "盜賊防禦能力雖略遜於劍士，但卻擁有高敏捷及各種不同的自保技能。可裝備的武器包含短劍、長劍、弓箭，不管是遠距離攻擊或近距離攻擊都相當拿手。且可使用中毒的間接攻擊，在初期就可以面對高防禦的強敵。因為防禦力沒有比劍士高，因此要特別注意HP。危險的時候還可使用躲避技巧，並可偷取敵人身上的道具，喜歡單槍匹馬又可以有額外收入的玩家們可以考慮喔。"),
    Career.Acolyte:Recommend(Career: .Acolyte, Name: "服事",ImageName: "Acolyte", Introduction: "服務神明的最基層人員；可以治療別人，對不死系怪物殺傷力強大，在危及存亡關頭放出防護罩，給予團隊人馬在激烈的戰鬥中喘息的機會，還能直接開啟傳送之陣將大家送達目的地。擁有各種不同的祈禱技能，回復魔法為服事專用，在組隊時是很重要的人物。輔助魔法也佔有非常重要的地位，尤其是執行任務打魔王的時候，若有輔助魔法的幫助，將會輕鬆不少。"),
    Career.Merchant:Recommend(Career: .Merchant, Name: "商人",ImageName: "Merchant", Introduction: "擁有爆發型的攻擊力及一般的生存能力，可別以為商人好欺負，除了買賣類型的技能外還有極具特色的金錢攻擊，以及透過任務習得手推車攻擊，因此爆發力相當高；相對的防禦力就較一般。商人最大的特色是可跟 NPC 低價買入商品，在外自行開店，亦可高價售出商品。對於初期很缺錢的玩家們可說是必練職業之一。"),
    Career.Archer:Recommend(Career: .Archer, Name: "弓箭手",ImageName: "Archer", Introduction: "人稱RO中的狩獵高手，擁有最遠的攻擊距離，手上的弓箭只要裝備箭矢，任何獵物都逃不過他的手掌心，利用地形優勢打出漂亮的傷害並快速升級，是他最大的優勢，更可以搭配不同屬性箭矢造成更大量的傷害，是練功的熱門角色，如果想試試超級英雄-鷹眼的英姿，可千萬別錯過這個機會！")
]
