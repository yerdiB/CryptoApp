//
//  XMarkButton.swift
//  CryptoApp
//
//  Created by Yerdaulet Ismanaliyev on 30.01.2023.
//

import SwiftUI

struct XMarkButton: View {

    let action: () -> ()
    
    var body: some View {
        Button(action: action, label: {
            Image(systemName: "xmark")
                .font(.headline)
        })
    }
}


struct XMarkButton_Previews: PreviewProvider {
    static var previews: some View {
        XMarkButton {
            
        }
            .environmentObject(dev.homeVM)
    }
}
