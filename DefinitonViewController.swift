//
//  DefinitonViewController.swift
//  Emoji Dictionary
//
//  Created by Madiana Hedayet on 6/13/17.
//  Copyright © 2017 Madiana Hedayet. All rights reserved.
//

import UIKit

class DefinitonViewController: UIViewController {
    
    
    @IBOutlet weak var birthyear: UILabel!
    
    @IBOutlet weak var categories: UILabel!
    
    @IBOutlet weak var definitionLabel: UILabel!
    
    
    @IBOutlet weak var emojiLabel: UILabel!
    
    
    var emoji = Emoji()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        emojiLabel.text = emoji.stringEmoji
        birthyear.text = "Origination Date: \(emoji.birthYear)"
        categories.text = "Category : \(emoji.category)"
        definitionLabel.text = emoji.definition
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
