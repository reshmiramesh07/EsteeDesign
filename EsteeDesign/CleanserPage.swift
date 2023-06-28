//
//  CleanserPage.swift
//  EsteeDesign
//
//  Created by Reshmi Ramesh on 6/26/23.
//

import SwiftUI

struct CleanserPage: View {
    var body: some View {
        VStack (alignment: .leading) {
            Image("landscape-cleanser")
                .resizable(resizingMode: .stretch)
                .aspectRatio(contentMode: .fit)
            VStack (alignment: .leading) {
                Text("2-in-1 Foam Cleanser")
                    .font(.title2)
                    .fontWeight(.bold)
                Text("Purify, Pores, Glow")
                Text("$27.00")
                
                HStack (spacing: 4) {
                    ForEach(0..<5) { item in Image("el_star")
                            .resizable(resizingMode: .stretch)
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 15.0)
                            .foregroundColor(.pink)
                    }
                }
            }
            .padding()
            
            // vStack details
            VStack {
                Text("Description")
                    .fontWeight(.medium)
                    .padding(.vertical, 5)
                ScrollView {
                    Text("2-in-1 Foam Cleanser works as a daily cleanser or weekly purifying mask. \nCleanses + Deeply Purifies. Kicks off regimen. \nHealthier-looking. Blissful-feeling. Vitality-loving skin. \nProof positive. After just 1 application: \nPores appear minimized: -17%* \n96% said it removed excess oil** \n97% naturally derived formula.*** \nInfused with our Nutri-9 Complex, which includes: \nSweet Kelp (responsibly sourced) \nRed Algae Ferment (responsibly sourced) \nCoconut Water Ferment (our proprietary ferment)")
                        .lineSpacing(8.0)
                        .opacity(0.8)
                }
            }
            .padding()
        }
    }
}

struct CleanserPage_Previews: PreviewProvider {
    static var previews: some View {
        CleanserPage()
    }
}


