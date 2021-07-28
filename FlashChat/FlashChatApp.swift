//
//  FlashChatApp.swift
//  FlashChat
//
//  Created by Wentao Wu on 7/20/21.
//

import SwiftUI
import Firebase

@main
struct FlashChatApp: App {
    
    init() {
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(AuthViewModel.shared)
        }
    }
}
