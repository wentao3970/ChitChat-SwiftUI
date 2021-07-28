//
//  AuthViewModel.swift
//  FlashChat
//
//  Created by Wentao Wu on 7/21/21.
//

import Foundation
import FirebaseAuth

class AuthViewModel: NSObject, ObservableObject {
    
    static let shared = AuthViewModel()
    
    @Published var userSession: FirebaseAuth.User?
    
    var test: String = "Wentao"
    
    override init() {
        print("initing authview model")
        userSession = Auth.auth().currentUser
    }

    func signIn(withEmail email: String, password: String) {
        
        Auth.auth().signIn(withEmail: email, password: password) { result, error in
            if let error = error {
                print(error.localizedDescription)
                return
            }
            
            self.userSession = result?.user
            print("user signed in")
            print(self.userSession ?? "nil")
        }
    }
    
    func register(withEmail email: String, password: String, username: String) {
        Auth.auth().createUser(withEmail: email, password: password) { result, error in
            if let error = error {
                print(error.localizedDescription)
                return
            }
            

        }
    }
    
    
    func signout() {
        userSession = nil
        try? Auth.auth().signOut()
        print(userSession ?? "nil")
        print("User signed out")
    }
    
    func uploadProfileImage() {
        
    }
    
}
