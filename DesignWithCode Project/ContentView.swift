//
//  ContentView.swift
//  DesignWithCode Project
//
//  Created by mac on 8/25/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ZStack {
            
            BackCardView() // use this to move the frame up, subview was extracted
                .offset(x: 0, y: -40)
                .scaleEffect(0.9) // third view C, view A and B is on top of this view, back view
            
            BackCardView() // second view B
                .offset(x: 0, y: -20)
            
            CardView() // first view A on top of view B, view in front
        }
        
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct CardView: View {
    var body: some View {
        VStack {
            
            HStack {
                VStack(alignment: .leading) {
                    Text("UI Design")
                        .font(.title)
                        .fontWeight(.semibold)
                        .foregroundColor(Color.white)
                    Text("Certificate")
                        .foregroundColor(Color("accent"))
                    
                    
                }
                Spacer()
                Image("Logo1")
            }// padding for left and right
            .padding(.horizontal, 20)
            .padding(.top, 20)
            
            
            Spacer()
            Image("Card1")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 300, height: 110, alignment: .top) // make adjustment to the image
        }
        .frame(width: 340.0, height: 220.0)
        .background(Color.black)
        .cornerRadius(20)
        .shadow(radius: 20)
    }
}

struct BackCardView: View {
    var body: some View {
        VStack {
            Spacer()
        }
        
        .frame(width: 300, height: 220)
        .background(Color.blue)
        .cornerRadius(20)
        .shadow(radius: 20)
        
    }
}
