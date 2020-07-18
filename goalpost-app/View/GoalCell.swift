//
//  GoalCell.swift
//  goalpost-app
//
//  Created by Yi Deng on 2020/6/30.
//  Copyright © 2020 Yi Deng. All rights reserved.
//

import UIKit

class GoalCell: UITableViewCell {

    @IBOutlet weak var goalDescLbl: UILabel!
    @IBOutlet weak var goalTypeLbl: UILabel!
    @IBOutlet weak var goalProgressLbl: UILabel!
    @IBOutlet weak var completionView: UIView!
    
    func configureCell(goal : Goal) {
        self.goalDescLbl.text = goal.goalDescription
        self.goalTypeLbl.text = goal.goalType
        self.goalProgressLbl.text = String(goal.goalProgress)
        
        if goal.goalProgress == goal.goalCompletionCount {
            self.completionView.isHidden = false
        } else {
            self.completionView.isHidden = true
        }
    }
}
