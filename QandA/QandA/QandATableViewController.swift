//
//  QandATableViewController.swift
//  QandA
//
//  Created by Alex Roberts on 7/30/18.
//  Copyright © 2018 Lambda School Inc. All rights reserved.
//

import UIKit

class QandATableViewController: UITableViewController {

	
	override func viewWillAppear(_ animated: Bool) {
		super.viewWillAppear(animated)
		
		tableView.reloadData()
	}

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
		return questionController.questions.count
    }

	
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "questionCell", for: indexPath)
		guard let QandACell = cell as? QandATableViewCell else { return cell }
		
		let question = questionController.questions[indexPath.row]
		QandACell.question = question
		
		return QandACell
    }

	
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
			questionController.Remove(question: questionController.questions[indexPath.row])
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }

	
	// MARK: - Navigation
	
	// In a storyboard-based application, you will often want to do a little preparation before navigation
	
	override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
		if let askVC = segue.destination as? AskQuestionViewController {
			askVC.questionController = questionController
		}
		
		if let answerVC = segue.destination as? AnswerViewController {
			guard let indexPath = tableView.indexPathForSelectedRow else { return }
			answerVC.questionController = questionController
			answerVC.question = questionController.questions[indexPath.row]
		}
	}
	
	var questionController = QuestionController()
	
}
