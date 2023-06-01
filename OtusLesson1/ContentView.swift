//
//  ContentView.swift
//  OtusLesson1
//
//  Created by Dmitry Mityunin on 6/1/23.
//

import SwiftUI

struct ContentView: View {
    @State var tabSelection: Int = 0
    @State var autoSelectedQuoteIndex: Int? = nil
    var body: some View {
        TabView(selection: $tabSelection) {
            FirstScreen(
                tabSelection: $tabSelection,
                autoSelectedItem: $autoSelectedQuoteIndex)
                .tabItem {
                    Label("FirstScreen", systemImage: "sun.min")
                }
                .tag(0)
            
            SecondScreen(autoSelectedItem: $autoSelectedQuoteIndex)
                .tabItem {
                    Label("SecondScreen", systemImage: "cloud.sun.bolt")
                }
                .tag(1)
            
            ThirdScreen()
                .tabItem {
                    Label("ThirdScreen", systemImage: "gear")
                }
                .tag(2)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
