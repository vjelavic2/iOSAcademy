//
//  LoginView.swift
//  birdy
//
//  Created by student on 19.12.2023..
//

import SwiftUI

struct LoginView: View {
    
    @Binding var userName : String
    @Binding var isPresented: Bool
    
    var body: some View {
        VStack{
            
            
            Image("bird1")
                .resizable()
                .frame(width: 55,height: 55)
                .clipShape(Circle())
            
            Text("Birdy")
                .foregroundColor(.gray)
                .font(.subheadline)
            
            TextField("userName", text: $userName)
                .padding(.leading,100)
                .padding(.trailing, 100)
                .multilineTextAlignment(.center)
            
            
            Button(action:{isPresented = false}){
                Text("Log in")
                    .foregroundColor(.black)
            }
            .frame(width: 185, height: 25)
            .cornerRadius(10.0)
            .background(Color.blue.opacity(0.8))
            .disabled(userName.isEmpty)
            
            
            
        }
            
        }
        
    }


#Preview {
    LoginView(userName : Binding.constant(""), isPresented: Binding.constant(false))
}
