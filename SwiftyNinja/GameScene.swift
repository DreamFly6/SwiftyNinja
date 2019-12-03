//
//  GameScene.swift
//  SwiftyNinja
//
//  Created by Juan Francisco Dorado Torres on 02/12/19.
//  Copyright © 2019 Juan Francisco Dorado Torres. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {

  // MARK: - Properties

  var gameScore: SKLabelNode!
  var activeSliceBG: SKShapeNode!
  var activeSliceFG: SKShapeNode!

  var score = 0 {
    didSet {
      gameScore.text = "Score: \(score)"
    }
  }

  var livesImages = [SKSpriteNode]()
  var lives = 3

  // MARK: - Scene cycle

  override func didMove(to view: SKView) {
    let background = SKSpriteNode(imageNamed: "sliceBackground")
    background.position = CGPoint(x: 512, y: 384)
    background.blendMode = .replace
    background.zPosition = -1
    addChild(background)

    // Default gravity is -0.98
    // This slightly lower value is to let items stay up in the air a bit longer
    physicsWorld.gravity = CGVector(dx: 0, dy: -6)
    // Speed is downwards
    // it causes all movement to happen at a slightly slower rate
    physicsWorld.speed = 0.85

    createScore()
    createLives()
    createSlices()
  }

  // MARK: - Methods

  private func createScore() {
    gameScore = SKLabelNode(fontNamed: "Chalkduster")
    gameScore.horizontalAlignmentMode = .left
    gameScore.fontSize = 48
    addChild(gameScore)

    gameScore.position = CGPoint(x: 8, y: 8)
    score = 0
  }

  private func createLives() {
    for i in 0 ..< 3 {
      let spriteNode = SKSpriteNode(imageNamed: "sliceLife")
      spriteNode.position = CGPoint(x: CGFloat(834 + (i * 70)), y: 720)
      addChild(spriteNode)
      livesImages.append(spriteNode)
    }
  }

  private func createSlices() {
    activeSliceBG = SKShapeNode()
    activeSliceBG.zPosition = 2

    activeSliceFG = SKShapeNode()
    activeSliceFG.zPosition = 3

    activeSliceBG.strokeColor = UIColor(red: 1, green: 0.9, blue: 0, alpha: 1)
    activeSliceBG.lineWidth = 9

    activeSliceFG.strokeColor = .white
    activeSliceFG.lineWidth = 5

    addChild(activeSliceBG)
    addChild(activeSliceFG)
  }
}
