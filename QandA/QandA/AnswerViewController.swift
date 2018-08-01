//
//  AnswerViewController.swift
//  QandA
//
//  Created by Alex Roberts on 7/30/18.
//  Copyright © 2018 Lambda School Inc. All rights reserved.
//

import UIKit

class AnswerViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
		updateViews()
    }



	
	func updateViews() {
		questionToBeAnswered.text = question?.questiontext
		personAskingQuestion.text = question?.asker
		enterNameTextField.text = question?.answerer
		enterAnswerTextField.text = question?.answer
	}
	
	var questionController: QuestionController?
	var question: Question?
	
	@IBOutlet weak var questionToBeAnswered: UILabel!
	
	@IBOutlet weak var personAskingQuestion: UILabel!
	
	@IBOutlet weak var enterNameTextField: UITextField!
	
	@IBOutlet weak var enterAnswerTextField: UITextView!
	
	@IBAction func submitAnswerButton(_ sender: Any) {
		guard let answer = enterAnswerTextField.text, let answerer = enterNameTextField.text else { return }
		questionController?.Update(question: question!, answer: answer, answerer: answerer)
		_ = navigationController?.popViewController(animated: true)
		
	}
	
	
}
