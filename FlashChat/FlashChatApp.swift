//
//  FlashChatApp.swift
//  FlashChat
//
//  Created by Wentao Wu on 7/20/21.
//

import SwiftUI

@main
struct FlashChatApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(viewModel: AuthViewModel.shared)
        }
    }
}
