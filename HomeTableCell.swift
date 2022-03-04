//
//  HomeTableCell.swift
//  Todo
//
//  Created by 박수연 on 2022/03/04.
//

import Foundation
import UIKit

class HomeTableCell: UITableViewCell {
    
    
    @IBOutlet weak var userProfileImg: UIImageView!
    
    @IBOutlet weak var userContendLabel: UILabel!
    
    
    
    //셀이 렌더링(그릴때) 될떄
    override class func awakeFromNib() {
        super.awakeFromNib()
        
        print("HomeTableCell - awakeFromNib() called")
        
    }
}
