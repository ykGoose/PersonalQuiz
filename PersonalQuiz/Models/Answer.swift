//
//  Answer.swift
//  PersonalQuiz
//
//  Created by Владимир Падусов on 26.10.2020.
//

struct Answer {
    let text: String
    let type: AnimalType
}

enum AnimalType: Character {
    case dog = "🐶"
    case cat = "🐱"
    case rabbit = "🐰"
    case turtle = "🐢"
    
    var definition: String {
        switch self {

        case .dog:
            return "Нравится быть с друзьями"
        case .cat:
            return "Вы себе на уме"
        case .rabbit:
            return "Вам нравится все мягкое"
        case .turtle:
            return "Ваша сила - в мудрости"
        }
    }
}
