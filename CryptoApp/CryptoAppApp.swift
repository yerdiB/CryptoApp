//
//  CryptoAppApp.swift
//  CryptoApp
//
//  Created by Yerdaulet Ismanaliyev on 10.01.2023.
//

import SwiftUI

@main
struct CryptoAppApp: App {
    
    @StateObject private var vm = HomeViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView{
                HomeView()
                    .navigationBarHidden(true)
            }
            .environmentObject(vm)
        }
    }
}
