//
//  InterfaceController.swift
//  watchFlash WatchKit Extension
//
//  Created by Nabil Maadarani on 2016-09-17.
//  Copyright © 2016 Nabil. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    @IBOutlet var flashlightButton: WKInterfaceButton!
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
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
    
    override func didAppear() {
        let now = DispatchTime.now()
        
        DispatchQueue.main.asyncAfter(deadline: now + 1) {
            self.flashlightButton.setBackgroundColor(UIColor(hue: 1.0, saturation: 0.0, brightness: 0.1, alpha: 1.0))
        }
        
        DispatchQueue.main.asyncAfter(deadline: now + 2) {
            self.flashlightButton.setBackgroundColor(UIColor(hue: 1.0, saturation: 0.0, brightness: 0.2, alpha: 1.0))
        }
        
        DispatchQueue.main.asyncAfter(deadline: now + 3) {
            self.flashlightButton.setBackgroundColor(UIColor(hue: 1.0, saturation: 0.0, brightness: 0.3, alpha: 1.0))
        }
        
        DispatchQueue.main.asyncAfter(deadline: now + 4) {
            self.flashlightButton.setBackgroundColor(UIColor(hue: 1.0, saturation: 0.0, brightness: 0.4, alpha: 1.0))
        }
        
        DispatchQueue.main.asyncAfter(deadline: now + 5) {
            self.flashlightButton.setBackgroundColor(UIColor(hue: 1.0, saturation: 0.0, brightness: 0.5, alpha: 1.0))
        }
        
        DispatchQueue.main.asyncAfter(deadline: now + 6) {
            self.flashlightButton.setBackgroundColor(UIColor(hue: 1.0, saturation: 0.0, brightness: 0.6, alpha: 1.0))
        }
        
        DispatchQueue.main.asyncAfter(deadline: now + 7) {
            self.flashlightButton.setBackgroundColor(UIColor(hue: 1.0, saturation: 0.0, brightness: 0.7, alpha: 1.0))
        }
        
        DispatchQueue.main.asyncAfter(deadline: now + 8) {
            self.flashlightButton.setBackgroundColor(UIColor(hue: 1.0, saturation: 0.0, brightness: 0.8, alpha: 1.0))
        }
        
        DispatchQueue.main.asyncAfter(deadline: now + 9) {
            self.flashlightButton.setBackgroundColor(UIColor(hue: 1.0, saturation: 0.0, brightness: 0.9, alpha: 1.0))
        }
        
        DispatchQueue.main.asyncAfter(deadline: now + 10) {
            self.flashlightButton.setBackgroundColor(UIColor(hue: 1.0, saturation: 0.0, brightness: 1.0, alpha: 1.0))
        }
    }

}
