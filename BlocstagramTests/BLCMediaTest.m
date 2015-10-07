//
//  BLCMediaTest.m
//  Blocstagram
//
//  Created by Brandon Wade on 10/6/15.
//  Copyright © 2015 Brandon Wade. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "BLCMedia.h"

@interface BLCMediaTest : XCTestCase

@end

@implementation BLCMediaTest

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testThatInitializationWorks {
    NSDictionary *sourceDictionary = @{@"id": @"8675309",
                                       @"mediaURL" : @"http://www.example.com/example.html"};
    BLCMedia *testMedia = [[BLCMedia alloc] initWithDictionary:sourceDictionary];
    testMedia.mediaURL = [NSURL URLWithString:sourceDictionary[@"mediaURL"]];
    
    XCTAssertEqualObjects(testMedia.idNumber, sourceDictionary[@"id"], @"The ID number should be equal");
    XCTAssertEqualObjects(testMedia.mediaURL, [NSURL URLWithString:sourceDictionary[@"mediaURL"]], @"The mediaURL should be equal");
}
- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
