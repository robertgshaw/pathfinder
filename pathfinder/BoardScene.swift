//
//  BoardScene.swift
//  pathfinder
//
//  Created by Tester on 4/19/15.
//  Copyright (c) 2015 harvard-pathfinder. All rights reserved.
//

import Foundation
import SpriteKit

class BoardScene: SKScene {
    let gameBoard = Board()
    
    override func didMoveToView(view: SKView) {
        
        func insertNode (bNode: BoardNode) -> () {
            // this inserts the array upside-down and flipped
            bNode.position = CGPointMake(CGFloat(bNode.pos.x * 100), CGFloat(bNode.pos.y * 100))
            bNode.anchorPoint = CGPointMake(0.0, 0.0)
            if let a = bNode.elements {
                bNode.addChild(a[0])
            }
            self.addChild(bNode)
        }
        gameBoard.iterBoardNodes(function: insertNode)
    }
    
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
    }
    
    override func update(currentTime: CFTimeInterval) {
    }

}