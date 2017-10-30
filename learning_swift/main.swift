//
//  main.swift
//  
//
//  Created by hatoriz on 30/10/2560 BE.
//

import Foundation
import DeckOfPlayingCards

var deck = Deck.standard52CardDeck()
deck.shuffle()

for _ in 0...5
{
    guard let card = deck.deal() else
    {
        print("No More Cards!")
        break
    }
    print(card)
}
