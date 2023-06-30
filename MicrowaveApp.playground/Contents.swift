import UIKit

class MicroWave {
    
    var timeSet = (min:0,sec:0)
    
    var timer: Timer!
    
    enum  WattTipe: String {
        case watt800 = "700W"
        case watt500 = "500W"
    }
    
    var minute: Int
    var secnd: Int
    let wattTipe: WattTipe
    
    init(minute: Int, second: Int, wattTipe: WattTipe) {
        self.minute = minute
        self.secnd = second
        self.wattTipe = wattTipe
    }
    
    func printContent() {
        print("ワット数: \(wattTipe.rawValue), 温め時間\(minute)分\(secnd)秒")
    }
    
    func setTimer() {
        printContent()
        
        guard minute <= 10 else {
            print("温めできません。１０分以内に設定してください。")
            return
        }
        
        guard secnd <= 59 else {
            print("０〜５９秒以内に設定してください。")
            return
        }
        
        print("温めスタート！")
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(countdown), userInfo: nil, repeats: true)
    }
    @objc func countdown() {
        secnd -= 1
        if 0 == secnd && 0 != minute {
            minute -= 1
            secnd = minute == 0 ? 60 : 0
        }
        print("カウントは\(minute)分\(secnd)秒です。")
        if 0 == minute && 0 == secnd {
            print("温め終了です。")
            
            timer?.invalidate()
        }
    }
    
}

let timer1 = MicroWave(minute: 1, second: 5, wattTipe: .watt500)
timer1.setTimer()

