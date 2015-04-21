//
//  Enemy.swift
//  pathfinder
//
//  Created by Robert Shaw on 4/20/15.
//  Copyright (c) 2015 harvard-pathfinder. All rights reserved.
//

import Foundation
import SpriteKit

class Enemy: Player {
    // instance variables
    override var damage: Int {
        return 50
    }
    override var invSpeed: Int {
        return 1
    }
    
    init() {
        super.init(nameOfTexture: "enemy")
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // Element Methods
    // overrides NextDirection... will eventually be the accelerometer
    override func nextDirection() -> Direction? {
        return nil
    }
}