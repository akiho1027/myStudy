//
//  ReminderListCell.swift
//  Today
//
//  Created by Akiho Ozawa on 2021/07/18.
//

import UIKit

class ReminderListCell: UITableViewCell {
    typealias DoneButtonAction = () -> Void
    
    @IBOutlet var doneButton: UIButton!
    @IBOutlet var dateLabel: UILabel!
    @IBOutlet var titleLabel: UILabel!
    
    var doneButtonAction: DoneButtonAction?
    
    @IBAction func doneButtonTriggered( sender: UIButton){
        doneButtonAction?()
    }
}
