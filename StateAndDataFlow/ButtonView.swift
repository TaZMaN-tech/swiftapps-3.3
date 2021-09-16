//
//  ButtonView.swift
//  StateAndDataFlow
//
//  Created by Тадевос Курдоглян on 16.09.2021.
//

import SwiftUI

struct ButtonView: View {
    let action: () -> Void
    let text: String
    let color: Color
    
    var body: some View {
        Button(action: action) {
            Text(text)
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.white)
        }
        .frame(width: 200, height: 60)
        .background(color)
        .cornerRadius(20)
        .overlay(
            RoundedRectangle(cornerRadius: 20)
                .stroke(Color.black, lineWidth: 4)
        )
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView(action: {}, text: "", color: Color.red)
    }
}
