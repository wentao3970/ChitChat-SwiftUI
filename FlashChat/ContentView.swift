//
//  ContentView.swift
//  FlashChat
//
//  Created by Wentao Wu on 7/20/21.
//

import SwiftUI

struct ContentView: View {
    
    var viewModel: AuthViewModel
    
    
    var body: some View {
        Text(viewModel.test)
            .padding()
    }
}

