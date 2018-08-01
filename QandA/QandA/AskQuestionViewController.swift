//
//  AskQuestionViewController.swift
//  QandA
//
//  Created by Alex Roberts on 7/30/18.
//  Copyright © 2018 Lambda School Inc. All rights reserved.
//

import UIKit

class AskQuestionViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }

	
	@IBOutlet weak var enterNameTextField: UITextField!
	@IBOutlet weak var enterQuestionTextView: UITextView!
	@IBAction func submitQuestion(_ sender: Any) {
		guard let name = enterNameTextField.text else { return }
		guard let questiontext = enterQuestionTextView.text else { return }
		questionController?.Create(questiontext: questiontext, asker: name)
		navigationController?.popViewController(animated: true)
	}


	var questionController: QuestionController?
}
