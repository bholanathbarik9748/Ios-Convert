//
//  CurrencyIcon.swift
//  Convert
//
//  Created by Bholanath Barik on 30/03/24.
//

import SwiftUI

struct CurrencyIcon: View {
    let currencyImage : ImageResource;
    let currencyName : String;
    
    var body: some View {
        ZStack(alignment: .bottom){
            Image(currencyImage)
                .resizable()
                .scaledToFit()
                
            Text(currencyName)
                .padding(3)
                .font(.caption)
                .frame(maxWidth: .infinity )
                .background(.brown.opacity(0.75))
        }
        .background(.brown)
        .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/ , height: 100 )
        .padding(3)
        .clipShape(.rect(cornerRadius: 25))
    }
}

#Preview {
    CurrencyIcon(currencyImage: .copperpenny, currencyName: "Copper Penny")
}
