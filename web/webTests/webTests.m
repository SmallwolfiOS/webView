//
//  webTests.m
//  webTests
//
//  Created by Jason on 2018/1/17.
//  Copyright © 2018年 Jason. All rights reserved.
//

#import <XCTest/XCTest.h>

@interface webTests : XCTestCase

@end

@implementation webTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
