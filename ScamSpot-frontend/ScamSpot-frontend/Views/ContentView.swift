//
//  ContentView.swift
//  ScamSpot-frontend
//
//  Created by Mirela Girleanu on 03/03/2026.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack{
            ZStack{
                Color(AppColors.background)
                    .ignoresSafeArea()
                
                VStack (){
                    HStack (spacing: 250){
                        Image("menu-bar")
                        Image("logo")
                    }
                    .padding(.top, 30)
                    
                    Text("BEWARE!")
                        .font(.largeTitle)
                        .bold()
                        .padding(.top, -30)
                    
                    ZStack{
                        Image("turqoise-button")
                        
                        Text("Scammers recently found use in AI tools to create fake audio calls or videos. Don’t trust suspicious calls. Read more...")
                            .font(.body)
                            .padding(.horizontal, 20)
                    }
                    HStack{
                        ZStack{
                            Image("darkblue-button")
                            Text("Learn more")
                                .foregroundColor(.white)
                        }
                        ZStack{
                            Image("darkblue-button")
                            Text("Report")
                                .foregroundColor(.white)
                        }
                        
                    }
                    
                    VStack (spacing: -30){
                        HStack{
                            Image("bot-chat-icon")
                            Spacer()
                        }
                        
                        NavigationLink{
                            ChatView()
                        } label: {
                            ZStack{
                                Image("large-red-rectangle")
                                Text("START NEW CASE")
                                    .font(.title)
                                    .bold()
                                    .foregroundColor(.white)
                            }
                        }
                    }
                    
                    VStack (){
                        Divider()
                            .background(Color.black)
                            .padding(.top, 20)
                        
                        HStack{
                            Text("Control your device")
                                .font(.headline)
                                .padding(.leading, 20)
                            Spacer()
                        }
                        
                        Text("Tired of dealing with scam calls or texts? Allow the app to block suspicious numbers directly. No effort!")
                            .padding(.leading, 20)
                            .padding(.trailing, 15)
                            .padding(.top, 5)
                        
                        HStack{
                            ZStack{
                                Image("small-control-button")
                                    .scaledToFit()
                                    .clipped()
                                Text("Control")
                                    .foregroundColor(Color.white)
                            }
                            .padding(.leading, 20)
                            Spacer()
                        }
                        
                        Divider()
                            .background(Color.black)
                    }
                    
                    VStack{
                        HStack{
                            Text("Previous cases")
                                .padding(.leading, 20)
                                .font(Font.headline)
                            Spacer()
                        }
                        
                        HStack (spacing: 30){
                            Image("previous-case-static")
                            Image("previous-case-static")
                            Image("previous-case-static")
                        }
                        
                        HStack{
                            Spacer()
                            Text("View all")
                                .italic(true)
                                .padding(.trailing, 40)
                        }
                    }
                    
                    NavBar()
                    
                }
                .padding(.top, -40)
                
            }
        }
        }
    }

#Preview {
    ContentView()
}

