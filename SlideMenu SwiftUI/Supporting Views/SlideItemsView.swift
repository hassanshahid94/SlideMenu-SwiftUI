//
//  SlideItemsView.swift
//  SlideMenu SwiftUI
//
//  Created by Hassan Shahid on 24.8.2020.
//  Copyright © 2020 Hassan Shahid. All rights reserved.
//

import SwiftUI

struct Menu: View {
    @State var index = "Home"
    @Binding var isMenu: Bool
    
    var body: some View{
        VStack{
            HStack{
                ZStack
                    {
                        Image("profile")
                        .resizable()
                        .frame(width: 60, height: 60)
                        .clipShape(Circle())
                        
                        Circle()
                            .stroke(Color.white)
                        .frame(width: 70, height: 70)
                }
               
                
            }
            .padding(.top, 20)
            Text ("Hassan Shahid")
                .font(.system(size: 20.0))
                .fontWeight(.bold)
                .foregroundColor(Color.white)
                .padding(.top, 10)
                .padding(.bottom, 40)
            
            
  
            MenuItems(rowActive: true, icon: "house", text: "Home")

            MenuItems(rowActive: false, icon: "person", text: "Profile")

            MenuItems(rowActive: false, icon: "person.3", text: "Friends")

            MenuItems(rowActive: false, icon: "heart", text: "Favorites")

            Spacer()
        }
        .padding(.vertical, 30)
            .background(LinearGradient(gradient: Gradient(colors: [Color.purple, Color.black]), startPoint: .top, endPoint: .bottom))
            
        .padding(.trailing, 80)
            
        .offset(x: isMenu ? 0: -UIScreen.main.bounds.width)
        
        .rotation3DEffect(Angle(degrees: isMenu ? 0 : 45), axis: (x: 0, y: 20, z: 0))
        .edgesIgnoringSafeArea(.vertical)
    }
}

struct MenuItems: View {
    var rowActive: Bool
    var icon = "house"
    var text = "Home"

    var body: some View{

        HStack{
            
            Image(systemName: icon)
                .foregroundColor(rowActive ? Color.purple: .white)
                .font(.system(size: 15))
                .frame(width: 50, height: 30)
            
            Text(text)
                .foregroundColor(rowActive ? Color.purple: .white)
            .font(.system(size: 15))
            .frame(width: 80, height: 30)
            Spacer()
        }
    .padding(5)
        .background(rowActive ? Color.white: Color.blue.opacity(0))
        .padding(.trailing, 20)
    }
    
}
