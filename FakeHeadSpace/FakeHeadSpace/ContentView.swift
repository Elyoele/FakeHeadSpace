//
//  ContentView.swift
//  FakeHeadSpace
//
//  Created by Eleonora Coppola on 22/11/22.
//

import SwiftUI
import SpriteKit

struct ContentView: View {
    
    @StateObject var scene: GameScene = {
        
        let scene = GameScene()
        
        scene.scaleMode = .resizeFill
        scene.backgroundColor = UIColor(Color("bgBlue"))
        return scene
    }()
    
    var body: some View {
        SpriteView(scene: self.scene, isPaused: false)
            .ignoresSafeArea()
            .onTapGesture {
                scene.isPaused.toggle()
            }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
