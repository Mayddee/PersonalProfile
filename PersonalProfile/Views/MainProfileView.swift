//
//  MainProfileView.swift
//  PersonalProfile
//
//  Created by Амангелди Мадина on 13.02.2025.
//

import SwiftUI

struct MainProfileView: View {
    @State private var scale = 0.5
    
    var body: some View {
        ZStack{
            
            Image("background1")
                     .resizable()
//                     .ignoresSafeArea()
                     .scaledToFill()
                     .frame(maxWidth: .infinity, maxHeight: .infinity)
                     .edgesIgnoringSafeArea(.horizontal)
               
            
            VStack{
                Image("Image")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .clipShape(Circle())
                    .frame(height: 200, alignment: .center)
                    .scaleEffect(scale)
                    .onAppear {
                        withAnimation(.spring(response: 2.0, dampingFraction: 0.6)) {
                            scale = 1.0
                        }
                    }
                RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/, style: .continuous)
                    .frame(width: 340, height: 200, alignment: .center)
                    .foregroundColor(.white)
                    .opacity(0.7)
                    .overlay(VStack{Text("Themaddelina")
                            .font(.headline)
                            .offset(y: -20)
                        VStack{
                            HStack{
                                Image("instagram")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 20)
                                Text("@aiaiai")
                            }
                            HStack{
                                Image("telegram")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 20)
                                Text("@brabrabra")
                            }
                        }})
                
    //            .offset(x: 20)
                Spacer()
            }
            .frame(maxWidth: .infinity)
            .offset(y: 150)
            
        }
        
        
    }
}

#Preview {
    MainProfileView()
}
