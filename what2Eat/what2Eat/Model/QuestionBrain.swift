//
//  Restaurant.swift
//  what2Eat
//
//  Created by Young Soo Hwang on 2021/12/31.
//

import Foundation

struct QuestionBrain {
    let question = [
        Question(0, "뜨끄은 한 궁물이 땡기시나요?", 1, 2),
        Question(1, "갈비탕이 땡기시나요?", 3, 4),
        Question(2, "양식이 땡기시나요?", 5, 6),
        Question(3, "혹시 육회비빔밥도 땡기시나용..?", 7, 8),
        Question(4, "오늘은 가까운 곳에서 식사하고 싶으신가용?",9, 10),
        Question(5, "혹시,,, 쉐잍크가 땡기시나용???", 11, 12),
        Question(6, "그렇다면 한식이 땡기시나용???", 13, 14)
    ]

    var questionKey = 0
    
    func isInProcess() -> Bool {
        if questionKey >= 7 {
            return false
        } else {
            return true
        }
    }
    
    func getText() -> String {
        return question[questionKey].text
    }
    
    func getRestaurant() -> String {
        return "오늘의 저녁 메뉴는 ... \(restaurant[questionKey - 7]) 입니다! 다시 하시겠습니까?"
    }
    
    mutating func setQuestionKey(_ answer: String) {
        let tmp = questionKey
        if questionKey > 6 {
            questionKey = 0
        } else {
            if answer == "녜!" {
                questionKey = question[tmp].yes
            } else {
                questionKey = question[tmp].no
            }
        }
    }
    
}
