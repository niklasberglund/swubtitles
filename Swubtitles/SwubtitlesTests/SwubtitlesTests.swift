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
    
    func testProperlyFormattedSubtitlesTitleOrder() {
        guard let subtitlesFileUrl = self.frameworkBundle.url(forResource: "10-subs", withExtension:"srt") else {
            fatalError("Error loading subtitles")
        }
        
        let subtitles = Subtitles(fileUrl: subtitlesFileUrl)
        
        XCTAssertNotNil(subtitles.titles)
        
        var lastEnd: TimeInterval = -99
        
        for title in subtitles.titles! {
            if lastEnd != -99 {
                XCTAssertGreaterThan(title.start!, lastEnd)
            }
            
            lastEnd = title.end!
        }
    }
    
    func testProperlyFormattedDoubleLineSubtitles() {
        guard let subtitlesFileUrl = self.frameworkBundle.url(forResource: "10-subs-some-double", withExtension:"srt") else {
            fatalError("Error loading subtitles")
        }
        
        let subtitles = Subtitles(fileUrl: subtitlesFileUrl)
        
        XCTAssertNotNil(subtitles.titles)
        XCTAssert(subtitles.titles!.count == 10)
        XCTAssertNotNil(subtitles.titles?[0].texts)
        XCTAssert(subtitles.titles?[0].texts?.count == 2)
        XCTAssert(subtitles.titles?[1].texts?.count == 1)
        XCTAssert(subtitles.titles?[2].texts?.count == 1)
        XCTAssert(subtitles.titles?[3].texts?.count == 2)
        XCTAssert(subtitles.titles?[4].texts?.count == 1)
        XCTAssert(subtitles.titles?[5].texts?.count == 1)
        XCTAssert(subtitles.titles?[6].texts?.count == 1)
        XCTAssert(subtitles.titles?[7].texts?.count == 2)
        XCTAssert(subtitles.titles?[8].texts?.count == 1)
        XCTAssert(subtitles.titles?[9].texts?.count == 2)
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
