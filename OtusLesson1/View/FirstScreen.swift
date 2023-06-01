//
//  FirstScreen.swift
//  OtusLesson1
//
//  Created by Dmitry Mityunin on 6/1/23.
//

import SwiftUI

struct FirstScreen: View {
    @Binding var tabSelection: Int
    @Binding var autoSelectedItem: Int?
    var body: some View {
        VStack(spacing: 10) {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            Text("This app is for showing motivational quotes.")
            Text("Press button below to show random quote")
            
            Button {
                autoSelectedItem = Int.random(in: 0..<Dict.quotes.count)
                tabSelection = 1 
            } label: {
                Text("Show random quote")
            }
        }
        .padding()
        
        
    }
}

struct FirstScreen_Previews: PreviewProvider {
    static var previews: some View {
        FirstScreen(tabSelection: .constant(0), autoSelectedItem: .constant(nil))
    }
}
