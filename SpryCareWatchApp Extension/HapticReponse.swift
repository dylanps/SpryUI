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

    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        
        let generator = WKInterfaceDevice()
        
       // while()
       // {
            generator.play(WKHapticType.success)
            
            print("Vibrate!")
        //}
        
        
        // Configure interface objects here.
    }
    

    
    //let buzz = WKHapticType.notification
    //WKInterfaceDevice().current().play(.success)
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
}




