//
//  CleanserPage.swift
//  EsteeDesign
//
//  Created by Reshmi Ramesh on 6/26/23.
//

import SwiftUI

struct CleanserPage: View {
    @State private var detailText = "- 2-in-1 Foam Cleanser works as a daily cleanser or weekly purifying mask. \n- Cleanses + Deeply Purifies. Kicks off regimen. \n- Healthier-looking. Blissful-feeling. Vitality-loving skin. \n- Proof positive. After just 1 application: \n   - Pores appear minimized: -17%* \n   - 96% said it removed excess oil** \n   - 97% naturally derived formula.*** \n- Infused with our Nutri-9 Complex, which includes: \n   - Sweet Kelp (responsibly sourced) \n   - Red Algae Ferment (responsibly sourced) \n   - Coconut Water Ferment (our proprietary ferment)"
    
    var body: some View {
        VStack (alignment: .leading) {
            // product images (4)
            ScrollView(.horizontal) {
                HStack (spacing: 20) {
                    ForEach (0..<4) {
                        Image("landscape-cleanser-\($0)")
                            .resizable(resizingMode: .stretch)
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 400.0)
                    }
                }
                
            }
            
            // general product info
            HStack {
                VStack (alignment: .leading) {
                    Text("2-in-1 Foam Cleanser")
                        .font(.title2)
                        .fontWeight(.bold)
                }
                Spacer()
                VStack {
                    Text("$27.00")
                }
                
            }
            .padding(.horizontal)
            VStack (alignment: .leading) {
                Text("Purify, Pores, Glow")
                HStack (spacing: 4) {
                    ForEach(0..<5) { item in Image("el_star")
                            .resizable(resizingMode: .stretch)
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 15.0)
                            .foregroundColor(.pink)
                    }
                }
            }
            .padding(.horizontal)
            
            // product details (description, how to use, ingredients
            VStack {
                HStack {
                    Spacer()
                    Button(action: {
                        detailText = ("- 2-in-1 Foam Cleanser works as a daily cleanser or weekly purifying mask. \n- Cleanses + Deeply Purifies. Kicks off regimen. \n- Healthier-looking. Blissful-feeling. Vitality-loving skin. \n- Proof positive. After just 1 application: \n   - Pores appear minimized: -17%* \n   - 96% said it removed excess oil** \n   - 97% naturally derived formula.*** \n- Infused with our Nutri-9 Complex, which includes: \n   - Sweet Kelp (responsibly sourced) \n   - Red Algae Ferment (responsibly sourced) \n   - Coconut Water Ferment (our proprietary ferment)")
                        
                    }) {
                        Text("Description")
                            .fontWeight(.medium)
                            .padding(.vertical, 5)
                            .foregroundColor(.pink)
                    }
                    Spacer()
                    
                    Button(action: {
                        detailText = ("Show your skin some love AM and PM: \n\n1. Start fresh with 2-in-1 Foam Cleanser. Lather and massage over damp face. Rinse. Repeat AM and PM. \n   - As a weekly mask: Massage a thin layer onto skin. Focus on the T-Zone. Leave 1 minute. Rinse. \n   - Avoid the eye area. \n\n2. Apply Radiant Essence Lotion. Follow the essence with a serum if you choose. \n\n3. Hydrate with the Nutritious moisturizer right for you.")
                    }) {
                        Text("How To Use")
                            .fontWeight(.medium)
                            .padding(.vertical, 5)
                            .foregroundColor(.pink)
                    }
                    Spacer()
                    
                    Button(action: {
                        detailText = ("Water/Aqua/Eau, Myristic Acid, Glycerin, Behenic Acid, Palmitic Acid, Potassium Hydroxide, Sodium Methyl Cocoyl Taurate, Lauric Acid, Stearic Acid, Montmorillonite, Laminaria Saccharina Extract, Porphyridium Cruentum Extract, Lactobacillus Ferment, Niacinamide, Hydrolyzed Rice Extract, Punica Granatum (Pomegranate) Extract, Zinc Pca, Dipotassium Glycyrrhizate, Camellia Sinensis (Green Tea) Leaf Extract, Sodium Hyaluronate, Cucumis Sativus (Cucumber) Fruit Extract, Sodium Phytate, Potassium Sorbate, Glycol Distearate, Butylene Glycol, Disodium Edta, Sodium Benzoate, Polyquaternium-7, Phenoxyethanol <ILN99168>")
                    }) {
                        Text("Ingredients")
                            .fontWeight(.medium)
                            .padding(.vertical, 5)
                            .foregroundColor(.pink)
                    }
                    Spacer()
                }
                
                ScrollView {
                    Text(detailText)
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


