//
//  Title.swift
//  Swubtitles
//
//  Created by Niklas Berglund on 2016-12-30.
//  Copyright © 2016 Klurig. All rights reserved.
//

import UIKit

public class Title: NSObject {
    public var texts: [String]?
    public var start: TimeInterval?
    public var end: TimeInterval?
    public var index: Int?
    
    
    public init(withTexts: [String], start: TimeInterval, end: TimeInterval, index: Int) {
        super.init()
        
        self.texts = withTexts
        self.start = start
        self.end = end
        self.index = index
    }
}
