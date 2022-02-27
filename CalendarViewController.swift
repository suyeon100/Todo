//
//  CalendarViewController.swift
//  Todo
//
//  Created by 박수연 on 2022/02/26.
//

import UIKit
import FSCalendar

class CalendarViewController:UIViewController, FSCalendarDelegate, FSCalendarDataSource {
   
    @IBOutlet weak var calendarVC: FSCalendar!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // 한 주로 보기
        calendarVC.scope = .month
        // 요일의 시작점
        
        calendarVC.calendarWeekdayView.weekdayLabels[0].text = "일"
        calendarVC.calendarWeekdayView.weekdayLabels[1].text = "월"
        calendarVC.calendarWeekdayView.weekdayLabels[2].text = "화"
        calendarVC.calendarWeekdayView.weekdayLabels[3].text = "수"
        calendarVC.calendarWeekdayView.weekdayLabels[4].text = "목"
        calendarVC.calendarWeekdayView.weekdayLabels[5].text = "금"
        calendarVC.calendarWeekdayView.weekdayLabels[6].text = "토"
        

        //스크롤
        
        calendarVC.scrollEnabled = true
        calendarVC.scrollDirection = .horizontal
    }
    

   

}
