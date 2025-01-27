//
//  ContentView.swift
//  KWK x Deloitte
//
//  Created by Isabel Hong on 1/20/25.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        TabView {
            CurrentProjectsView()
                .tabItem {
                    Text("Current Projects")
                    Image(systemName: "list.bullet")
                }
            TriviaWelcomeView()
                .tabItem {
                    Text("Trivia Time!")
                    Image(systemName: "questionmark.circle")
                }
            ChallengesView()
                .tabItem {
                    Text("Challenges")
                    Image(systemName: "drop.halffull")
                }
        }
    }
}

#Preview {
    HomeView()
}
