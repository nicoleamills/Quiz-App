//
//  ViewController.swift
//  quizapp5
//
//  Created by Nicole Mills on 2/16/23.
//


import UIKit

class ViewController: UIViewController {

    var level : Int = 1
    var first = FirstQuestion()
    var second = SecondQuestion()
    var third = ThirdQuestion()
    var fourth = FourthQuestion()
    
    @IBOutlet weak var display: UILabel!
    @IBOutlet weak var button2Text: UIButton!
    @IBOutlet weak var button1Text: UIButton!
    
    @IBAction func button1(_ sender: UIButton) {
        if(level == 1) {
            display.text = second.GoOhio()
            button1Text.setTitle("You Lose", for: .normal)
            button2Text.setTitle("Game Over", for: .normal)
            level += 99
        }
        else if (level == 2){
            display.text = third.Negril()
            button1Text.setTitle("Take A Shot And Jump", for: .normal)
            button2Text.setTitle("Be Scared And Don't Do It", for: .normal)
            level += 1
        }
        else if (level == 3){
            display.text = fourth.Jump()
            button1Text.setTitle("You Win", for: .normal)
            button2Text.setTitle("Game Over", for: .normal)
            level += 99
        }
    }
    
    @IBAction func button2(_ sender: UIButton) {
        if(level == 1) {
            display.text = second.GoJamaica()
            button1Text.setTitle("Negril", for: .normal)
            button2Text.setTitle("Flankers", for: .normal)
            level += 1
        }
        else if (level == 2){
            display.text = third.Flankers()
            button1Text.setTitle("You Lose", for: .normal)
            button2Text.setTitle("Game Over", for: .normal)
            level += 99
        }
        else if (level == 3){
            display.text = fourth.Scared()
            button1Text.setTitle("You Lose", for: .normal)
            button2Text.setTitle("Game Over", for: .normal)
            level += 99
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        display.text = first.Start()
        button1Text.setTitle("Ohio", for: .normal)
        button2Text.setTitle("Jamaica", for: .normal)
        
        }
    }

    class FirstQuestion{
        func Start() -> String{
            return "You just won the lottery! Where do you travel to first?"
        }
    }

    class SecondQuestion {
        func GoOhio() -> String{
            return "There's nothing in Ohio."
        }
        func GoJamaica() -> String{
            return "You just got off the plane in Montego Bay. Which city do you visit?"
        }
    }

    class ThirdQuestion {
        func Flankers() -> String{
            return "That's not safe for tourists!"
        }
        func Negril() -> String{
            return "You end up at Rick's Cafe. Do you jump off the cliff?"
        }
    }

    class FourthQuestion {
        func Jump() -> String{
            return "You have the time of your life and get free drinks all night for your bravery."
        }
        func Scared() -> String{
            return "The locals think you're boring and force you to leave the island."
        }
    }
