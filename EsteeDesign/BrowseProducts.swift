//
//  BrowseProducts.swift
//  EsteeDesign
//
//  Created by Reshmi Ramesh on 6/26/23.
//

import SwiftUI

struct BrowseProducts: View {
    var body: some View {
        NavigationStack {
            VStack {
                    Spacer()
                    
                    HStack {
                        VStack {
                            Image("pfp-cleanser")
                                .resizable(resizingMode: .stretch)
                                .aspectRatio(contentMode: .fit)
                            NavigationLink(destination: CleanserPage(), label: {
                                Text("2-in-1 Foam Cleanser")
                                    .multilineTextAlignment(.center)
                                    .fontWeight(.bold)
                                    .foregroundColor(.black)
                            })
                            Text("Purify, Pores, Glow")
                                .font(.caption)
                                .multilineTextAlignment(.center)
                        }
                        VStack {
                            Image("pfp-airy")
                                .resizable(resizingMode: .stretch)
                                .aspectRatio(contentMode: .fit)
                            NavigationLink(destination: AiryPage(), label: {
                                Text("Airy Lotion")
                                    .multilineTextAlignment(.center)
                                    .fontWeight(.bold)
                                    .foregroundColor(.black)
                            })
                            Text("Pores, Hydration, Glow")
                                .font(.caption)
                                .multilineTextAlignment(.center)
                        }
                    }
                    Spacer()
                    
                    HStack {
                        VStack {
                            Image("pfp-melt")
                                .resizable(resizingMode: .stretch)
                                .aspectRatio(contentMode: .fit)
                            NavigationLink(destination: MaskPage(), label: {
                                Text("Melting Soft Creme / Mask")
                                    .multilineTextAlignment(.center)
                                    .fontWeight(.bold)
                                    .foregroundColor(.black)
                            })
                            Text("Pores, Hydration, Glow")
                                .font(.caption)
                                .multilineTextAlignment(.center)
                        }
                        VStack {
                            Image("pfp-radiant")
                                .resizable(resizingMode: .stretch)
                                .aspectRatio(contentMode: .fit)
                            NavigationLink(destination: CleanserPage(), label: {
                                Text("Radiant Essence Lotion")
                                    .multilineTextAlignment(.center)
                                    .fontWeight(.bold)
                                    .foregroundColor(.black)
                            })
                            Text("Prep, Infuse, Glow")
                                .font(.caption)
                                .multilineTextAlignment(.center)
                        }
                    }
                    Spacer()
                }
                .padding()
        }
        
    }
}

struct BrowseProducts_Previews: PreviewProvider {
    static var previews: some View {
        BrowseProducts()
    }
}

struct BottomNavBarBrowse: View {
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
