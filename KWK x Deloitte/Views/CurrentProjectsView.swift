//
//  CurrentProjectsView.swift
//  KWK x Deloitte
//
//  Created by Isabel Hong on 1/19/25.
//

import SwiftUI

struct CurrentProjectsView: View {
    var body: some View {
        // Had such a lightbulb moment when I was reading help
        // articles and finally realized my problem w/ setting
        // bgrnd color before—ZStack has to be the VERY bottom/base View/stack before everything else, even ScrollView yay!!! Soooo delighted that it works now
        ZStack {
            Color("lightyellow")
                .ignoresSafeArea()
            ScrollView {
                Text("Current Projects")
                    .font(/*@START_MENU_TOKEN@*/.largeTitle/*@END_MENU_TOKEN@*/)
                    .fontWeight(.bold)
                Spacer()
                Text("How is AI helping global sustainability efforts and the fight against climate change? Read on about ongoing sustainability projects incorporating AI to find out!")
                    .font(.callout)
                    .padding(.horizontal)
                LazyVStack {
                    Text("Sustainable Farming")
                        .font(.title2)
                        .fontWeight(.semibold)
                        .multilineTextAlignment(.leading)
                    Text("Regenerative agriculture feeds the future...")
                        .multilineTextAlignment(.leading)
                    Image("agriculture")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .cornerRadius(15)
                    HStack {
                        Text("A regenerative farm.") // Fact check that
                            .font(.caption)
                            .fontWeight(.bold)
                            
                            
                        Text("CREDIT: NICHE AGRICULTURE")
                            .font(.caption2)
                    }
                    Text("AI can play a transformative role in sustainable and regenerative farming by optimizing resource use, reducing waste, and enhancing biodiversity. Through machine learning algorithms, AI can analyze vast amounts of data from soil health, weather patterns, and crop growth, providing farmers with precise insights on irrigation, fertilization, and crop rotation. This not only reduces the need for chemical inputs but also helps maintain soil integrity and ecosystem balance. For example, AI-driven drones can monitor crop health in real-time, enabling farmers to detect pests or diseases early and apply interventions only when necessary, minimizing environmental impact. Additionally, AI-powered decision support systems can assist in implementing regenerative practices like agroforestry and cover cropping, fostering long-term soil fertility and carbon sequestration.")
                        .padding()
                    Link("Read more here!",
                          destination: URL(string: "https://www.weforum.org/stories/2024/09/farms-ai-accelerate-regenerative-agriculture/")!)
                }
                .padding()
                .background(Rectangle()
                    .foregroundStyle(.white)
                    .cornerRadius(15)
                    .shadow(radius: 15))
                .padding()
                
                LazyVStack {
                    Text("Improving Solar Panel Efficiency")
                        .font(.title2)
                        .fontWeight(.semibold)
                    Image("solarpanels")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .cornerRadius(15)
                    HStack {
                        Text("Solar panels.")
                            .font(.caption)
                            .fontWeight(.bold)
                        Text("CREDIT: CAMPGROUND VIEWS")
                            .font(.caption2)
                    }
                    Text("AI can significantly improve solar panel efficiency by enhancing both design and performance optimization. Machine learning algorithms can analyze vast datasets from solar panel systems to predict energy production based on variables like weather patterns, time of day, and geographic location. AI can also assist in designing panels with more efficient materials and configurations by simulating various designs and identifying the most effective combinations. Additionally, AI-powered monitoring systems can detect issues such as shading or dirt buildup, prompting maintenance before performance drops. Over time, AI’s ability to continually learn and adapt allows solar systems to maximize energy capture and minimize inefficiencies, helping to make solar energy a more reliable and cost-effective option.")
                        .padding()
                    Link("Read more here!",
                          destination: URL(string: "https://huggingface.co/blog/omniaiml/ai-helping-solar-panel-optimization")!)
                }
                .padding()
                .background(Rectangle()
                    .foregroundStyle(.white)
                    .cornerRadius(15)
                    .shadow(radius: 15))
                .padding()
                
                LazyVStack {
                    Text("Natural Disaster Warning Systems and Recovery")
                        .font(.title2)
                        .fontWeight(.semibold)
                    Image("hurricanesatellite")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .cornerRadius(15)
                    HStack {
                        Text("A satellite image of Hurricane Danielle.")
                            .font(.caption)
                            .fontWeight(.bold)
                        Text("CREDIT: WIKIMEDIA COMMONS")
                            .font(.caption2)
                    }
                    Text("AI has the potential to significantly enhance natural disaster warning systems and recovery by improving prediction accuracy and optimizing response efforts. Machine learning algorithms can process vast amounts of data from weather stations, satellites, and seismic sensors, identifying patterns and anomalies that human analysts might miss. This allows for more accurate forecasting of events like hurricanes, wildfires, and earthquakes, offering earlier warnings that can save lives and reduce damage. During recovery, AI-powered tools can analyze satellite imagery to assess the extent of destruction and prioritize areas in need of immediate aid. Additionally, AI can help optimize resource distribution and logistics by predicting where and when relief efforts are most needed, ensuring a more efficient recovery process.")
                        .padding()
                    Link("Read more here!",
                          destination: URL(string: "https://https://www2.deloitte.com/us/en/insights/industry/public-sector/automation-and-generative-ai-in-government/leveraging-ai-in-emergency-management-and-crisis-response.html?id=us:2ps:3gl:eprpaper25:awa:gps:011525:artificial%20intelligence%20in%20disaster%20management:p:c:kwd-385223907303&gad_source=1&gclid=Cj0KCQiA19e8BhCVARIsALpFMgE9QAQHP-jAGzJCuvjnYwhBHod-JkPhR-vT6dOwd2ZfwMCVjCW6cnkaAjKYEALw_wcB")!)
                }
                .padding()
                .background(Rectangle()
                    .foregroundStyle(.white)
                    .cornerRadius(15)
                    .shadow(radius: 15))
                .padding()
                
                LazyVStack {
                    Text("Weather Forecasting with AI")
                        .font(.title2)
                        .fontWeight(.semibold)
                    Image("sunnyday")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .cornerRadius(15)
                    HStack {
                        Text("A sunny day (with a few clouds).")
                            .font(.caption)
                            .fontWeight(.bold)
                        Text("CREDIT: RAWPIXEL")
                            .font(.caption2)
                    }
                    Text("AI can significantly enhance weather forecasting by processing and analyzing large datasets far more quickly and accurately than traditional methods. Machine learning algorithms can integrate data from satellites, weather stations, and ocean buoys, learning from patterns in historical weather to predict future conditions with greater precision. AI models can also improve short-term forecasts, which are often more difficult due to rapidly changing conditions, by detecting subtle atmospheric signals that indicate severe weather events like storms or heatwaves. Additionally, AI can optimize weather simulation models, making them more computationally efficient and better at capturing complex phenomena such as microclimates or localized weather changes. These advancements not only improve the accuracy of forecasts but also help mitigate the impact of extreme weather by providing earlier warnings and more detailed predictions.")
                        .padding()
                    Link("Read more here!",
                          destination: URL(string: "https://www.technologyreview.com/2024/07/22/1095184/a-new-weather-prediction-model-from-google-combines-ai-with-traditional-physics/")!)
                }
                .padding()
                .background(Rectangle()
                    .foregroundStyle(.white)
                    .cornerRadius(15)
                    .shadow(radius: 15))
                .padding()
                
                Text("**Plot Twist: These paragraphs were written by ChatGPT (https://chatgpt.com)")

//                LazyVStack {
//                    Text("Current Projects")
//                        .font(/*@START_MENU_TOKEN@*/.largeTitle/*@END_MENU_TOKEN@*/)
//                        .fontWeight(.bold)
//                    RoundedRectangle(cornerRadius: 15)
//                        .fill(Color("CustomLightPink"))
//                        .frame(width: 350, height: 550, alignment: .leading) // figure out alignment here
//                        .shadow(radius: 10)
//                        .padding()
                    
                
                
                
//                    ForEach(0..<6) { index in
//                        ScrollView([.horizontal]) {
//                            LazyHStack {
//                                ForEach(0..<2) { index in
//                                    RoundedRectangle(cornerRadius: 15)
//                                        .fill(Color("CustomLightPink"))
//                                        .frame(width: 250, height: 200, alignment: .leading) // figure out alignment here
//                                        .shadow(radius: 10)
//                                        .padding()
//                                }
//                            }
//                        }
//                    }
                }
        }
    }
}

#Preview {
    CurrentProjectsView()
}
