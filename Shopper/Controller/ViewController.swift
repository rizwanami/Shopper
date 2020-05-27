//
//  ViewController.swift
//  Shopper
//
//  Created by Rizwana on 5/26/20.
//  Copyright © 2020 makeurway.com. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }

    override func viewDidAppear(_ animated: Bool) {
        let storyboard = UIStoryboard(name: Storyboard.loginStory, bundle: nil)
        let controller = storyboard.instantiateViewController(identifier: StoryboardId.loginVC)
        present(controller, animated: true, completion: nil)
    }
}

