//
//  PromotionScreen.swift
//  EsteeDesign
//
//  Created by Reshmi Ramesh on 6/29/23.
//

import SwiftUI

struct PromotionScreen: View {
    let urlFacebook = URL(string: "https://www.facebook.com/sharer/sharer.php")!
    let urlInstagram = URL(string: "https://www.instagram.com/esteelauder/")!
    let urlTiktok = URL(string: "https://www.tiktok.com/@esteelauder")!
    
    var body: some View {
        NavigationStack {
            VStack {
                Image("promo")
                    .resizable(resizingMode: .stretch)
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 425.0, height: 425.0)
                    .ignoresSafeArea()
                
                Text("FREE SAMPLES")
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .foregroundColor(.pink)
                
                Text("Follow these instructions:")
                    .foregroundColor(.pink)
                Text("Tag 10 friends and share this \npost on your facebook account")
                    .multilineTextAlignment(.center)
                Text("Follow us on our social media accounts")
                
                Spacer()
                
                // social media links
                Text("Follow Us:")
                    .font(.title)
                
                HStack {
                    Button (action: openUrlFacebook) {
                        Image("icon-facebook")
                    }
                    Button (action: openUrlInstagram) {
                        Image("icon-instagram")
                    }
                    Button (action: openUrlTiktok) {
                        Image("icon-tiktok")
                    }
                }
                
                // nav bar
                HStack {
                    BottomNavBarPromotion(image: Image("icons8-home-100"), destination: AnyView(BrowseProducts()))
                    Spacer()
                    BottomNavBarPromotion(image: Image("icons8-commercial-100"), destination: AnyView(ContentView()))
                    Spacer()
                    BottomNavBarPromotion(image: Image("icons8-cart-100"), destination: AnyView(BrowseProducts()))
                  Spacer()
                    BottomNavBarPromotion(image: Image("icons8-person-100"), destination: AnyView(BrowseProducts()))
                    
                }
                .padding()
                
            }
        }
    }
        
    // all open url functions
    func openUrlFacebook () {
        UIApplication.shared.open(urlFacebook)
    }
    func openUrlInstagram () {
        UIApplication.shared.open(urlInstagram)
    }
    func openUrlTiktok () {
        UIApplication.shared.open(urlTiktok)
    }
}

struct PromotionScreen_Previews: PreviewProvider {
    static var previews: some View {
        PromotionScreen()
    }
}

struct BottomNavBarPromotion: View {
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
