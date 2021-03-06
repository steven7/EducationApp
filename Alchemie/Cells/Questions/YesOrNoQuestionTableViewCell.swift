//
//  YesOrNoQuestionTableViewCell.swift
//  Alchemie
//
//  Created by Steve on 1/13/18.
//  Copyright © 2018 steve. All rights reserved.
//

import UIKit

class YesOrNoQuestionTableViewCell: UITableViewCell {

    @IBOutlet weak var questionLabel: UILabel!
    
    @IBOutlet weak var yesButton: UIButton!
    
    @IBOutlet weak var noButton: UIButton!
    
    var answer:Bool?
    
    var buttonClosureWithAns:((String, Int)->())?
    
    var row:Int?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        yesButton.layer.cornerRadius = 10
        noButton.layer.cornerRadius = 10
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    func setYes(){
        noButton.backgroundColor = UIColor.white
        noButton.titleLabel?.textColor = UIColor.lightBlue
        yesButton.backgroundColor = UIColor.lightBlue
        yesButton.titleLabel?.textColor = UIColor.white
        yesButton.tintColor = UIColor.white
        yesButton.setTitleColor( UIColor.white, for: .normal)
        answer = true
    }
    
    func setNo() {
        yesButton.backgroundColor = UIColor.white
        yesButton.titleLabel?.textColor = UIColor.lightBlue
        noButton.backgroundColor = UIColor.lightBlue
        noButton.titleLabel?.textColor = UIColor.white
        noButton.setTitleColor( UIColor.white, for: .normal)
        answer = false
    }
    
    func setNone() {
        noButton.backgroundColor = UIColor.white
        noButton.titleLabel?.textColor = UIColor.lightBlue
        yesButton.backgroundColor = UIColor.white
        yesButton.titleLabel?.textColor = UIColor.lightBlue
    }
    
    @IBAction func yesButtonPressed(_ sender: Any) {
        setYes()
        buttonClosureWithAns!("yes", row!)
    }
    
    @IBAction func noButtonPressed(_ sender: Any) {
        setNo()
        buttonClosureWithAns!("no", row!)
    }
    
    func getAnswer() -> String {
        var answer = ""
        if yesButton.isSelected {
            answer = "yes"
        }
        else {
            answer = "no"
        }
        return answer
    }
    
}
