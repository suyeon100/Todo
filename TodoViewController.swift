//
//  TodoViewController.swift
//  Todo
//
//  Created by 박수연 on 2022/03/01.
//

import UIKit

class TodoViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    
    @IBOutlet weak var todoText: UILabel!
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var myLabel: UILabel!
    
    let models = ["✔️아침운동 30분 - 40분", "✔️비타민 챙겨먹기💊", "✔️프로그래밍 공부", "✔️Firebase 로그인 구현", "✔️FSCalendar 추가", "✔️TableViewController로 TodoList 만들기", "✔️밥먹기🍚", "✔️휴식", "✔️12시전에 잠들기"]
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return models.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cells = tableView.dequeueReusableCell(withIdentifier: "cells", for: indexPath)
        
        cells.textLabel?.text = models[indexPath.row]
        return cells
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
       
        self.tableView.layer.cornerRadius = 12.0
        self.myLabel.text = "\(models.count)개의 todoList가 있습니다."
        
        
    }
    

}
