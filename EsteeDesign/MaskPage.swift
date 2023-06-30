//
//  MaskPage.swift
//  EsteeDesign
//
//  Created by Reshmi Ramesh on 6/30/23.
//

import SwiftUI

struct MaskPage: View {
    @State private var detailText = "Melting Soft Creme/Mask melts into skin. Comfortable, cushy, pillowy feel. \nCalms. Renews. Strengthens. \nQuenching, soothing hydration. Skin thrives with now-awakened vitality. \nProof positive. \n   - Boosts moisture after one application \n   - Skin barrier is strengthened with one application \n   - Oiliness looks reduced: -52%* \n   - Pores look minimized: -41%* \n93% naturally derived formula.** \nInfused with our Nutri-9 Complex, which includes: \n   - Sweet Kelp to help fight oiliness and minimize the appearance of pores (responsibly sourced) \n   - Red Algae Ferment to soothe and reduce visible redness (responsibly sourced) \n   - Coconut Water Ferment to hydrate and nourish (our proprietary ferment)"
    
    var body: some View {
        VStack (alignment: .leading) {
            // product images (4)
            ScrollView(.horizontal) {
                HStack (spacing: 20) {
                    ForEach (0..<4) {
                        Image("landscape-melt-\($0)")
                            .resizable(resizingMode: .stretch)
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 400.0)
                    }
                }
                
            }
            
            // general product info
            HStack {
                VStack (alignment: .leading) {
                    Text("Melting Soft Creme / Mask Moisturizer")
                        .font(.title2)
                        .fontWeight(.bold)
                }
                Spacer()
                VStack {
                    Text("$48.00")
                    
                    // add the cart button
                }
                
            }
            .padding(.horizontal)
            VStack (alignment: .leading) {
                Text("Pores, Hydration, Glow")
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
            
            // product details (description, how to use, ingredients)
            VStack {
                HStack {
                    Spacer()
                    Button(action: {
                        detailText = ("Melting Soft Creme/Mask melts into skin. Comfortable, cushy, pillowy feel. \nCalms. Renews. Strengthens. \nQuenching, soothing hydration. Skin thrives with now-awakened vitality. \nProof positive. \n   - Boosts moisture after one application \n   - Skin barrier is strengthened with one application \n   - Oiliness looks reduced: -52%* \n   - Pores look minimized: -41%* \n93% naturally derived formula.** \nInfused with our Nutri-9 Complex, which includes: \n   - Sweet Kelp to help fight oiliness and minimize the appearance of pores (responsibly sourced) \n   - Red Algae Ferment to soothe and reduce visible redness (responsibly sourced) \n   - Coconut Water Ferment to hydrate and nourish (our proprietary ferment)")
                        
                    }) {
                        Text("Description")
                            .fontWeight(.medium)
                            .padding(.vertical, 5)
                            .foregroundColor(.pink)
                    }
                    Spacer()
                    
                    Button(action: {
                        detailText = ("Show your skin some love AM and PM: \n\n1. Start fresh with 2-in-1 Foam Cleanser. \n\n2. Apply Radiant Essence Lotion. Follow the essence with a serum if you choose. \n\n3. Hydrate with Melting Soft Creme. \n\nFor a radiance-and-refresh burst, apply as a weekly leave-on mask: Apply thin layer for 5 mins, tissue off. \n\nFinishing up? Please recycle.")
                    }) {
                        Text("How To Use")
                            .fontWeight(.medium)
                            .padding(.vertical, 5)
                            .foregroundColor(.pink)
                    }
                    Spacer()
                    
                    Button(action: {
                        detailText = ("Water/Aqua/Eau, Heptyl Undecylenate, Butylene Glycol, Glycerin, Polyglyceryl-6 Distearate, Trimethylolpropane Tricaprylate/Tricaprate, Butyrospermum Parkii (Shea) Butter, Cetyl Alcohol, Niacinamide, Laminaria Saccharina Extract, Porphyridium Cruentum Extract, Lactobacillus Ferment, Hydrolyzed Rice Extract, Punica Granatum (Pomegranate) Extract, Zinc Pca, Dipotassium Glycyrrhizate, Camellia Sinensis (Green Tea) Leaf Extract, Sodium Hyaluronate, Caffeine, Narcissus Tazetta Bulb Extract, Cucumis Sativus (Cucumber) Fruit Extract, Jojoba Esters, Helianthus Annuus (Sunflower) Seed Extract, Hordeum Vulgare Extract/Extrait D'Orge, Sucrose (Organic Brown Sugar), Saccharide Isomerate, Tocopheryl Acetate, Sodium Phytate, Sodium Citrate, Citric Acid, Pentylene Glycol, Sodium Dehydroacetate, Propylene Glycol Dicaprate, Xanthan Gum, Ethylhexylglycerin, Tocopherol, Potassium Cetyl Phosphate, Carbomer, Sodium Hydroxide, Ammonium Acryloyldimethyltaurate/Vp Copolymer, Acrylates/C10-30 Alkyl Acrylate Crosspolymer, Phenoxyethanol <ILN51055>")
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

struct MaskPage_Previews: PreviewProvider {
    static var previews: some View {
        MaskPage()
    }
}

struct BottomNavBarMask: View {
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
