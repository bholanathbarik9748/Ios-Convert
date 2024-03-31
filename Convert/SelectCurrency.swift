//
//  SelectCurrency.swift
//  Convert
//
//  Created by Bholanath Barik on 30/03/24.
//

import SwiftUI

struct SelectCurrency: View {
    @Environment(\.dismiss) var dismissPage;
    @Binding var TopCurrency : Currency;
    @Binding var buttonCurrency : Currency;
    
    var body: some View {
        ZStack{
            Image(.parchment)
                .resizable()
                .ignoresSafeArea()
                .background(.brown)
            
            VStack{
                Text("Select the currency you are stating with:")
                
                IconGrip(currency: $TopCurrency);
                
                Text("Select the currency you whould like to convert to :")
                
                IconGrip(currency: $buttonCurrency);
                
                Button ("Done") {
                    dismissPage();
                }
                .buttonStyle(.borderedProminent)
                .tint(.brown)
                .font(.subheadline)
                .padding()
            }
            .padding()
            .multilineTextAlignment(.center)
        }
    }
}

#Preview {
    SelectCurrency(TopCurrency: .constant(.copperPenny), buttonCurrency: .constant(.silverPiece));
}
