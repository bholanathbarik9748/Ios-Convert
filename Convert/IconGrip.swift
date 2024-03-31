//
//  IconGrip.swift
//  Convert
//
//  Created by Bholanath Barik on 31/03/24.
//

import SwiftUI

struct IconGrip: View {
    @Binding var currency : Currency;
    
    var body: some View {
        LazyVGrid(columns: [GridItem(),GridItem() ,GridItem()]) {
            ForEach(Currency.allCases){ currency in
                if(currency == self.currency){
                    CurrencyIcon(currencyImage: currency.image,currencyName: currency.name)
                        .shadow(color : .black , radius: 10)
                        .overlay {
                            RoundedRectangle ( cornerRadius: 25)
                                .stroke(lineWidth: 3)
                                .opacity(0.5)
                        }
                }else{
                    CurrencyIcon(currencyImage: currency.image,currencyName: currency.name)
                        .onTapGesture {
                            self.currency = currency;
                        }
                }
            }
        }
    }
}

#Preview {
    IconGrip(currency: .constant(.silverPenny))
}
