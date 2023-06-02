//
//  FirstScreen.swift
//  OtusLesson1
//
//  Created by Dmitry Mityunin on 6/1/23.
//

import SwiftUI


struct FirstScreen: View {
    
    @State var isAnimating: Bool = false
    @EnvironmentObject var tabManager: TabManager
    
    var body: some View {
        VStack(spacing: 10) {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            Text("This app is for showing motivational quotes.")
            Text("Press button below to show random quote")
            
            ActivityIndicator(isAnimating: $isAnimating)
                .opacity(isAnimating ? 1 : 0)
            
            Button {
                isAnimating = true
                
                DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                    tabManager.showRandomQuote()
                }
               
            } label: {
                Text("Show random quote")
            }
            
            
        }
        .padding()
        .onDisappear {
            isAnimating = false
        }
        
        
    }
}

struct FirstScreen_Previews: PreviewProvider {
    static var previews: some View {
        FirstScreen()
    }
}
