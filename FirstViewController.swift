//
//  ViewController.swift
//  Today
//
//  Created by 박수연 on 2022/03/21.
//

import UIKit

class FirstViewController: UIViewController {

    
    @IBOutlet weak var idText: UITextField!
    
    @IBOutlet weak var pwdText: UITextField!
    
    @IBOutlet weak var loginBtn: UIButton!
    
    @IBOutlet weak var joinBtn: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func loginChange(_ sender: Any) {
        
        guard let homeVC = self.storyboard?.instantiateViewController(withIdentifier: "TabBarController") else { return }
         self.navigationController?.pushViewController(homeVC, animated: true)
        
    }
    
    
    @IBAction func joinChange(_ sender: Any) {
        // MARK: join 버튼을 누르면 회원가입 modal 뷰가 올라옴
        
        guard let vc = storyboard?.instantiateViewController(identifier: "joinVC")as? JoinViewController else {
            return
        }
        present(vc, animated: true)
        
    }
    

}

