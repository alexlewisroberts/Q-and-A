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
	
	func Create(question: String, asker: String) {
		let entry = Question(question: question, asker: asker)
		questions.append(entry)
	}
}
