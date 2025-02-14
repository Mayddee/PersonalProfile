//
//  GoalsView.swift
//  PersonalProfile
//
//  Created by Амангелди Мадина on 13.02.2025.
//

import SwiftUI

struct GoalsView: View {
    var goalsList: [String]
    @State private var offsets: [CGFloat]
    init(goalsList: [String]) {
        self.goalsList = goalsList
        self._offsets = State(initialValue: Array(repeating: 300, count: goalsList.count))
    }
    var body: some View {
        VStack{
//
            ForEach(goalsList.indices, id: \.self) { index in
                RoundedRectangle(cornerRadius: 20.0, style: .continuous)
                    .foregroundColor(.purple)
                    .frame(width: 350, height: 100, alignment: .center)
                    .overlay(Text(goalsList[index]))
                        .offset(y: offsets[index])
                            .onAppear {
                                withAnimation(.linear(duration: 0.6).delay(Double(index) * 0.3)) {
                                                offsets[index] = 0
                                            }
                                        }

                }
            
                
        } 
        .padding(.bottom, 180)
      
        
        
    }
}

//#Preview {
//    var goals = ["To", "To", "people"]
//    GoalsView(goalsList: goals)
//}
struct GoalsView_Previews: PreviewProvider {
    static var previews: some View {
        GoalsView(goalsList: [
            "To reach all Goals",
            "To run my own Successful Startup",
            "To be happy and make close people happy"
        ])
    }
}
