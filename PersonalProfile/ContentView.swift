//
//  ContentView.swift
//  PersonalProfile
//
//  Created by Амангелди Мадина on 11.02.2025.
//

import SwiftUI



struct ContentView: View {
    @State var selectedTab = 1
    var body: some View {
//        VStack {
//            Image(systemName: "globe")
//                .imageScale(.large)
//                .foregroundStyle(.tint)
//            Text("Hello, world!")
//        }
//        .padding()
        
//        VStack(alignment: .leading) {
//            Text("Madina").font(.title).foregroundColor(.green)
            
            ZStack {
//                Text("Joshua Tree National Park").font(.subheadline)
//                Spacer()
//                Text("California").font(.subheadline)
//                            
//            }
            TabView(selection: $selectedTab) {
                MainProfileView()
                    .tabItem { Image(systemName: "person.crop.circle") }.tag(1)
                InterestsView()
                    .tabItem {
                        Image(systemName: "figure.dance")
                         }.tag(2)
                
                GoalsView(goalsList:  ["To reach all Goals", "To run my own Successfull Startup", "To be happy and make happy close people"])
                    .tabItem {
                    Image(systemName:"list.clipboard")
                    }.tag(3)
            }
        }
    }
}

#Preview {
    ContentView()
}
