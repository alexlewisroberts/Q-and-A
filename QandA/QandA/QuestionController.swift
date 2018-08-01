//
//  QuestionController.swift
//  QandA
//
//  Created by Alex Roberts on 7/30/18.
//  Copyright © 2018 Lambda School Inc. All rights reserved.
//

import Foundation

class QuestionController {
	var questions: [Question] = []
	
	func Create(questiontext: String, asker: String) {
		let entry = Question(questiontext: questiontext, asker: asker)
		questions.append(entry)
	}
	
	func Update(question: Question,answer: String, answerer: String) {
		guard let index = questions.index(of: question) else { return }
		questions[index].answer = answer
		questions[index].answerer = answerer
	}
	
	func Remove(question: Question) {
		guard let index = questions.index(of: question) else { return }
		questions.remove(at: index)
	}

}
