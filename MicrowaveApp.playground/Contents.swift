import UIKit

class MicroWave {
    
    var timeSet = (min:0,sec:0)
    
    var timer: Timer!
    
    enum  WattTipe: String {
        case watt700 = "700W"
        case watt500 = "500W"
    }
    
    let minute: Int
    let secnd: Int
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
            print("０〜５９秒以内に設定してください")
            return
        }
        
        print("温めスタート")
        
        }
    
}

let timer1 = MicroWave(minute: 0, second: 20, wattTipe: .watt500)
timer1.setTimer()
