//
//  Title.swift
//  Swubtitles
//
//  Created by Niklas Berglund on 2016-12-30.
//  Copyright © 2016 Klurig. All rights reserved.
//

import UIKit

class Title: NSObject {
    var texts: [String]?
    var start: TimeInterval?
    var end: TimeInterval?
    var index: Int?
    
    
    public init(withTexts: [String], start: TimeInterval, end: TimeInterval, index: Int) {
        super.init()
        
        self.texts = withTexts
        self.start = start
        self.end = end
        self.index = index
    }
}
