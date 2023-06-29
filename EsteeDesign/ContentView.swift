//
//  ContentView.swift
//  EsteeDesign
//
//  Created by Reshmi Ramesh on 6/24/23.
//

import SwiftUI

struct ContentView: View {
    let urlFacebook = URL(string: "https://www.facebook.com/EsteeLauder")!
    let urlInstagram = URL(string: "https://www.instagram.com/esteelauder/")!
    let urlPinterest = URL(string: "https://www.pinterest.com/esteelauder/")!
    let urlTiktok = URL(string: "https://www.tiktok.com/@esteelauder")!
    let urlTwitter = URL(string: "https://twitter.com/EsteeLauder")!
    let urlYoutube = URL(string: "https://www.youtube.com/esteelauder")!
    
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
                Text("Tag 10 friends and share this post on your facebook account")
                Text("Follow us on our social media accounts")
                
                Spacer()
                
                // social media links
                Text("Follow Us:")
                    .font(.title)
                VStack {
                    HStack {
                        Button (action: openUrlFacebook) {
                            Image("icon-facebook")
                        }
                        Button (action: openUrlInstagram) {
                            Image("icon-instagram")
                        }
                        Button (action: openUrlPinterest) {
                            Image("icon-pinterest")
                        }
                    }
                    HStack {
                        Button (action: openUrlTiktok) {
                            Image("icon-tiktok")
                        }
                        Button (action: openUrlTwitter) {
                            Image("icon-twitter")
                        }
                        Button (action: openUrlYoutube) {
                            Image("icon-youtube")
                        }
                    }
                }
                Spacer()
                
                // nav bar
                HStack {
                    BottomNavBarItem(image: Image("icon-home"), destination: AnyView(BrowseProducts()))
                    Spacer()
                    BottomNavBarItem(image: Image("icon-promo"), destination: AnyView(ContentView()))
                        .foregroundColor(.pink)
                    Spacer()
                    BottomNavBarItem(image: Image("icon-cart"), destination: AnyView(BrowseProducts()))
                }
                .padding()
                .background(Color.white)
                .clipShape(Capsule())
                .padding()
                .shadow(color: Color.black.opacity(0.15), radius: 10, x: 0, y: 0)
                .frame(alignment: .bottom)
                    
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
    func openUrlPinterest () {
        UIApplication.shared.open(urlPinterest)
    }
    func openUrlTiktok () {
        UIApplication.shared.open(urlTiktok)
    }
    func openUrlTwitter () {
        UIApplication.shared.open(urlTwitter)
    }
    func openUrlYoutube () {
        UIApplication.shared.open(urlYoutube)
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
        })
    }
}
