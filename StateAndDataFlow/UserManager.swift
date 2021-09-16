//
//  UserManager.swift
//  StateAndDataFlow
//
//  Created by brubru on 13.09.2021.
//


import Combine
import SwiftUI

class UserManager: ObservableObject {
    //@Published var isRegister = false
    //var name = ""
    @AppStorage("isRegister") var isRegister = false
    @AppStorage ("userName") var name = ""
}
