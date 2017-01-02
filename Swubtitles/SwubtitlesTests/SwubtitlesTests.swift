//
//  SwubtitlesTests.swift
//  SwubtitlesTests
//
//  Created by Niklas Berglund on 2016-12-30.
//  Copyright © 2016 Klurig. All rights reserved.
//

import XCTest
@testable import Swubtitles

class SwubtitlesTests: XCTestCase {
    
    let frameworkBundle = Bundle(for: SwubtitlesTests.self)
    
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testProperlyFormattedSubtitles() {
        guard let subtitlesFileUrl = self.frameworkBundle.url(forResource: "10-subs", withExtension:"srt") else {
            fatalError("Error loading subtitles")
        }
        
        let subtitles = Subtitles(fileUrl: subtitlesFileUrl)
        
        XCTAssertNotNil(subtitles.titles)
        XCTAssert(subtitles.titles?.count == 10)
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
