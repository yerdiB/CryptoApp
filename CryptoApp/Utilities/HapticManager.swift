//
//  HapticManager.swift
//  CryptoApp
//
//  Created by Yerdaulet Ismanaliyev on 17.02.2023.
//

import Foundation
import SwiftUI

class HapticManager{
    
    static private let generator = UINotificationFeedbackGenerator()
    
    static func notification(type: UINotificationFeedbackGenerator.FeedbackType){
        generator.notificationOccurred(type)
    }
}
