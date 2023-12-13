//
//  ContentView.swift
//  birdy
//
//  Created by student on 13.12.2023..
//

import SwiftUI

struct ContentView: View {
    
    struct Tweet{
        let userName : String
        var content : String
        let date : Date
        
    }
    var body: some View {
        
        var tweet : Tweet = Tweet(userName: "Ivo", content: "Evogac", date: DateNow)
        
        VStack{
            HStack{
                Text("Birdy")
                    .font(.title)
                    .foregroundStyle(.blue)
                
                Spacer()
                
                Button(action: {}) {
                    Text("Sign in")
                        .foregroundColor(Color.blue)
                }
                
                
                
            }
            
            
            HStack{
                
                Image("bird1")
                    .resizable()
                    .frame(width: 55, height: 55)
                    .clipShape(Circle())
                
                VStack{
                    Text(tweet.userName)
                    Text(tweet.content)
                    Text(tweet.date, style: .relative)
                    
                }
                .padding(.leading)
                Spacer()
                
            }
            
            Spacer()
            
            Image("bird1")
                .resizable()
                .frame(width: 55, height: 55)
                .clipShape(Circle())
            
        
        }
        .padding(15)
    }
}

#Preview {
    ContentView()
}
