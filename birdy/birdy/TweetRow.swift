//
//  TweetRow.swift
//  Birdy
//
//  Created by student on 19.12.2023..
//

import SwiftUI

struct TweetRow: View {
    
    @Binding var tweet: Tweet
    
    
    var body: some View {
        HStack{
            Image("bird1")
                .resizable()
                .frame(width: 55,height: 55)
                .clipShape(Circle())
            
            VStack(alignment:.leading){
                Text(tweet.userName)
                    .foregroundColor(.gray)
                    .font(.subheadline)
                    .padding(.bottom, 1)
                
                Text(tweet.content)
                
                Text(tweet.date, style: .relative)
                    .font(.caption)
                    .foregroundColor(.gray)
            }
            .padding(.leading)
            Spacer()
            Button(action:{tweet.isFavorite.toggle()}){
                if tweet.isFavorite   {Image(systemName: "heart.fill")
                        .foregroundColor(.red)
                }
                else {
                    Image(systemName: "heart")
                            .foregroundColor(.red)
                }
            }
        }
    }
}

#Preview {
    TweetRow(tweet: Binding.constant(Tweet(userName: "test", content: "test",  isFavorite: true)))
}
