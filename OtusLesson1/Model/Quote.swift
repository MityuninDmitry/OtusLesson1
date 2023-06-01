//
//  Quote.swift
//  OtusLesson1
//
//  Created by Dmitry Mityunin on 6/1/23.
//

import Foundation
class Quote: ObservableObject, Identifiable {
    var id: Int 
    var text: String
    var author: String
    
   
    init(id: Int, text: String, author: String) {
        self.id = id
        self.text = text
        self.author = author
    }
}
