//
//  ContentView.swift
//  StateAndDataFlow
//
//  Created by brubru on 13.09.2021.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var user: UserManager
    @StateObject private var timer = TimeCounter()
    
    var body: some View {
        VStack {
            Text("Нi, \(user.name)")
                .font(.largeTitle)
                .offset(x: 0, y: 100)
            Text("\(timer.counter)")
                .font(.largeTitle)
                .offset(x: 0, y: 100)
            Spacer()
            
            ButtonView(action: timer.startTimer, text: "\(timer.buttonTitle)", color: Color.red)
            Spacer()
            ButtonView(action: logOut, text: "LogOut", color: Color.blue)
                .padding()
        }
    }
    
    private func logOut() {
        user.isRegister = false
        user.name = ""
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(UserManager())
    }
}
