import SwiftUI

struct TriviaQuestionView: View {
    @ObservedObject var triviaManager: TriviaManager
    @State private var selectedAnswerIndex: Int?
    @State private var hasAnswered = false
    
    var body: some View {
        ZStack {
            Color("CustomLightPink")
                .ignoresSafeArea()
            
            VStack(spacing: 20) {
                // Progress information
                HStack {
                    Text("Question \(triviaManager.currentQuestionIndex + 1) of \(triviaManager.questions.count)")
                    Spacer()
                    Text("Score: \(triviaManager.score)")
                }
                .padding()
                
                // Progress bar
                TriviaProgressBar(progress: Double(triviaManager.currentQuestionIndex + 1) / Double(triviaManager.questions.count))
                    .frame(height: 12)
                    .padding(.horizontal)
                
                // Question
                Text(triviaManager.questions[triviaManager.currentQuestionIndex].question)
                    .font(.title2)
                    .padding()
                
                // Answer choices
                ForEach(0..<4) { index in
                    AnswerButton(
                        answer: triviaManager.questions[triviaManager.currentQuestionIndex].answers[index],
                        isSelected: selectedAnswerIndex == index,
                        isCorrect: hasAnswered ? (index == triviaManager.questions[triviaManager.currentQuestionIndex].correctAnswerIndex) : nil
                    ) {
                        if !hasAnswered {
                            selectedAnswerIndex = index
                        }
                    }
                }
                .padding(.horizontal)
                
                // Next button
                if let selectedIndex = selectedAnswerIndex {
                    Button {
                        if !hasAnswered {
                            _ = triviaManager.checkAnswer(selectedIndex)
                            hasAnswered = true
                        } else {
                            triviaManager.nextQuestion()
                            selectedAnswerIndex = nil
                            hasAnswered = false
                        }
                    } label: {
                        PrimaryButton(text: hasAnswered ? "Next" : "Submit")
                    }
                    .padding()
                }
                
                Spacer()
            }
        }
        .navigationBarBackButtonHidden(true)
    }
}

struct TriviaProgressBar: View {
    var progress: Double
    
    var body: some View {
        GeometryReader { geometry in
            ZStack(alignment: .leading) {
                Rectangle()
                    .foregroundColor(.gray.opacity(0.3))
                
                Rectangle()
                    .foregroundColor(.blue)
                    .frame(width: geometry.size.width * progress)
            }
            .cornerRadius(6)
        }
    }
}

struct AnswerButton: View {
    let answer: String
    let isSelected: Bool
    let isCorrect: Bool?
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            HStack {
                Text(answer)
                    .padding()
                    .multilineTextAlignment(.leading)
                Spacer()
            }
            .frame(maxWidth: .infinity)
            .background(backgroundColor)
            .cornerRadius(10)
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(isSelected ? Color.blue : Color.gray, lineWidth: 2)
            )
        }
        .foregroundColor(.black)
        .disabled(isCorrect != nil)
    }
    
    private var backgroundColor: Color {
        if let isCorrect = isCorrect {
            return isCorrect ? Color.green.opacity(0.3) : Color.red.opacity(0.3)
        }
        return isSelected ? Color.blue.opacity(0.2) : Color.white
    }
} 