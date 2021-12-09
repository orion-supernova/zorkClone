//
//  main.swift
//  test
//
//  Created by Murat Can KOÇ on 7.12.2021.
//

import Foundation

// MARK: - All Commands

var allCommands = [String]()
let eat = "eat"
let drink = "drink"
let take = "take"
let go = "go"
allCommands.append(eat)
allCommands.append(drink)
allCommands.append(take)
allCommands.append(go)

// MARK: - Public Variables

var gameOver = false

//MARK: - Start the Game

gameIntro()

while !gameOver {
    takeInputAndCheckForMatch()
}

//MARK: - Functions

func gameIntro() {
    print("""
    ----------------- Zork versiyonuma hoşgeldin ------------------------\n
    Geniş bi arazide uyandın. Karşında beyaz bi bina ve önünde bir kutu var. Etraf çorak bir arazi ve hava ılık. Hafif bir esinti var. Etrafta kuş cıvıltıları duyuluyor.
    """)
}

func takeInputAndCheckForMatch() {
    let userInput = readLine(strippingNewline: true)
    if userInput == "exit" {
        print("Okay, game is over now")
    }
    let slicedWordsFromUser = userInput?.split(separator: " ", maxSplits: 10, omittingEmptySubsequences: true).map({ (substring) in
        return String(substring)
    })
    print(slicedWordsFromUser ?? "")
    var type = ""
    for item in allCommands {
        for word in slicedWordsFromUser! {
            if word  == item {
                type = word
                checkWhichCommand(command: type)
            }
        }
    }
}

func checkWhichCommand(command: String) {
    print("eşleşme var \(command)")
}



