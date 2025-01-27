//
//  PrimaryButton.swift
//  KWK x Deloitte
//
//  Created by Isabel Hong on 1/19/25.
//

import SwiftUI

struct PrimaryButton: View {
    var text: String
    var background: Color = Color("lightyellow")
    var body: some View {
        Text(text)
            .foregroundColor(.black)
            .padding()
            .padding(.horizontal)
            .background(background)
            .cornerRadius(30)
            .shadow(radius: 10)
    }
}

#Preview {
    PrimaryButton(text: "Next")
}
