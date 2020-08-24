//
//  ContentView.swift
//  SlideMenu SwiftUI
//
//  Created by Hassan Shahid on 17.8.2020.
//  Copyright © 2020 Hassan Shahid. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var isMenu = false
    
    var body: some View {
        
        ZStack{
        VStack{
            HStack{
                 Button(action: {
                    self.isMenu.toggle()
                 })
                 {
                    Image("Menu")
                        .imageScale(.large)
                        .foregroundColor(.black)
                }
                
                Spacer()
                Text("Food")
                .fontWeight(.bold)
                    .font(.title)
                Spacer()
            }
            Spacer()
            
        }.padding()
            
            Home()
            .padding(.top, 50)
            ZStack(alignment: .topTrailing) {
                
                 Menu(isMenu: $isMenu)
                    .animation(.default)
                    .onTapGesture
                    {
                        self.isMenu.toggle()
                }
                Button(action: {
                    
                    withAnimation(.spring()){
                        
                        self.isMenu.toggle()
                    }
                    
                }) {
                    
                    Image(systemName: "xmark")
                    .resizable()
                    .frame(width: 15, height: 15)
                    .foregroundColor(.black)
                    
                }.padding()
                .opacity(self.isMenu ? 1 : 0)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
