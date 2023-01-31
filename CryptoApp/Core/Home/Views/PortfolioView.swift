//
//  PortfolioView.swift
//  CryptoApp
//
//  Created by Yerdaulet Ismanaliyev on 30.01.2023.
//

import SwiftUI

struct PortfolioView: View {
    
    
    var body: some View {
        NavigationView{
            ScrollView{
                VStack(alignment: .leading, spacing: 0){
                    Text("Hi")
                }
            }
            .navigationTitle("Edit Portfolio")
            .toolbar(content: {
                ToolbarItem(placement: .navigationBarLeading) {
                    XMarkButton()
                }
            })
        }
    }
}

struct PortfolioView_Previews: PreviewProvider {
    static var previews: some View {
        PortfolioView()
    }
}
