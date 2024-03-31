//
//  ExchangeRates.swift
//  Convert
//
//  Created by Bholanath Barik on 29/03/24.
//

import SwiftUI

struct ExchangeRates: View {
    let leftImage : ImageResource;
    let rightImage : ImageResource;
    let convertText : String;
    
    var body: some View {
        HStack{
            Image(leftImage)
                .resizable()
                .scaledToFit()
                .frame(height: 33)
            
            Text(convertText)
            
            Image(rightImage)
                .resizable()
                .scaledToFit()
                .frame(height: 33)
        }
    }
}

#Preview {
    ExchangeRates(leftImage: .goldpiece, rightImage: .goldpenny, convertText: "1 Gold Piece = 4 Gold Pennies")
}
