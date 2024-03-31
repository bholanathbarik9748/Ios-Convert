//
//  CurrencyTip.swift
//  Convert
//
//  Created by Bholanath Barik on 31/03/24.
//

import Foundation
import TipKit

struct CurrencyTip : Tip {
    var title = Text("Change Currency");
    var message: Text? = Text("You can tap icon to change currency");
}
