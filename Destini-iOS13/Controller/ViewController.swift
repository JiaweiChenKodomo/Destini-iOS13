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
        
        storyLabel.text = "You see a fork in the road."
        choice1Button.setTitle("Take a left.", for: .normal)
        choice2Button.setTitle("Take a right.", for: .normal)

    }
    
    
    @IBAction func choiceMade(_ sender: UIButton) {
        let nextStory = storyBrain.nextStory(choice: sender.currentTitle!, level: 0)
        
        updateView(nextStory: nextStory)
    }
    
    func updateView(nextStory: Story) {
        
        storyLabel.text = nextStory.title
        choice1Button.setTitle(nextStory.choice1, for: .normal)
        choice2Button.setTitle(nextStory.choice2, for: .normal)
    }

}

