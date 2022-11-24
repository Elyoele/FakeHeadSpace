//
//  GameViewController.swift
//  FakeHeadSpace
//
//  Created by Eleonora Coppola on 22/11/22.
//

import Foundation
import UIKit
import SpriteKit

class GameViewController: UIViewController {

    
    
  override func viewDidLoad() {
    super.viewDidLoad()
    if let view = view as? SKView {

        let scene = GameScene(size: view.bounds.size)
        scene.scaleMode = .resizeFill
      view.ignoresSiblingOrder = true
      view.showsFPS = false
      view.showsNodeCount = false
      view.presentScene(scene)
        
    }
  }
    
  
  override var prefersStatusBarHidden: Bool {
    return true
  }
}
