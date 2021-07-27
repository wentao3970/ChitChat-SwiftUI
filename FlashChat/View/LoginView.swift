//
//  LoginView.swift
//  FlashChat
//
//  Created by Wentao Wu on 7/27/21.
//

import SwiftUI

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    
    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                HStack{ Spacer() }
                
                Text("Hello.")
                        .font(.largeTitle)
                        .bold()
                
                Text("Welcome Back")
                        .foregroundColor(.blue)
                        .font(.largeTitle)
                        .bold()
                
                VStack(spacing: 20){
                    CustomeTextFied(placeholderText: "Email",
                                    imageName: "envelope",
                                    isSecureField: false,
                                    text: $email)
                    
                    CustomeTextFied(placeholderText: "Password",
                                    imageName: "lock",
                                    isSecureField: true,
                                    text: $password)
                }
                .padding([.top, .horizontal], 30)
                
                HStack {
                    Spacer()
                    NavigationLink(
                        destination: SignupView(),
                        label: {
                            Text("Forget Password?")
                                .font(.system(size: 14, weight: .semibold))
                                .padding(.top)
                                .padding(.trailing, 30)
                        })
                }
                
                Spacer()
            }
            .padding(.leading)
            .navigationBarHidden(true)
        }
        
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}

