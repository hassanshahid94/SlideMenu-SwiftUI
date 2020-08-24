//
//  HomeView.swift
//  SlideMenu SwiftUI
//
//  Created by Hassan Shahid on 24.8.2020.
//  Copyright © 2020 Hassan Shahid. All rights reserved.
//

import SwiftUI

struct Home : View {
    
    var body : some View{
        
        ScrollView(.vertical, showsIndicators: false) {
            
            VStack(spacing : 18){
                
                ForEach(1...6,id: \.self){i in
                    
                    Image("p\(i)")
                    .resizable()
                    .frame(height: 250)
                    .cornerRadius(20)
                }
            }.padding(.top, 8)
            .padding(.horizontal)
        }
    }
}
