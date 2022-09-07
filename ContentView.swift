//
//  ContentView.swift
//  cwc
//
//  Created by Omar Muhammad on 2021-09-29.
//

import SwiftUI
//View is a protocol that the structure checks


struct ContentView: View {
    //can change data in state, ui updates with state
    @State var playerCard = "back"
    @State var cpuCard = "back"
    @State var playerScore = 0
    @State var cpuScore = 0
    @State private var hidden = false
    @State private var aniamount: CGFloat = 1
    @State var flash: Bool = false
    
    var body: some View {
        
        ZStack {
            Image("background").ignoresSafeArea()
            
            VStack {
                Spacer()
                Button (action: {
                    flash = false
                    print("HI")
                }, label: {
                    Image("logo")
                })
                Spacer()
                
                HStack {
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                Spacer()
                Button (action: {
                    self.aniamount += 1
                    let playerRand = Int.random(in: 2...14)
                    let cpuRand = Int.random(in: 2...14)
                    //update card and score
                    playerCard = "card" + String(playerRand)
                    cpuCard = "card" + String(cpuRand)
                    
                    if (playerRand > cpuRand) {
                        playerScore += 1
                    }
                    if (cpuRand > playerRand) {
                        cpuScore += 1
                    }
                    else {
                    
                            
                    
                    
                    }
                    
                }, label: {
                    Image("dealbutton")
                })  
                Spacer()
                
                HStack {
                    Spacer()
                    VStack {
                        Text("Player 1")
                            .font(.headline)
                            .foregroundColor(Color.white)
                            .padding(.bottom, 10.0)
                        Text(String(playerScore))
                            .font(.largeTitle)
                            .foregroundColor(Color.white)
                        
                    }
                    Spacer()
                    
                    VStack {
                        Text("Player 2")
                            .font(.headline)
                            .foregroundColor(Color.white)
                            .padding(.bottom, 10.0)
                        Text(String(cpuScore))
                            .font(.largeTitle)
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
