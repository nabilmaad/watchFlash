//
//  InterfaceController.swift
//  watchFlash WatchKit Extension
//
//  Created by Nabil Maadarani on 2016-09-17.
//  Copyright © 2016 Nabil. All rights reserved.
//

import WatchKit
import Foundation


final class FlashScreenInterfaceController: WKInterfaceController {

    @IBOutlet var flashlightButton: WKInterfaceButton!
    
    fileprivate var whiteColorBrightness: CGFloat = 0.0
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        self.crownSequencer.delegate = self
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        
        self.crownSequencer.focus()
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

    @IBAction func flashlightButtonTapped() {
        self.presentController(withName: "HelperInterfaceController", context: nil)
    }
}

extension FlashScreenInterfaceController: WKCrownDelegate {
    
    func crownDidRotate(_ crownSequencer: WKCrownSequencer?, rotationalDelta: Double) {
        var newBrightness = self.whiteColorBrightness + CGFloat(rotationalDelta)
        newBrightness = max(min(newBrightness, 1.0), 0.0)
        
        self.flashlightButton.setBackgroundColor(UIColor(hue: 1.0, saturation: 0.0, brightness: newBrightness, alpha: 1.0))
        self.whiteColorBrightness = newBrightness
    }
}
