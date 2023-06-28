//
//  BrowseProducts.swift
//  EsteeDesign
//
//  Created by Reshmi Ramesh on 6/26/23.
//

import SwiftUI

struct BrowseProducts: View {
    var body: some View {
        VStack {
            Spacer()
            
            HStack {
                VStack {
                    Image("pfp-cleanser")
                        .resizable(resizingMode: .stretch)
                        .aspectRatio(contentMode: .fit)
                    Text("2-in-1 Foam Cleanser")
                        .multilineTextAlignment(.center)
                    Text("Purify, Pores, Glow")
                        .font(.caption)
                        .multilineTextAlignment(.center)
                }
                VStack {
                    Image("pfp-airy")
                        .resizable(resizingMode: .stretch)
                        .aspectRatio(contentMode: .fit)
                    Text("Airy Lotion")
                        .multilineTextAlignment(.center)
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
                    Text("Melting Soft Creme / Mask")
                        .multilineTextAlignment(.center)
                    Text("Pores, Hydration, Glow")
                        .font(.caption)
                        .multilineTextAlignment(.center)
                }
                VStack {
                    Image("pfp-radiant")
                        .resizable(resizingMode: .stretch)
                        .aspectRatio(contentMode: .fit)
                    Text("Radiant Essence Lotion")
                        .multilineTextAlignment(.center)
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

struct BrowseProducts_Previews: PreviewProvider {
    static var previews: some View {
        BrowseProducts()
    }
}
