//
//  Question.swift
//  QandA
//
//  Created by Alex Roberts on 7/30/18.
//  Copyright © 2018 Lambda School Inc. All rights reserved.
//

import Foundation

struct Question {
	let question: String
	let asker: String
	var answer: String?
	var answerer: String?

	init(question: String, asker: String, answer: String? = nil, answerer: String? = nil) {
	self.question = question
	self.asker = asker
	self.answer = answer
	self.answerer = answerer
	}
	

}
