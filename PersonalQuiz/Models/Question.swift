//
//  Question.swift
//  PersonalQuiz
//
//  Created by Владимир Падусов on 26.10.2020.
//
enum ResponseType {
    case single
    case multiple
    case ranged
}

struct Question {
    let text: String
    let type: ResponseType
    var answers: [Answer]
}

extension Question {
    static func getQuestion() ->[Question] {
        return [
            Question(
                text: "Какую пищу вы предпочитаете",
                type: .single,
                answers: [
                    Answer(text: "Стейк", type: .dog),
                    Answer(text: "Рыба", type: .cat),
                    Answer(text: "Морковь", type: .rabbit),
                    Answer(text: "Кукуруза", type: .turtle),
                ]
            ),
            Question(
                text: "Что вам нравится больше",
                type: .multiple,
                answers: [
                    Answer(text: "Плавать", type: .dog),
                    Answer(text: "Спать", type: .cat),
                    Answer(text: "Обниматься", type: .rabbit),
                    Answer(text: "Есть", type: .turtle),
                ]
            ),
            Question(
                text: "Нравятся ли вам поездки",
                type: .ranged,
                answers: [
                    Answer(text: "Ненавижу", type: .cat),
                    Answer(text: "Нервничаю", type: .rabbit),
                    Answer(text: "Не замечаю", type: .turtle),
                    Answer(text: "Обожаю", type: .dog),
                ]
            ),
        ]
    }
}
