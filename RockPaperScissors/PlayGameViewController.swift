//
//  ViewController.swift
//  RockPaperScissors
//
//  Created by Damonique Thomas on 6/11/16.
//  Copyright © 2016 Damonique Thomas. All rights reserved.
//

import UIKit

class PlayGameViewController: UIViewController {

    var mychoice:String = ""
    var result:String = ""
    var resultsImage:UIImage!

    @IBAction func choiceButtonPressed(sender: AnyObject) {
        switch sender.tag {
        case 1: //rock
            switch mychoice{
            case "rock":
                result = "It's a tie!"
                resultsImage = UIImage(named: "tie")
            case "paper":
                result = "Paper beats Rock. You lose!"
                resultsImage = UIImage(named: "paperWins")
            default:
                result = "Rock beats Scissors. YOU WIN!"
                resultsImage = UIImage(named: "scissorsWins")
            }
        case 2: //paper
            switch mychoice{
            case "rock":
                result = "Paper beats Rock. YOU WIN!"
                resultsImage = UIImage(named: "rockWins")
            case "paper":
                result = "It's a tie!"
                resultsImage = UIImage(named: "tie")
            default:
                result = "Scissors beats Paper. You lose!"
                resultsImage = UIImage(named: "scissorsWins")
            }
        default: //scissors
            switch mychoice{
            case "rock":
                result = "Rock beats Scissors. You lose!"
                resultsImage = UIImage(named: "rockWins")
            case "paper":
                result = "Scissors beats Paper. YOU WIN!"
                resultsImage = UIImage(named: "paperWins")
            default:
                result = "It's a tie!"
                resultsImage = UIImage(named: "tie")
            }
        }
        performSegueWithIdentifier("play", sender: sender)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let rand = 1 + arc4random_uniform(3)
        switch rand {
        case 1:
            mychoice = "rock"
        case 2:
            mychoice = "paper"
        default:
            mychoice = "scissors"
        }
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "play" {
            let controller = segue.destinationViewController as! ResultsViewController
            controller.resultsImage = self.resultsImage
            controller.results = self.result
        }
    }
}
