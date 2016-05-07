//
//  ViewController.swift
//  Tic-tac-toe
//
//  Created by Aaron Pankratz on 1/18/16.
//  Copyright © 2016 Aaron Pankratz. All rights reserved.
//

import UIKit

class GameViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        NSNotificationCenter.defaultCenter()
            .addObserver(self, selector: #selector(foundWinner), name: "GameEngineFoundWinner", object: nil)
        NSNotificationCenter.defaultCenter()
            .addObserver(self, selector: #selector(computerMarkComplete), name: "GameEngineComputerMarkComplete", object: nil)
        NSNotificationCenter.defaultCenter()
            .addObserver(self, selector: #selector(startOver), name: "GameEngineStartOverComplete", object: nil)
        NSNotificationCenter.defaultCenter()
            .addObserver(self, selector: #selector(foundTie), name: "GameEngineFoundTie", object: nil)
    }
    
    private var gameEngine = GameEngine()
    
    @IBAction func pickCell(sender: AnyObject) {
        let button = sender as! UIButton
        button.setTitle("X", forState: .Normal)
        button.enabled = false
        gameEngine.pickCell(sender.tag!)
    }
    
    func computerMarkComplete(note: NSNotification) {
        if let userInfo = note.userInfo {
            let mark = userInfo["ComputerMark"] as! Mark
            if let button = self.view.viewWithTag(mark.cellId) as? UIButton {
                button.setTitle(mark.playerSymbol, forState: .Normal)
                button.enabled = false
            }
        }
    }
    
    func foundWinner(note: NSNotification) {
        if let userInfo = note.userInfo {
            let mark = userInfo["WinnerMark"] as! Mark

            let alert = UIAlertController(title: "Winner",
                                      message: "\(mark.playerSymbol) wins!",
                                      preferredStyle: UIAlertControllerStyle.Alert)
            alert.addAction(UIAlertAction(title: "Start Over", style: .Default, handler: { action in
                self.gameEngine.startOver()
            }))
            self.presentViewController(alert, animated: true, completion: nil)
        }
    }
    
    func foundTie(note: NSNotificationCenter) {
        let alert = UIAlertController(title: "Tie",
                                      message: "It's a tie!",
                                      preferredStyle: UIAlertControllerStyle.Alert)
        alert.addAction(UIAlertAction(title: "Start Over", style: .Default, handler: { action in
            self.gameEngine.startOver()
        }))
        self.presentViewController(alert, animated: true, completion: nil)

    }
    
    func startOver(note: NSNotification) {
        for i in 1...9 {
            if let button = self.view.viewWithTag(i) as? UIButton {
                button.setTitle("", forState: .Normal)
                button.enabled = true
            }
        }
    }
}

