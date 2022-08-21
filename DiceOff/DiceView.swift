//
//  DiceView.swift
//  DiceOff
//
//  Created by Julio Rico on 29/9/21.
//

import SwiftUI

struct DiceView: View {
    @ObservedObject var dice: Dice
    
    var body: some View {
        diceImage
            .foregroundColor(dice.owner.color)
            .overlay(
                diceImage
                    .foregroundColor(.white)
                    .opacity(dice.changeAmount)
            )
    }
    
    var diceImage: some View {
        Image(systemName: "die.face.\(dice.value).fill")
            .resizable()
            .aspectRatio(1, contentMode: .fit)
    }
}
