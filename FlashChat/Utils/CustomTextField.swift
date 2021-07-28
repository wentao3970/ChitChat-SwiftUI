//
//  CustomTextField.swift
//  FlashChat
//
//  Created by Wentao Wu on 7/27/21.
//

import SwiftUI

struct CustomeTextFied: View {
    let placeholderText: String
    let imageName: String
    let isSecureField: Bool
    @Binding var text: String
    
    var body: some View {
        VStack(spacing: 16) {
            HStack {
                Image(systemName: imageName)
                    .foregroundColor(Color(.darkGray))
                
                if isSecureField {
                    SecureField(placeholderText, text: $text)
                } else {
                    TextField(placeholderText, text: $text)
                        .autocapitalization(.none)
                        .disableAutocorrection(true)
                }
                
            }
            
            Divider()
                .background(Color(.darkGray))
        }
    }
}
