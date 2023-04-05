//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    var storyBrain = StoryBrain()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateView(nextStory: storyBrain.stories[storyBrain.currentLevel])

    }
    
    
    @IBAction func choiceMade(_ sender: UIButton) {
        
        let nextStory = storyBrain.nextStory(choice: sender.currentTitle!)
        
        updateView(nextStory: nextStory)
    }
    
    func updateView(nextStory: Story) {
        
        storyLabel.text = nextStory.title
        choice1Button.setTitle(nextStory.choice1, for: .normal)
        choice2Button.setTitle(nextStory.choice2, for: .normal)
    }

}

