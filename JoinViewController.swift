//
//  JoinViewController.swift
//  Today
//
//  Created by 박수연 on 2022/03/22.
//

import UIKit

class JoinViewController: UIViewController {
    
    
    @IBOutlet weak var joinId: UITextField!
    @IBOutlet weak var joinPwd: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func joinFinish(_ sender: Any) {
        // MARK: join 버튼눌리면 modalView 닫힘
        self.dismiss(animated: true, completion: nil)
    }
    
    
    
}
