//
//  DefinitonViewController.swift
//  Emoji Dictionary
//
//  Created by Madiana Hedayet on 6/13/17.
//  Copyright © 2017 Madiana Hedayet. All rights reserved.
//

import UIKit

class DefinitonViewController: UIViewController {
    
    
    @IBOutlet weak var definitionLabel: UILabel!
    
    
    @IBOutlet weak var emojiLabel: UILabel!
    
    
    var emoji = "NO EMOJI"

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        emojiLabel.text = emoji
        
        if emoji == "🐹" {
        definitionLabel.text = "A Cute Hamster"}
    
        if emoji == "😎" {
        definitionLabel.text = "A Super Cool Dude with Glasses"}
        
        if emoji == "💩" {
        definitionLabel.text = "A Piece of Poop.In my house denotes a poopy pup"}
        
        if emoji == "👠" {
        definitionLabel.text = "A Red heel. I would like to assume it's a Loubiton"}
        
        if emoji == "😨" {
        definitionLabel.text = "A OMG I'M NOT FEELIN' THIS FACE"}
        
        if emoji == "😀" {
        definitionLabel.text = "The I'm super happy face with beady ass eyes"}
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
