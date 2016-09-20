//
//  WelcomeInterfaceController.swift
//  watchFlash
//
//  Created by Nabil Maadarani on 2016-09-20.
//  Copyright © 2016 Nabil. All rights reserved.
//

import WatchKit
import Foundation


class WelcomeInterfaceController: WKInterfaceController {

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

    @IBAction func didPressGetStartedButton() {
        self.popToRootController()
        self.pushController(withName: "FlashScreenInterfaceController", context: nil)
    }
}
