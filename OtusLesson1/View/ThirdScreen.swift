//
//  ThirdScreen.swift
//  OtusLesson1
//
//  Created by Dmitry Mityunin on 6/1/23.
//

import SwiftUI

struct ThirdScreen: View {
    var quotes = Dict.quotes
    @State var showModal: Bool = false
    var body: some View {
        VStack {
            Button {
                showModal.toggle()
            } label: {
                Text("Show random quote")
            }
        }
        .sheet(isPresented: $showModal) {
            let randomQuoteIndex = Int.random(in: 0..<quotes.count)
            MotivationView(quote: quotes[randomQuoteIndex])
        }
        
    }
}

struct ThirdScreen_Previews: PreviewProvider {
    static var previews: some View {
        ThirdScreen()
    }
}
