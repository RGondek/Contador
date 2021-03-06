//
//  ContaPessoasTests.m
//  ContaPessoasTests
//
//  Created by Vinicius Miana on 2/18/15.
//  Copyright (c) 2015 Vinicius Miana. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "Contador.h"

@interface ContaPessoasTests : XCTestCase

@end

@implementation ContaPessoasTests


- (void)testContaMeninos {
    Contador *c = [[Contador alloc] init];
    [c addMulher:NO];
    XCTAssert(([c getBoys] == 1), @"Pass");
    XCTAssert(([c getGirls] == 0), @"Pass");
}

- (void)testContaTotal {
    Contador *c = [[Contador alloc] init];
    [c addMulher:NO];
    [c addMulher:YES];
    XCTAssert(([c getBoys] == 1), @"Pass");
    XCTAssert(([c getGirls] == 1), @"Pass");
    XCTAssert(([c getTotal] == 2), @"Pass");
}

- (void)testContaMeninas {
    Contador *c = [[Contador alloc] init];
    [c addMulher:YES];
    XCTAssert(([c getGirls] == 1), @"Pass");
    XCTAssert(([c getBoys] == 0), @"Pass");
}


@end
