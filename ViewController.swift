//
//  ViewController.swift
//  Todo
//
//  Created by 박수연 on 2022/02/23.
//

import UIKit
import Firebase
import FSCalendar



class ViewController: UIViewController {
    
    
    @IBOutlet weak var todoLogo: UIImageView!
    
    
    @IBOutlet weak var idText: UITextField!
    
    @IBOutlet weak var pwText: UITextField!

    @IBOutlet weak var loginButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if Auth.auth().currentUser != nil {

                  idText.placeholder = "이미 로그인 된 상태입니다."

                   pwText.placeholder = "이미 로그인 된 상태입니다."

                   loginButton.setTitle("이미 로그인 된 상태입니다.", for: .normal)

               }

    }
    
    @IBAction func loginBtn(_ sender: Any) {
        Auth.auth().signIn(withEmail: idText.text!, password: pwText.text!) { (user, error) in

                   if user != nil{

                       print("login success")

                   }

                   else{

                       print("login fail")
        
    }
    
}
        guard let homeVC = self.storyboard?.instantiateViewController(withIdentifier: "TabBarController") else { return }
         self.navigationController?.pushViewController(homeVC, animated: true)
        
    }
 
    
}
