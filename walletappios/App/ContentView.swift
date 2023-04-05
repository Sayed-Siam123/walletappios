//
//  ContentView.swift
//  walletappios
//
//  Created by Web & Media Team on 5/4/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            VStack(spacing: 0){
                TopNavigationBar()
                    .padding(.horizontal, 16)
                    .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
                    .padding(.bottom, 15)
                    .background(Color.white)
                
                Rectangle()
                    .frame(height: 20)
                    .opacity(0)
                
                ScrollView(.vertical, showsIndicators: false){
                    
                    
                    
                    Text("sasa")
                    Text("sasa")
                    Text("sasa")
                    Text("sasa")
                }
            }
            .background(Color.white.ignoresSafeArea(.all,edges: .all))
        }
        .ignoresSafeArea(.all, edges: .all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
