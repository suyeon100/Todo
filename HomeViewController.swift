//
//  HomeViewController.swift
//  Todo
//
//  Created by 박수연 on 2022/03/03.
//

import UIKit

class HomeViewController: UIViewController {
  
    
    
    
    @IBOutlet weak var homeTable: UITableView!
    
    let feedArray = [
        
        "안녕하세요 !",
        "무엇인가를 계획할떄 중요한 것.\n 1. 하고싶은 것 파악 \n 2. 최종목표부터 거꾸로 생각해보기 \n 구체적인가(Specific) - 이루고자 하는 바가 명확해야 한다.\n측정가능한가(Measurable) - 목표를 측정가능한 포인트로 나눌 수 있어야 한다.\n이룰 수 있는가(Attainable) - 목표에 다다르기 위해 필요한 단계들을 완료할 수 있어야 한다.\n관련이 있는가(Relevent) - 목표가 본인의 삶과 방향성에 부합하는가.\n시간이 있는가(Timely) - 목표 달성을 위해 나아갈 시간이 있고 일정에 따라 나아가야 한다.",
        "3. 구체적이고 현실적으로 계획하기",
        "4. 측정가능한 중간 목표 세우기",
        "5. 일을 작고 관리가능하게 쪼개기",
        "6. 리스트 정하기",
        "7. 모든일에 시간 정하기",
        "8. 시각자료 만들기",
        "9. 계획을 실천하면서 마무리한 일에 표시하기",
        "10. 모든것을 기록하기",
        "11. 최종목표를 달성할 떄까지 멈추지않기"
        
        ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //셀 리소스파일 가져오기
        
      let homeTableCellNib = UINib(nibName: "HomeTableViewcell", bundle: nil)
        
        //셀에 리소스 등록
        self.homeTable.register(homeTableCellNib, forCellReuseIdentifier: "homeTableCell")
        self.homeTable.rowHeight = UITableView.automaticDimension
        self.homeTable.estimatedRowHeight = 120
        
        self.homeTable.delegate = self
        self.homeTable.dataSource = self
    }
    
   

}

extension HomeViewController: UITableViewDelegate {
    
}

extension HomeViewController: UITableViewDataSource {
    
    // 테이블 뷰의 갯수
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return self.feedArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = homeTable.dequeueReusableCell(withIdentifier: "homeTableCell", for: indexPath) as! HomeTableCell
        cell.userContendLabel.text = feedArray[indexPath.row]
        
        return cell
    }
    
    
}
