//
//  QandATableViewCell.swift
//  QandA
//
//  Created by Alex Roberts on 7/30/18.
//  Copyright © 2018 Lambda School Inc. All rights reserved.
//

import UIKit

class QandATableViewCell: UITableViewCell {

	var question: Question? {
		didSet {
			updateViews()
		}
	}
	
	private func updateViews() {
		questionAskedByLabel.text = question?.asker
		questionLabel.text = question?.questiontext
		if let _ = question?.answer {questionAnswerLabel.text = "Press to see the answer"} else {questionAnswerLabel.text = "Can you answer this question?"}
	}
	
	@IBOutlet weak var questionLabel: UILabel!
	@IBOutlet weak var questionAskedByLabel: UILabel!
	@IBOutlet weak var questionAnswerLabel: UILabel!
}
