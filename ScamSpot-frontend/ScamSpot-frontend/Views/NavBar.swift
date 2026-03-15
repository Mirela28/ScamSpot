//
//  NavBar.swift
//  ScamSpot-frontend
//
//  Created by Mirela Girleanu on 10/03/2026.
//

import SwiftUI

struct NavBar: View {
    var body: some View {
        ZStack{
            Image("nav-bar")
            
            HStack (spacing: 20){
                Image("filters")
                
                ZStack{
                    Image("current-page")
                    Image("house")
                }
                
                Image("account")
            }
        }
    }
}

#Preview {
    NavBar()
}
