import Foundation

struct TriviaQuestion: Identifiable {
    let id = UUID()
    let question: String
    let answers: [String]
    let correctAnswerIndex: Int
}

class TriviaManager: ObservableObject {
    @Published var questions: [TriviaQuestion] = []
    @Published var currentQuestionIndex = 0
    @Published var score = 0
    @Published var quizCompleted = false
    
    init() {
        loadQuestions()
    }
    
    func loadQuestions() {
        let allQuestions = [
            // General Questions (1-5)
            TriviaQuestion(
                question: "What is one way AI can contribute to sustainability?",
                answers: [
                    "By increasing fossil fuel usage",
                    "By optimizing energy consumption in smart grids",
                    "By replacing renewable energy sources",
                    "By reducing recycling efforts"
                ],
                correctAnswerIndex: 1
            ),
            TriviaQuestion(
                question: "What is a major environmental concern associated with AI?",
                answers: [
                    "Reduced computational power",
                    "High energy consumption during model training",
                    "Lack of applications in agriculture",
                    "Minimal use of natural resources"
                ],
                correctAnswerIndex: 1
            ),
            TriviaQuestion(
                question: "How does AI impact water resources?",
                answers: [
                    "By increasing water supply",
                    "By requiring large amounts of water for cooling data centers",
                    "By reducing water waste in agriculture",
                    "By eliminating the need for water in manufacturing"
                ],
                correctAnswerIndex: 1
            ),
            TriviaQuestion(
                question: "What is one way AI can reduce carbon emissions in transportation?",
                answers: [
                    "By promoting single-use vehicles",
                    "By optimizing delivery routes and logistics",
                    "By increasing the number of vehicles on the road",
                    "By replacing public transportation systems"
                ],
                correctAnswerIndex: 1
            ),
            TriviaQuestion(
                question: "Which of the following is an example of AI improving agriculture?",
                answers: [
                    "Automating pesticide production",
                    "Monitoring crop health using drones and sensors",
                    "Increasing soil erosion through mining activities",
                    "Eliminating the need for irrigation"
                ],
                correctAnswerIndex: 1
            ),
            
            // AI and Energy (6-10)
            TriviaQuestion(
                question: "How can AI help in renewable energy management?",
                answers: [
                    "By predicting energy demand and supply patterns",
                    "By reducing the efficiency of solar panels",
                    "By replacing wind turbines with coal plants",
                    "By discouraging renewable energy adoption"
                ],
                correctAnswerIndex: 0
            ),
            TriviaQuestion(
                question: "What is one challenge of AI in energy-intensive industries?",
                answers: [
                    "It reduces productivity in factories",
                    "It increases electricity consumption significantly",
                    "It eliminates the need for automation",
                    "It discourages innovation"
                ],
                correctAnswerIndex: 1
            ),
            TriviaQuestion(
                question: "What is the primary reason data centers are criticized for their environmental impact?",
                answers: [
                    "They generate significant electronic waste",
                    "They are located in urban areas only",
                    "They operate without cooling systems",
                    "They rely entirely on renewable energy"
                ],
                correctAnswerIndex: 0
            ),
            TriviaQuestion(
                question: "How can AI improve energy efficiency in buildings?",
                answers: [
                    "By designing larger buildings with more windows",
                    "By optimizing heating, ventilation, and lighting systems using smart sensors",
                    "By eliminating insulation requirements",
                    "By increasing energy consumption deliberately"
                ],
                correctAnswerIndex: 1
            ),
            TriviaQuestion(
                question: "Which U.S. state has the highest concentration of data center power usage?",
                answers: [
                    "California",
                    "Virginia",
                    "Texas",
                    "New York"
                ],
                correctAnswerIndex: 1
            ),
            
            // AI and Climate Change (11-15)
            TriviaQuestion(
                question: "What is one way AI helps combat climate change?",
                answers: [
                    "Predicting weather patterns to optimize renewable energy use",
                    "Increasing reliance on fossil fuels",
                    "Encouraging deforestation",
                    "Eliminating recycling programs"
                ],
                correctAnswerIndex: 0
            ),
            TriviaQuestion(
                question: "How do large AI models contribute to greenhouse gas emissions?",
                answers: [
                    "Through high computational power requirements during training",
                    "Through reduced efficiency in other industries",
                    "Through minimal electricity usage",
                    "Through reliance on solar power exclusively"
                ],
                correctAnswerIndex: 0
            ),
            TriviaQuestion(
                question: "What is one environmental benefit of AI-powered smart grids?",
                answers: [
                    "They increase carbon emissions",
                    "They optimize electricity distribution to reduce waste",
                    "They discourage renewable energy adoption",
                    "They eliminate the need for power plants"
                ],
                correctAnswerIndex: 1
            ),
            TriviaQuestion(
                question: "How does AI contribute to deforestation monitoring?",
                answers: [
                    "Using satellite imagery to detect illegal logging activities",
                    "Encouraging timber production growth",
                    "Replacing forests with urban areas",
                    "Eliminating tree planting initiatives"
                ],
                correctAnswerIndex: 0
            ),
            TriviaQuestion(
                question: "Which sector benefits most from AI-driven climate modeling?",
                answers: [
                    "Fashion design",
                    "Renewable energy planning and disaster management",
                    "Entertainment media production",
                    "Mining operations"
                ],
                correctAnswerIndex: 1
            ),
            
            // AI and Waste Management (16-19)
            TriviaQuestion(
                question: "How does AI improve waste management processes?",
                answers: [
                    "By enhancing waste sorting using computer vision technology",
                    "By promoting landfill expansion projects",
                    "By increasing single-use plastics production",
                    "By discouraging recycling initiatives"
                ],
                correctAnswerIndex: 0
            ),
            TriviaQuestion(
                question: "What type of waste is most associated with data centers?",
                answers: [
                    "Food waste",
                    "Electronic waste (e-waste), including hazardous materials",
                    "Agricultural waste",
                    "Textile waste"
                ],
                correctAnswerIndex: 1
            ),
            TriviaQuestion(
                question: "How can AI help reduce food waste globally?",
                answers: [
                    "Automating food packaging processes",
                    "Predicting demand and managing inventory more efficiently",
                    "Increasing food production without storage solutions",
                    "Replacing farmers with automated machines"
                ],
                correctAnswerIndex: 1
            ),
            TriviaQuestion(
                question: "What is one way to make data centers more sustainable?",
                answers: [
                    "Using renewable energy sources for power generation and cooling systems",
                    "Increasing their size without improving efficiency",
                    "Eliminating cooling systems entirely",
                    "Relying solely on fossil fuels"
                ],
                correctAnswerIndex: 0
            ),
            
            // AI and Circular Economy (20-24)
            TriviaQuestion(
                question: "What role does AI play in circular economy practices?",
                answers: [
                    "Promoting single-use products",
                    "Optimizing recycling processes and material recovery",
                    "Increasing landfill capacity",
                    "Discouraging the use of renewable materials"
                ],
                correctAnswerIndex: 1
            ),
            TriviaQuestion(
                question: "How can AI help reduce electronic waste (e-waste)?",
                answers: [
                    "By designing products with longer lifespans and better recyclability",
                    "By encouraging frequent upgrades of electronic devices",
                    "By automating the production of non-recyclable materials",
                    "By eliminating the need for recycling programs"
                ],
                correctAnswerIndex: 0
            ),
            TriviaQuestion(
                question: "What is one way AI-powered systems can improve product lifecycle management?",
                answers: [
                    "By tracking materials to enable reuse and recycling",
                    "By increasing the production of disposable goods",
                    "By reducing transparency in supply chains",
                    "By discouraging sustainable design practices"
                ],
                correctAnswerIndex: 0
            ),
            TriviaQuestion(
                question: "Which industry benefits most from AI-driven waste-to-energy solutions?",
                answers: [
                    "Fashion",
                    "Renewable energy sector",
                    "Entertainment",
                    "Tourism"
                ],
                correctAnswerIndex: 1
            ),
            TriviaQuestion(
                question: "How does computer vision powered by AI help in waste management?",
                answers: [
                    "By identifying recyclable materials on sorting lines",
                    "By encouraging landfill expansion projects",
                    "By reducing recycling efforts globally",
                    "By increasing contamination in recycling streams"
                ],
                correctAnswerIndex: 0
            ),
            
            // AI and Agriculture (25-30)
            TriviaQuestion(
                question: "What is one way AI improves agricultural sustainability?",
                answers: [
                    "Monitoring soil health using IoT sensors and AI algorithms",
                    "Increasing pesticide usage without monitoring",
                    "Reducing crop diversity to maximize profits",
                    "Eliminating irrigation systems completely"
                ],
                correctAnswerIndex: 0
            ),
            TriviaQuestion(
                question: "How can AI-powered drones support sustainable farming?",
                answers: [
                    "By monitoring crop health and applying fertilizers precisely",
                    "By replacing all human labor in farming operations",
                    "By increasing water usage unnecessarily",
                    "By encouraging monoculture farming practices"
                ],
                correctAnswerIndex: 0
            ),
            TriviaQuestion(
                question: "What is precision agriculture, and how does AI contribute to it?",
                answers: [
                    "Farming based on guesswork without data analysis",
                    "Using AI to analyze data for optimizing resource usage",
                    "Farming without technology or automation tools",
                    "Using traditional farming techniques exclusively"
                ],
                correctAnswerIndex: 1
            ),
            TriviaQuestion(
                question: "Which of the following is an example of AI promoting biodiversity in agriculture?",
                answers: [
                    "Encouraging monoculture farming practices",
                    "Using predictive analytics to protect pollinator populations",
                    "Eliminating natural ecosystems for farmland",
                    "Replacing natural habitats with artificial ones"
                ],
                correctAnswerIndex: 1
            ),
            TriviaQuestion(
                question: "How does AI help reduce water waste in agriculture?",
                answers: [
                    "By predicting rainfall patterns and optimizing irrigation schedules",
                    "By increasing water usage unnecessarily",
                    "By discouraging water conservation practices",
                    "By replacing irrigation systems with manual labor"
                ],
                correctAnswerIndex: 0
            ),
            TriviaQuestion(
                question: "What is one challenge of using AI in agriculture?",
                answers: [
                    "High costs of implementing advanced technologies",
                    "Lack of interest from farmers",
                    "Inability to analyze weather data",
                    "Reduced crop yields due to automation"
                ],
                correctAnswerIndex: 0
            ),
            
            // AI and Urban Sustainability (31-38)
            TriviaQuestion(
                question: "How can AI improve urban transportation systems?",
                answers: [
                    "By optimizing traffic flow through smart traffic lights",
                    "By encouraging private vehicle ownership",
                    "By reducing public transportation options",
                    "By eliminating bike-sharing programs"
                ],
                correctAnswerIndex: 0
            ),
            TriviaQuestion(
                question: "What role does AI play in sustainable urban planning?",
                answers: [
                    "Analyzing data to reduce congestion and emissions",
                    "Promoting urban sprawl into green areas",
                    "Increasing energy consumption without optimization",
                    "Discouraging public transportation systems"
                ],
                correctAnswerIndex: 0
            ),
            TriviaQuestion(
                question: "Which smart city initiative relies heavily on AI?",
                answers: [
                    "Smart waste management using IoT sensors",
                    "Building larger landfills for urban areas",
                    "Replacing renewable energy with coal power",
                    "Eliminating green spaces for development"
                ],
                correctAnswerIndex: 0
            ),
            TriviaQuestion(
                question: "What is one way AI contributes to sustainable housing developments?",
                answers: [
                    "Using smart home technologies to optimize energy consumption",
                    "Increasing use of non-renewable materials",
                    "Eliminating insulation in homes",
                    "Promoting larger, less efficient homes"
                ],
                correctAnswerIndex: 0
            ),
            TriviaQuestion(
                question: "How can AI-powered systems reduce air pollution in cities?",
                answers: [
                    "By predicting pollution levels and suggesting mitigation strategies",
                    "By increasing emissions from vehicles",
                    "By reducing the number of green spaces",
                    "By encouraging industrial expansion without regulations"
                ],
                correctAnswerIndex: 0
            ),
            
            // AI and Biodiversity Conservation (39-43)
            TriviaQuestion(
                question: "How does AI help protect endangered species?",
                answers: [
                    "By monitoring wildlife populations using drones and cameras",
                    "By replacing natural habitats with artificial ones",
                    "By encouraging illegal poaching activities",
                    "By reducing funding for conservation programs"
                ],
                correctAnswerIndex: 0
            ),
            TriviaQuestion(
                question: "What is one way AI can monitor deforestation?",
                answers: [
                    "Using satellite imagery to detect illegal logging",
                    "Encouraging timber production growth",
                    "Replacing forests with urban developments",
                    "Eliminating reforestation projects"
                ],
                correctAnswerIndex: 0
            ),
            TriviaQuestion(
                question: "Which technology is often paired with AI to track animal movements?",
                answers: [
                    "GPS collars and satellite tracking systems",
                    "Manual observation by researchers only",
                    "Paper-based tracking methods exclusively",
                    "Artificial habitats for animals"
                ],
                correctAnswerIndex: 0
            ),
            
            // AI and Renewable Energy (44-48)
            TriviaQuestion(
                question: "How does AI improve the efficiency of wind energy systems?",
                answers: [
                    "By predicting wind patterns to optimize turbine performance",
                    "By reducing the number of turbines installed",
                    "By increasing maintenance costs unnecessarily",
                    "By discouraging wind energy adoption"
                ],
                correctAnswerIndex: 0
            ),
            TriviaQuestion(
                question: "What is one way AI supports solar energy systems?",
                answers: [
                    "Monitoring solar panel performance to maximize energy output",
                    "Reducing the efficiency of solar panels",
                    "Increasing reliance on fossil fuels",
                    "Discouraging investment in solar farms"
                ],
                correctAnswerIndex: 0
            ),
            
            // AI Challenges in Sustainability (49-50)
            TriviaQuestion(
                question: "What is one ethical concern related to AI and sustainability?",
                answers: [
                    "Data privacy issues when monitoring environmental activities",
                    "Lack of interest in sustainability applications",
                    "Minimal impact on global emissions",
                    "Inability to analyze large datasets"
                ],
                correctAnswerIndex: 0
            ),
            TriviaQuestion(
                question: "What is one way to reduce the environmental impact of training large AI models?",
                answers: [
                    "Using renewable energy sources to power data centers",
                    "Increasing the size of models unnecessarily",
                    "Eliminating optimization techniques",
                    "Relying solely on fossil fuels"
                ],
                correctAnswerIndex: 0
            )
        ]
        
        // Randomly select 5 questions
        questions = Array(allQuestions.shuffled().prefix(5))
    }
    
    func checkAnswer(_ selectedIndex: Int) -> Bool {
        let correct = questions[currentQuestionIndex].correctAnswerIndex == selectedIndex
        if correct {
            score += 1
        }
        return correct
    }
    
    func nextQuestion() {
        if currentQuestionIndex < questions.count - 1 {
            currentQuestionIndex += 1
        } else {
            quizCompleted = true
        }
    }
    
    func restartQuiz() {
        currentQuestionIndex = 0
        score = 0
        quizCompleted = false
        loadQuestions()
    }
} 