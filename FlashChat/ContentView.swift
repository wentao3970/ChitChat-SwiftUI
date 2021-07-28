//
//  ContentView.swift
//  FlashChat
//
//  Created by Wentao Wu on 7/20/21.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var viewModel: AuthViewModel
    
    
    var body: some View {
        Group {
            if viewModel.userSession != nil {
                MainTabView()
                
            } else {
                LoginView()
            }
        }
    }
}

