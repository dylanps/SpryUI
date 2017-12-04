//
//  HapticReponse.swift
//  SpryCareWatchApp Extension
//
//  Created by Dylan Sellers on 11/2/17.
//  Copyright © 2017 Dylan Sellers. All rights reserved.
//

import Foundation
import UIKit
import WatchKit

class HapticResponse: WKInterfaceController {
    
    @IBOutlet var myTimer: WKInterfaceLabel!
    
    var seconds = 60
    var isTimerRunning = false
    var timer = Timer()
    var alarmValue = 100
  /*func runTimer()
  {
    timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: HapticResponse.updateTimer(), userInfo: nil, repeats: true)

    }
    
    func updateTimer() {
        seconds -= 1     //This will decrement(count down)the seconds.
        
        //This will update the label.
    }
    */
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        let generator = WKInterfaceDevice()
    
        generator.play(WKHapticType.failure)
        print("Vibrate!")
        
        // Configure interface objects here.
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
}




