//
//  ContentView.swift
//  OtusLesson1
//
//  Created by Dmitry Mityunin on 6/1/23.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var tabManager: TabManager
    
    var body: some View {
        
        TabView(selection: $tabManager.seletedTabId) {
            FirstScreen()
                .tabItem {
                    Label("FirstScreen", systemImage: "sun.min")
                }
                .tag(0)          
            
            SecondScreen()
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
            .environmentObject(TabManager.shared)
    }
}
