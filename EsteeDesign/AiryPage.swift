//
//  AiryPage.swift
//  EsteeDesign
//
//  Created by Reshmi Ramesh on 6/30/23.
//

import SwiftUI

struct AiryPage: View {
    @State private var detailText = "Airy Lotion delivers a cushioning, hydrating infusion. \nAwakens. Balances. Calms. Preps for regimen. \nHealthier-looking. Blissful-feeling. Vitality-loving skin. \nProof positive. \n   - Oiliness looks reduced: -40%* \n   - Pores look minimized: -31%* \n   - And it helps prevent redness with one application** \n95% naturally derived formula.*** \nInfused with our Nutri-9 Complex, which includes: \n   - Sweet Kelp to help fight oiliness and minimize the appearance of pores (responsibly sourced) \n   - Red Algae Ferment to soothe and reduce visible redness (responsibly sourced) \n   - Coconut Water Ferment to hydrate and nourish (our proprietary ferment)"
    
    var body: some View {
        VStack (alignment: .leading) {
            // product images (4)
            ScrollView(.horizontal) {
                HStack (spacing: 20) {
                    ForEach (0..<4) {
                        Image("landscape-airy-\($0)")
                            .resizable(resizingMode: .stretch)
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 400.0)
                    }
                }
                
            }
            
            // general product info
            HStack {
                VStack (alignment: .leading) {
                    Text("Airy Treatment Lotion")
                        .font(.title2)
                        .fontWeight(.bold)
                }
                Spacer()
                VStack {
                    Text("$42.00")
                    
                    // add the cart button
                }
                
            }
            .padding(.horizontal)
            VStack (alignment: .leading) {
                Text("Prep, Infuse, Glow")
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
                        detailText = ("Airy Lotion delivers a cushioning, hydrating infusion. \nAwakens. Balances. Calms. Preps for regimen. \nHealthier-looking. Blissful-feeling. Vitality-loving skin. \nProof positive. \n   - Oiliness looks reduced: -40%* \n   - Pores look minimized: -31%* \n   - And it helps prevent redness with one application** \n95% naturally derived formula.*** \nInfused with our Nutri-9 Complex, which includes: \n   - Sweet Kelp to help fight oiliness and minimize the appearance of pores (responsibly sourced) \n   - Red Algae Ferment to soothe and reduce visible redness (responsibly sourced) \n   - Coconut Water Ferment to hydrate and nourish (our proprietary ferment)")
                        
                    }) {
                        Text("Description")
                            .fontWeight(.medium)
                            .padding(.vertical, 5)
                            .foregroundColor(.pink)
                    }
                    Spacer()
                    
                    Button(action: {
                        detailText = ("Show your skin some love AM and PM: \n\n1. Start fresh with 2-in-1 Foam Cleanser. \n\n2. Apply Airy Lotion all over face. Tip: use your hands or cotton pad. \n   - Follow the essence with a serum if you choose. \n\n3. Hydrate with the Nutritious moisturizer right for you. \n\nFinishing up? Please recycle the bottle.")
                    }) {
                        Text("How To Use")
                            .fontWeight(.medium)
                            .padding(.vertical, 5)
                            .foregroundColor(.pink)
                    }
                    Spacer()
                    
                    Button(action: {
                        detailText = ("Water/Aqua/Eau, Propanediol, Niacinamide, Glycerin, Butylene Glycol, Laminaria Saccharina Extract, Porphyridium Cruentum Extract, Lactobacillus Ferment, Hydrolyzed Rice Extract, Punica Granatum (Pomegranate) Extract, Zinc Pca, Dipotassium Glycyrrhizate, Camellia Sinensis (Green Tea) Leaf Extract, Sodium Hyaluronate, Caffeine, Narcissus Tazetta Bulb Extract, Cucumis Sativus (Cucumber) Fruit Extract, Sucrose (Organic Brown Sugar), Sodium Dilauramidoglutamide Lysine, Citric Acid, Sodium Citrate, Caprylyl Glycol, Sodium Hydroxide, Polyglyceryl-6 Caprylate, Polyglyceryl-4 Caprate, Acrylates/C10-30 Alkyl Acrylate Crosspolymer, Phenoxyethanol <ILN99169>")
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

struct AiryPage_Previews: PreviewProvider {
    static var previews: some View {
        AiryPage()
    }
}

struct BottomNavBarAiry: View {
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
