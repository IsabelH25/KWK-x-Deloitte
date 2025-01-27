//
//  TriviaQuestionsView.swift
//  KWK x Deloitte
//
//  Created by Isabel Hong on 1/19/25.
//

import SwiftUI

struct OldTriviaQuestionsView: View {
    var body: some View {
        VStack(spacing: 40) {
            HStack {
                Text("Trivia Game")
                    .triviaTitle()
                Spacer()
                Text("1 out of 5")
                    .foregroundColor(.black)
                    .fontWeight(.heavy)
            }
            
            ProgressBar(progress: 40)
            
            VStack(alignment: .leading, spacing: 20) {
                Text("The widening use of AI implies an increase in the technology’s consumption of power. A single ChatGPT query requires about ______ watt-hours of electricity, compared with 0.3 watt-hours for a Google search, according to the International Energy Agency.")
                    .font(.system(size: 20))
                    .bold()
                    .foregroundColor(.gray)
                
                AnswerRow(answer: Answer(text: "false", isCorrect: true))
                AnswerRow(answer: Answer(text: "true", isCorrect: false))
            }
            
            PrimaryButton(text: "Next")
            
            Spacer()
            
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color("CustomLightPink"))
        .navigationBarHidden(true)
    }
}

#Preview {
    OldTriviaQuestionsView()
}
