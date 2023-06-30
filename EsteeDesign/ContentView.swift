//
//  ContentView.swift
//  EsteeDesign
//
//  Created by Reshmi Ramesh on 6/24/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            PromotionScreen()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct BottomNavBarItem: View {
    let image: Image
    let destination: any View
    var body: some View {
        NavigationLink(destination: AnyView(destination), label: {
            image
                .resizable(resizingMode: .stretch)
                .aspectRatio(contentMode: .fit)
                .frame(width: 40.0, height: 40.0)
                .foregroundColor(.black)
                .navigationBarTitle("")
                .navigationBarHidden(true)
        })
    }
}
