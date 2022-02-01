//
//  StatementTableViewCell.swift
//  IOS-FinalProject-LSBank
//
//  Created by english on 2021-11-23.
//

import UIKit

class StatementTableViewCell: UITableViewCell {

    @IBOutlet weak var lblDateTime: UILabel!
    @IBOutlet weak var lblAccountHolder: UILabel!
    @IBOutlet weak var imgType: UIImageView!
    @IBOutlet weak var lblAmount: UILabel!
    @IBOutlet weak var lblMessage: UILabel!
    
    static let identifier = "StatementTableViewCell"
    
    static func nib()-> UINib {
    return UINib(nibName: identifier, bundle: nil)
    }
    
    public func setCellContent(dateTime : String, accountHolder : String, amount : Double, credit : Bool, message: String) { //it's public by default, but we can add it just to rememberit is public
        
        if credit {//changes : the image and the prefix in front of the account holder
            lblAccountHolder.text = "FROM \(accountHolder.uppercased())"
            imgType.image = UIImage (systemName: "checkmark.circle")
            imgType.tintColor = UIColor.green
            
        } else {
            //debit
            lblAccountHolder.text = "TO \(accountHolder.uppercased())"
            imgType.image = UIImage (systemName: "checkmark.circle")
            imgType.tintColor = UIColor.red
        }
        
        lblDateTime.text = dateTime
        lblAmount.text = amount.formatAsCurrency()
        lblMessage.text = message
    
        
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
