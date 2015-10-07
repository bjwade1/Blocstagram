//
//  BLCMediaTableViewCellTest.m
//  Blocstagram
//
//  Created by Brandon Wade on 10/6/15.
//  Copyright © 2015 Brandon Wade. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "BLCMedia.h"
#import "BLCMediaTableViewCell.h"

@interface BLCMediaTableViewCellTest : XCTestCase

@end

@implementation BLCMediaTableViewCellTest

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    NSDictionary *sourceDictionary = @{@"id": @"8675309",
                                       @"username" : @"d'oh",
                                       @"full_name" : @"Homer Simpson",
                                       @"profile_picture" : @"http://www.example.com/example.jpg"};
    
    BLCMedia *testMedia = [[BLCMedia alloc] initWithDictionary:sourceDictionary];
    
    CGFloat cellHeight = [BLCMediaTableViewCell heightForMediaItem:testMedia width:[UIScreen mainScreen].bounds.size.width];
    XCTAssertNotEqual(cellHeight, testMedia.image.size.height, @"the height should not be equal");
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
