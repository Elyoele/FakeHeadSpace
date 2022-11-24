import Foundation
import UIKit
import SpriteKit


class GameScene: SKScene, ObservableObject {


    let breatheLabel = SKLabelNode()
//    let breatheLabel2 = SKLabelNode()
    let breatheLabel3 = SKLabelNode()

   
    
    private var cat = SKSpriteNode()
    private var catBreathingFrames: [SKTexture] = []
    
    
    
    
    override func didMove(to view: SKView) {
        buildCat()
        animateCat()

    }
    
    
    
    func buildCat() {
        let catAnimatedAtlas = SKTextureAtlas(named: "CatImages")
        var breatheFrames: [SKTexture] = []
        
        let numImages = catAnimatedAtlas.textureNames.count
        for i in 1...numImages {
            let catTextureName = "cat\(i)"
            breatheFrames.append(catAnimatedAtlas.textureNamed(catTextureName))
            
        }
        catBreathingFrames = breatheFrames
        
        let firstFrameTexture = catBreathingFrames[0]
        cat = SKSpriteNode(texture: firstFrameTexture, size: CGSize(width: 400.0, height: 400.0))
        cat.position = CGPoint(x: frame.midX, y: frame.midY - 50)
        addChild(cat)
        
        breatheLabel.text = "Breathe"
        breatheLabel.fontColor = SKColor.white
        breatheLabel.fontName = "SF Pro Display"
        breatheLabel.fontSize = 40
        breatheLabel.position = CGPoint(x: frame.midX, y: frame.maxY - 200)
        breatheLabel.verticalAlignmentMode = .center
        breatheLabel.horizontalAlignmentMode = .center
        addChild(breatheLabel)
        
        
//        breatheLabel2.text = "Breathe out"
//        breatheLabel2.fontColor = SKColor.white
//        breatheLabel2.fontName = "SF Pro Display"
//        breatheLabel2.fontSize = 40
//        breatheLabel2.position = CGPoint(x: frame.midX, y: frame.maxY - 200)
//        breatheLabel2.verticalAlignmentMode = .center
//        breatheLabel2.horizontalAlignmentMode = .center
//        addChild(breatheLabel2)
//        
        breatheLabel3.text = "5 breathe left"
        breatheLabel3.fontColor = SKColor.white
        breatheLabel3.fontName = "SF Pro Display"
        breatheLabel3.fontSize = 30
        breatheLabel3.position = CGPoint(x: frame.midX, y: frame.maxY - 250)
        breatheLabel3.verticalAlignmentMode = .center
        breatheLabel3.horizontalAlignmentMode = .center
        addChild(breatheLabel3)
 
        
        
    }
    
    
    
    func animateCat() {
        cat.run(SKAction.repeatForever(
            SKAction.animate(with: catBreathingFrames,
                             timePerFrame: 0.15,
                             resize: false,
                             restore: true)),
                withKey:"breathingInPlaceCat")
    }
    

    
}
