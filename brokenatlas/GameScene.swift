//
//  GameScene.swift
//  brokenatlas
//
//  Created by iMac on 6/29/20.
//  Copyright © 2020 Lord Nibbler. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene, SKPhysicsContactDelegate {

    // using SKTextureAtlas, loading 2.png, on a real device, we see the SKPhysicsBody blue outline does not match the sprite image.
    override func didMove(to view: SKView) {
        physicsWorld.gravity = .zero

        let sprite = SKSpriteNode()
        sprite.size = CGSize(width: 50, height: 50)
        sprite.position = CGPoint(x: self.frame.midX, y: self.frame.midY)
        let atlas = SKTextureAtlas(named: "myatlas")
        sprite.texture = atlas.textureNamed("2")
        sprite.physicsBody = SKPhysicsBody(texture: sprite.texture!, alphaThreshold: 0.0, size: sprite.size)
        self.addChild(sprite)
    }

    // using SKTexture, loading the exact same image here, named mysprite.png, on a real device, we see the SKPhysicsBody blue outline exactly matches the sprite image
//    override func didMove(to view: SKView) {
//        physicsWorld.gravity = .zero
//
//        let sprite = SKSpriteNode()
//        sprite.size = CGSize(width: 50, height: 50)
//        sprite.position = CGPoint(x: self.frame.midX, y: self.frame.midY)
//        sprite.texture = SKTexture(imageNamed: "mysprite")
//        sprite.physicsBody = SKPhysicsBody(texture: sprite.texture!, alphaThreshold: 0.0, size: sprite.size)
//        self.addChild(sprite)
//    }
}
