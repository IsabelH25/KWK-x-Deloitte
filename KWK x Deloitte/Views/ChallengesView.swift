//
//  ChallengesView.swift
//  KWK x Deloitte
//
//  Created by Isabel Hong on 1/20/25.
//

import SwiftUI

struct ChallengesView: View {
    var body: some View {
        ZStack {
            Color("mintgreen")
                .ignoresSafeArea()
            ScrollView {
                Text("What threats does AI pose to sustainability?")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding()
                LazyVStack{
//                    Text("What challenges does AI pose to sustainability?")
//                        .font(.largeTitle)
//                        .fontWeight(.bold)
//                        .padding()
                    // Add image here
                    // Add some text description here
                    // Another image
                    // More text
                    Image("datacenter")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .cornerRadius(15)
                        .padding()
                    HStack {
                        Text("Pictured above is a data center.")
                            .font(.caption)
                            .fontWeight(.bold)
                        Text("CREDIT: RAWPIXEL")
                            .font(.caption2)
                    }
                                
                    Text("AI, while offering numerous advancements, has a significant environmental impact due to its high energy consumption. The process of training large AI models requires substantial computational power, which in turn demands a lot of electricity. Data centers running these systems typically rely on non-renewable energy sources, contributing to increased carbon emissions. As AI technology continues to scale, so does its energy footprint, making it a potential driver of climate change if the energy source remains fossil fuel-based.")
                        .padding()
                    
                    Text("In addition to energy, AI systems also consume considerable amounts of water. Data centers, which house the servers powering AI models, often rely on water for cooling to prevent overheating. In some regions, this can strain local water resources, particularly in areas already facing water scarcity. As the demand for AI grows, the competition for water could exacerbate existing environmental stress, further endangering ecosystems and communities that rely on these water supplies.")
                        .padding()
                    
                    Text("These environmental costs are often overlooked in the rush to harness AI’s potential. While AI can be used to tackle climate change in innovative ways, its own environmental footprint must be addressed to ensure that it doesn’t inadvertently worsen the very problems it aims to solve. Balancing technological advancement with sustainability will require finding more energy-efficient AI models and integrating renewable energy and water conservation practices into the infrastructure supporting this technology.**")
                        .padding()
                    
                    Text("**Plot Twist: These paragraphs were written by ChatGPT (https://chatgpt.com)")
                }
                .padding()
                .background(Rectangle()
                    .foregroundStyle(.white)
                    .cornerRadius(15)
                    .shadow(radius: 15))
                .padding()
            }
        }
    }
}

#Preview {
    ChallengesView()
}
