//
//  TTTButton.swift
//  Tic-tac-toe
//
//  Created by Aaron Pankratz on 5/14/16.
//  Copyright © 2016 Aaron Pankratz. All rights reserved.
//

import UIKit

class TTTButton: UIButton {
    
    var mark: Mark?
    
    override func drawRect(rect: CGRect) {
        if let m = mark {
            switch m.playerSymbol {
            case "X":
                drawX()
            case "O":
                drawO()
            default: break
            }
        }
    }
    
    private func drawX() {
        UIColor.blueColor().setStroke()
        let pathTopLeftToBottomRight = UIBezierPath()
        pathTopLeftToBottomRight.moveToPoint(CGPoint(x: bounds.minX, y: bounds.minY))
        pathTopLeftToBottomRight.addLineToPoint(CGPoint(x: bounds.maxX, y: bounds.maxY))
        pathTopLeftToBottomRight.lineWidth = 25.0
        pathTopLeftToBottomRight.stroke()
        
        let pathTopRightToBottomLeft = UIBezierPath()
        pathTopRightToBottomLeft.moveToPoint(CGPoint(x: bounds.maxX, y: bounds.minY))
        pathTopRightToBottomLeft.addLineToPoint(CGPoint(x: bounds.minX, y: bounds.maxY))
        pathTopRightToBottomLeft.lineWidth = 25.0
        pathTopRightToBottomLeft.stroke()
    }
    
    private func drawO() {
        UIColor.redColor().setStroke()
        let center = CGPoint(x: bounds.midX, y: bounds.midY)
        let radius = min(bounds.width, bounds.height) / 2
        let path = UIBezierPath(
            arcCenter: center,
            radius: radius,
            startAngle: 0.0,
            endAngle: CGFloat(2*M_PI),
            clockwise: true
        )
        path.lineWidth = 25.0
        path.stroke()
    }
}
