import SwiftUI

struct TriviaResultsView: View {
    @ObservedObject var triviaManager: TriviaManager
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Quiz Complete!")
                .font(.title)
                .fontWeight(.bold)
            
            Text("Your Score: \(triviaManager.score) out of \(triviaManager.questions.count)")
                .font(.title2)
            
            Text("Percentage: \(Int((Double(triviaManager.score) / Double(triviaManager.questions.count)) * 100))%")
                .font(.title3)
            
            Button {
                triviaManager.restartQuiz()
            } label: {
                PrimaryButton(text: "Take Another Quiz")
            }
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color("CustomLightPink"))
    }
} 