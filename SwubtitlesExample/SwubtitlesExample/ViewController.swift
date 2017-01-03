//
//  ViewController.swift
//  SwubtitlesExample
//
//  Created by Niklas Berglund on 2016-12-30.
//  Copyright © 2016 Klurig. All rights reserved.
//

import UIKit
import Swubtitles

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let exampleSubtitlesUrl = Bundle.main.url(forResource: "Kung.Fu.Panda.3.2016.1080p-CHT", withExtension: "srt")
        let subtitles = Subtitles(fileUrl: exampleSubtitlesUrl!)
        
        for title in subtitles.titles! {
            print("Do something with title starting at \(title.start) ending at \(title.end):")
            print(title.texts!.description + "\n")
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

