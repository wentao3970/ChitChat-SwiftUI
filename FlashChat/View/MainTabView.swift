//
//  MainTabView.swift
//  FlashChat
//
//  Created by Wentao Wu on 7/27/21.
//

import SwiftUI

struct MainTabView: View {
    
    var body: some View {
        Text("User \(AuthViewModel.shared.userSession!.uid) has logged in! Yeah!")
        
        Button(action: {
            AuthViewModel.shared.signout()
            
        }, label: {
            Text("Sign out")
        })
    }
}

