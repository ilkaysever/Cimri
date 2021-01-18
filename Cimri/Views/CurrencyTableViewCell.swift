//
//  CurrencyTableViewCell.swift
//  Cimri
//
//  Created by ilkay sever on 19.01.2021.
//

import UIKit

class CurrencyTableViewCell: UITableViewCell, ReusableView, NibLoadableView {
    
    @IBOutlet weak var label: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func fillCurrencyCell(responseCurrency: CurrencyModel) {
        label.text = responseCurrency.base
    }
    
}
