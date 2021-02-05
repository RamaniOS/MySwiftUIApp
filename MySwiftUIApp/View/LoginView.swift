//
//  LoginView.swift
//  MySwiftUIApp
//
//  Created by Ramanpreet Singh on 2021-01-30.
//

import Foundation
import SwiftUI

struct LoginView: View {
    
    var body: some View {
        ZStack {
            Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)).ignoresSafeArea(.all)
            VStack(alignment: .leading) {
                TopView()
                Spacer()
                BottomView()
            }
        }
    }
}

var customColor: Color {
    return Color(#colorLiteral(red: 0.9244309664, green: 0.06975495815, blue: 0.1020693108, alpha: 1))
}


struct TopView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Login")
                .foregroundColor(customColor)
                .font(.system(size: 45, weight: .bold, design: .serif))
                .fontWeight(.bold)
                .padding(20)
                .multilineTextAlignment(.leading)
        }
    }
}

struct BottomView: View {
    
    @State var username: String = ""
    @State var password: String = ""
    
    var body: some View {
        VStack {
            TextField("Enter your name", text: $username)
                .keyboardType(.emailAddress)
                .textFieldStyle(PlainTextFieldStyle())
                .frame(width: .none, height: 35, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .foregroundColor(.white)
            Divider()
                .padding(.bottom, 20)
                .accentColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
            SecureField("Enter your Password", text: $password)
                .textFieldStyle(PlainTextFieldStyle())
                .frame(width: .none, height: 35, alignment: .center)
                .foregroundColor(.white)
            Divider()
                .padding(.bottom, 20)
                .foregroundColor(.white)
            Button("Login") {
                print("called")
            }
            .font(.system(size: 22, weight: .bold, design: .serif))
            .frame(minWidth: 100, maxWidth: .infinity, minHeight: 35)
            .foregroundColor(.white)
            .padding()
            .background(customColor)
            .cornerRadius(8)
            .padding(.bottom, 30)
        }
        .padding(30)
    }
}

struct ContentView_Previzews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
