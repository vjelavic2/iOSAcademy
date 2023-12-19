//
//  ContentView.swift
//  birdy
//
//  Created by student on 13.12.2023..
//

import SwiftUI

struct Tweet: Identifiable{
    var id = UUID()
    let userName : String
    var content : String
    let date : Date = Date()
    var isFavorite: Bool
}

struct ContentView: View {
    @State var tweet : Tweet = Tweet(userName: "Iva", content: "Evogac",  isFavorite: true)
    @State var tweets: [Tweet]=[
            Tweet(
            userName: "Ivo",
            content: "Evogac",
            isFavorite: true
            ),
            Tweet(
            userName: "ana",
            content: "i ona je nes nap",
            isFavorite: true
            ),
        ]
        
        @State var content: String = ""
    @State var isPresented: Bool=false
    @State var userName :String = ""
    
    var body: some View {
     
        VStack{
            
            HStack{
                Text("Birdy")
                    .font(.title)
                    .foregroundStyle(.blue)
                
                Spacer()
                
                if userName.isEmpty{
                    Button(action: {
                        isPresented=true
                    }) {
                        Text("Log in")
                            .foregroundColor(Color.blue)
                    }
                    
                }
                else{
                    Button(action: {
                        isPresented=false
                    }) {
                        Text("Log out")
                            .foregroundColor(Color.blue)
                    }
                }
                
                
            }
            
            List($tweets){tweet in
                TweetRow(tweet: $tweet)
            }
            .listStyle(.plain)
            
            Spacer()
            
            if userName.isEmpty{
            }
            else{
                HStack{
                    
                    TextField("Content", text: $content)
                    Spacer()
                    
                    Button(action:{
                        tweets.append(Tweet(
                            userName: "netko",
                            content: content,
                            isFavorite: false)
                        )
                        content=""
                    }){
                        Text("New Text")
                    }
                    .disabled(content.isEmpty)
                    
                    
                    
                }
            }
            
        
        }
        .padding(15)
        .sheet(isPresented: $isPresented) {
            LoginView(userName : $userName, isPresented: $isPresented)
            
        }
    }
}

#Preview {
    ContentView()
}
