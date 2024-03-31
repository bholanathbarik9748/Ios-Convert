//
//  ExchangeInfo.swift
//  Convert
//
//  Created by Bholanath Barik on 29/03/24.
//

import SwiftUI

struct ExchangeInfo: View {
    @Environment(\.dismiss) var dismissPage;
    
    var body: some View {
        ZStack{
            Image(.parchment)
                .resizable()
                .ignoresSafeArea()
                .background(.brown)
            
            VStack{
                Text("Exchange Rates")
                    .font(.largeTitle)
                    .tracking(2)
                
                
                Text("Here at the Prancing Pony, we are happy to offer you a place where you can exchange all the known currencies in the entire world except one. We used to take Brandy Bucks, but after finding out that it was a person instead of a piece of paper, we realized it had no value to us. Below is a simple guide to our currency exchange rates:")
                    .padding()
                    .font(.title2)
                
                ExchangeRates(leftImage: .goldpiece, rightImage: .goldpenny, convertText: "1 Gold Piece = 4 Gold Pennies")
                ExchangeRates(leftImage: .goldpenny, rightImage: .silverpiece, convertText: "1 Gold Penny = 4 Silver Piece")
                ExchangeRates(leftImage: .silverpiece, rightImage: .silverpenny, convertText: "1 Silver Piece = 4 Silver Penny")
                ExchangeRates(leftImage: .silverpenny, rightImage: .copperpenny, convertText: "1 Silver Penny = 100 Copper Pennies")
                
                Button ("Done") {
                    dismissPage()
                }
                .buttonStyle(.borderedProminent)
                .tint(.brown)
                .font(.subheadline)
                .padding()
            }
        }
    }
}

#Preview {
    ExchangeInfo()
}
