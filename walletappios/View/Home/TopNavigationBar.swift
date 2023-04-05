//
//  TopNavigationBar.swift
//  walletappios
//
//  Created by Web & Media Team on 5/4/23.
//

import SwiftUI

struct TopNavigationBar: View {
    var body: some View {
        HStack(spacing: 0){
            Text("Your Wallet")
                .font(.title2)
                .fontWeight(.bold)
            
            Spacer()
            
            Image("propic")
                .resizable()
                .scaledToFit()
                .frame(width: 40,height: 40,alignment: .center)
        }
    }
}

struct TopNavigationBar_Previews: PreviewProvider {
    static var previews: some View {
        TopNavigationBar().previewLayout(.sizeThatFits)
    }
}
