//
//  ContentView.swift
//  Roll the Dice
//
//  Created by Danny Wade on 23/12/2021.
//

import SwiftUI

struct ContentView: View {

    @State private var playerDice = "Dice6"
    @State private var cpuDice = "Dice1"

    @State private var playerScore = 0
    @State private var cpuScore = 0

    var body: some View {

        ZStack {
            Image("background")
                .ignoresSafeArea()

            VStack {
                Spacer()
                Text("Roll the Dice")
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .foregroundColor(Color.white)

                Spacer()
                HStack {
                    Spacer()
                    Image(playerDice)
                    Spacer()
                    Image(cpuDice)
                    Spacer()
                }

                Spacer()

                Button(action: {


                    let playerRand = Int.random(in: 1...6)
                    let cpuRand = Int.random(in: 1...6)


                    playerDice = "Dice" + String(playerRand)
                    cpuDice = "Dice" + String(cpuRand)

                    //Update the score
                    if playerRand > cpuRand {
                        playerScore += 1
                    }
                    else if cpuRand > playerRand {
                        cpuScore += 1
                    }

                }, label: {
                    Image("dealbutton")
                })

                Spacer()
                HStack {
                    Spacer()
                    VStack {
                        Text("Player")
                            .font(.title)
                            .fontWeight(.semibold)
                            .foregroundColor(Color.white)
                        Text(String(playerScore))
                            .font(.largeTitle)
                            .fontWeight(.semibold)
                            .foregroundColor(Color.white)
                    }
                    Spacer()
                    VStack {
                        Text("CPU")
                            .font(.title)
                            .fontWeight(.semibold)
                            .foregroundColor(Color.white)
                        Text(String(cpuScore))
                            .font(.largeTitle)
                            .fontWeight(.semibold)
                            .foregroundColor(Color.white)
                    }
                    Spacer()
                }
                Spacer()
            }
        }



    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
