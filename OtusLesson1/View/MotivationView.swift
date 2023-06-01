//
//  MotivationView.swift
//  OtusLesson1
//
//  Created by Dmitry Mityunin on 6/1/23.
//

import SwiftUI

struct MotivationView: View {
    var quote: Quote
    var body: some View {
        VStack {
            HStack {
                Text(quote.text)
                    .fontWeight(.light)
            }

            HStack {
                Spacer()
                Text(quote.author)
                    .fontWeight(.ultraLight)
                
            }
            
            
        }
        .padding()
        
    }
}

struct MotivationView_Previews: PreviewProvider {
    static var previews: some View {
        MotivationView(quote: Dict.quotes[2])
    }
}
