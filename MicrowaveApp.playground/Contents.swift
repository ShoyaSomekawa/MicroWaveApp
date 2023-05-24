import UIKit

class MicroWave {
    enum  WattTipe: String {
        case watt800 = "800W"
        case watt500 = "500W"
        case watt400 = "400W"
    }
    
    let minute: Int
    let secnd: Int
    let wattTipe: WattTipe
    
    init(minute: Int, second: Int, wattTipe: WattTipe) {
        self.minute = minute
        self.secnd = second
        self.wattTipe = wattTipe
    }
    
    func setTimer() {
        
        
    }
    
}
