//
//  FallDetection.swift
//  SpryCareWatch
//
//  Created by Dylan Sellers on 10/18/17.
//  Copyright © 2017 Dylan Sellers. All rights reserved.
//

import Foundation
import CoreMotion

let motion = CMMotionManager()

enum accelData {
    case x
    case y
    case z
}


//iniciates the accelerometers
func startAccelerometers() {
    // Make sure the accelerometer hardware is available.
    if motion.isAccelerometerAvailable {
        motion.accelerometerUpdateInterval = 1.0 / 60.0  // 60 Hz
        motion.startAccelerometerUpdates()
        
        // Configure a timer to fetch the data.
       let timer = Timer(fire: Date(), interval: (1.0/60.0),
                           repeats: true, block: { (timer) in
                            // Get the accelerometer data.
                            if let data = motion.accelerometerData {
                                let x = data.acceleration.x
                                let y = data.acceleration.y
                                let z = data.acceleration.z
                                
                                // Use the accelerometer data in your app.
                                //let fallData = accelData.x
                                
                                
                            }
        })
        
        // Add the timer to the current run loop.
        RunLoop.current.add(timer, forMode: .defaultRunLoopMode)
    }
}
