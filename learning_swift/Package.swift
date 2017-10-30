//
//  Package.swift
//  
//
//  Created by hatoriz on 30/10/2560 BE.
//

import PackageDescription

let package = Package(
    name: "Dealer",
    dependencies:
    [
        .Package(
            url:"https://github.com/apple/example-package-deckofplayingcards.git",
            majorVersion: 3)
    ]
)
