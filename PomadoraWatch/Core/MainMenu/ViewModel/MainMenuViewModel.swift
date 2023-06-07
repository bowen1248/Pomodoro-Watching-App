//
//  MainMenuViewModel.swift
//  PomadoraWatch
//
//  Created by hsnl on 2023/5/18.
//

import Foundation

class MainMenuViewModel: NSObject, ObservableObject {
    @Published var timeText: String = "25:00"
    var isPause: Bool = false
    var isStart: Bool = false
    var remainTime: Int = 150000
    private var startTime: Int = 0
    private var timer: Timer? = nil
    
    func startTimer() {
        if timer == nil {
            isPause = false
            isStart = true
            timer = Timer.scheduledTimer(timeInterval: 0.01, target: self, selector: #selector(secDiminish), userInfo: nil, repeats: true)
        }
    }
    
    func pauseTimer() {
        if timer != nil {
            isPause = true
            isStart = false
            timer!.invalidate()
            timer = nil
        }
    }
    
    func resetTimer() {
        if timer != nil {
            isPause = false
            isStart = false
            timer = nil
            timer!.invalidate()
            remainTime = 150000
        }
    }
    
    @objc func secDiminish() {
        remainTime -= 1
        var sec: Int = remainTime / 100
        DispatchQueue.main.async {
            self.timeText = String(format: "%d:%2d", (sec / 60), (sec % 60))
        }
        //print(timeText)
    }
}
