//
//  CustomTableViewCell.swift
//  PagBank
//
//  Created by user226298 on 10/26/22.
//

import UIKit



class CustomTableViewCell: UITableViewCell {

    
   
    
    
    static let identifier:String = "CustomTableViewCell"
    
 

    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.backgroundColor = .white
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}
