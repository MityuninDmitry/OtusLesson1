//
//  TabManager.swift
//  OtusLesson1
//
//  Created by Dmitry Mityunin on 6/2/23.
//

import Foundation
class TabManager: ObservableObject {
    static let shared = TabManager()
    
    @Published var selectedNavigationLinkIndex: Int?
    
    var seletedTabId: Int
    var tabs: [Int]

    private init(selectedTabId: Int = 0) {
        self.seletedTabId = selectedTabId
        var idx: [Int] = []
        for quote in Dict.quotes {
            idx.append(quote.id)
        }
        
        tabs = idx
    }
    
    func updateTabsFromDict() {
        
    }
    
    func showRandomQuote() {
        self.selectedNavigationLinkIndex = Int.random(in: 0..<tabs.count)
        self.seletedTabId = 1
    }
    
    func clearSelectedNavigationIndex() {
        self.selectedNavigationLinkIndex = nil
    }
}
