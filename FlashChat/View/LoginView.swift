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
            VStack() {
                VStack(alignment: .leading, spacing: 12) {
                    
                    HStack{ Spacer() }
                    
                    Text("Hello.")
                            .font(.largeTitle)
                        .bold()
                    Text("Welcome Back")
                        .foregroundColor(.blue)
                        .font(.largeTitle)
                        .bold()
                }
                .padding(.leading)
                
                
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
                .padding([.top, .horizontal], 32)
                
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
                
                Button(action: {
                    AuthViewModel.shared.signIn(withEmail: email, password: password)
                }, label: {
                    Text("Sign in")
                        .bold()
                        .foregroundColor(.white)
                        .frame(width: 320, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .background(Color.blue)
                        .clipShape(Capsule())
                        .padding()
                    
                })
                
                Spacer()
                
                NavigationLink(
                    destination: SignupView()
                        .navigationBarHidden(true),
                    label: {
                        HStack(alignment: .center) {
                            Text("Don't have an account? ")
                                .font(.system(size: 14))
                            
                            Text("Sign Up")
                                .font(.system(size: 14, weight: .bold))
                            
                        }
                    })
                    
            }
            .padding(.leading)
            .padding(.top)
            .navigationBarHidden(true)
            
        }
        
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}

