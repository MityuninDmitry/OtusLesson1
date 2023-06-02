//
//  SecondScreen.swift
//  OtusLesson1
//
//  Created by Dmitry Mityunin on 6/1/23.
//

import SwiftUI

struct SecondScreen: View {
    var quotes = Dict.quotes
    
    @EnvironmentObject var tabManager: TabManager
    
    var body: some View {
        NavigationView {
            List(quotes, id: \.id) { quote in
                NavigationLink(
                    "See \(quote.id + 1) quote",
                    destination:MotivationView(quote: quote),
                    tag: quote.id,
                    selection: $tabManager.selectedNavigationLinkIndex
                )
            }
            .listStyle(.plain)
            .navigationTitle("Quotes")
            .navigationBarTitleDisplayMode(.inline)
        }
        
    }
}

struct SecondScreen_Previews: PreviewProvider {
    static var previews: some View {
        SecondScreen()
    }
}
