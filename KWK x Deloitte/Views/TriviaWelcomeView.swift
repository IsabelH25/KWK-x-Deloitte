//
//  TriviaView.swift
//  KWK x Deloitte
//
//  Created by Isabel Hong on 1/19/25.
//

import SwiftUI

struct TriviaWelcomeView: View {
    @StateObject private var triviaManager = TriviaManager()
    
    var body: some View {
        NavigationView {
            VStack(spacing: 40) {
                VStack(spacing: 20) {
                    Text("TRIVIA TIME")
                        .triviaTitle()
                    
                    Text("Test your AI & Sustainability knowledge with some TRIVIA!")
                        .foregroundColor(.black)
                }
                
                NavigationLink {
                    if triviaManager.quizCompleted {
                        TriviaResultsView(triviaManager: triviaManager)
                    } else {
                        TriviaQuestionView(triviaManager: triviaManager)
                    }
                } label: {
                    PrimaryButton(text: "Let's go!")
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .edgesIgnoringSafeArea(.all)
            .background(Color("CustomLightPink"))
        }
    }
}

#Preview {
    TriviaWelcomeView()
}
