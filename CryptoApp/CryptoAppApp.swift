//
//  CryptoAppApp.swift
//  CryptoApp
//
//  Created by Yerdaulet Ismanaliyev on 10.01.2023.
//

import SwiftUI

@main
struct CryptoAppApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView{
                HomeView()
                    .navigationBarHidden(true)
            }
        }
    }
}
