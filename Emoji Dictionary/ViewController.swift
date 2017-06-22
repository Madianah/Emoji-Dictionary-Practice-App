//
//  ViewController.swift
//  Emoji Dictionary
//
//  Created by Madiana Hedayet on 6/9/17.
//  Copyright © 2017 Madiana Hedayet. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableview: UITableView! //how many rows are there and what's in there
    
    
    var emojis : [Emoji] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tableview.dataSource = self
        tableview.delegate = self
        emojis = makeEmojiArry()
    }

    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }
    
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        print(indexPath.row)
        let cell = UITableViewCell()
        let emoji = emojis[indexPath.row]
        cell.textLabel?.text = emoji.stringEmoji
        return cell
    }
    
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let emoji = emojis[indexPath.row]
        performSegue(withIdentifier: "moveSegue", sender: emoji)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let defVC = segue.destination as! DefinitonViewController
        defVC.emoji = sender as! Emoji
    
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func makeEmojiArry() -> [Emoji] {  // asking the function to return either an [Int], [string], etc. ASking this function to return an array of emojis
        let emoji1 = Emoji()
        emoji1.stringEmoji = "😎"
        emoji1.birthYear = 2009
        emoji1.category = "Smiley"
        emoji1.definition = "A Super Cool Dude with Glasses"
        
        let emoji2 = Emoji()
        emoji2.stringEmoji = "😨"
        emoji2.birthYear = 2010
        emoji2.category = "Smiley"
        emoji2.definition = "A OMG I'M NOT FEELIN' THIS FACE"
        
        
        let emoji3 = Emoji()
        emoji3.stringEmoji = "💩"
        emoji3.birthYear = 2009
        emoji3.category = "Smiley"
        emoji3.definition = "The Smelly Poop Emoji"
        
        
        let emoji4 = Emoji()
        emoji4.stringEmoji = "😀"
        emoji4.birthYear = 2011
        emoji4.category = "Smiley"
        emoji4.definition = "The I'm super happy face with beady ass eyes"
        
        let emoji5 = Emoji()
        emoji5.stringEmoji = "👠"
        emoji5.birthYear = 2012
        emoji5.category = "Thing"
        emoji5.definition = "A Red heel. I would like to assume it's a Loubiton"
    
        let emoji6 = Emoji()
        emoji6.stringEmoji = "🐹"
        emoji6.birthYear = 2012
        emoji6.category = "Animal"
        emoji6.definition = "A Cute Little Hamster"
        
        return [emoji1, emoji2, emoji3, emoji4, emoji5, emoji6]
    }

}

