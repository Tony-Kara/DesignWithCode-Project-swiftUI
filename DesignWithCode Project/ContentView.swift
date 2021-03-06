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
            
            TitleView()
            
            BackCardView() // use this to move the frame up, subview was extracted
                .background(Color("card4"))
                .cornerRadius(20)
                .shadow(radius: 20)
                .offset(x: 0, y: -40)
                .scaleEffect(0.9) // third view C, view A and B is on top of this view, back view
                .rotationEffect(.degrees(10))
                .rotation3DEffect(Angle(degrees: 10), axis: (x: 10.0, y: 0, z: 0))
                .blendMode(.hardLight)
            
            BackCardView() // second view B
                .background(Color("card3"))
                .cornerRadius(20)
                .shadow(radius: 20)
                .offset(x: 0, y: -20)
                .scaleEffect(0.95)
                .rotationEffect(.degrees(5))
                .rotation3DEffect(Angle(degrees: 5), axis: (x: 10.0, y: 0, z: 0))
                .blendMode(.hardLight)
            
            CardView() // first view A on top of view B, view in front
                .blendMode(.hardLight) //this is a good effect for overlapping views
            
            VStack {
                Rectangle()
                    .frame(width: 40, height: 5)
                    .cornerRadius(3)
                    .opacity(0.1)
                
                Text("This certificate is proof that Eniola Anthony has acheived the UI Design course with the approval from a Design+Code instructor")
                    .multilineTextAlignment(.center)
                    .font(.subheadline)
                    .lineSpacing(4)
                Spacer()
            }
            .padding()
            .background(Color.white)
            .cornerRadius(30)
            .shadow(radius: 20)
            .offset(x: 0, y: 500)
            
            
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
        
        .frame(width: 340, height: 220)
        
        
    }
}

struct TitleView: View {
    var body: some View {
        VStack {
            
            HStack {
                Text("Certificates")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                Spacer() //adding a spacer to this Horizontal stack will make this label move only right and left
            }
            .padding()
            Image("Background1")
            Spacer() //adding a spacer to this sub parent veritcal stack will make push both the Text label and image to the top.
        }
    }
}
