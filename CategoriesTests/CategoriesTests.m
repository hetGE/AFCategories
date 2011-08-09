//
//  CategoriesTests.m
//  CategoriesTests
//
//  Created by Alex Fish on 14/07/2011.
//  Copyright 2011 LDN Creative Ltd. All rights reserved.
//

#import "CategoriesTests.h"
#import "NSArray+Reverse.h"
#import "NSDictionary+HasKey.h"

@implementation CategoriesTests

- (void)setUp
{
    [super setUp];
    
    // Set-up code here.
}

- (void)tearDown
{
    // Tear-down code here.
    
    [super tearDown];
}

-(void)testArrayReverse 
{
    
    NSArray *testArray = [NSArray arrayWithObjects:@"1",@"2",@"3",@"4",@"5",@"6",@"7",@"8",@"9",@"10",nil];
    
    testArray = [testArray reverseArray];
    
    STAssertEqualObjects(@"10", [testArray objectAtIndex:0],@"Array did not reverse");
    
}

-(void)testDictionaryHasKey
{
 
    NSDictionary *dictionary = [NSDictionary dictionaryWithObjectsAndKeys:@"Test Object",@"Key1", nil];
    
    STAssertFalse([dictionary hasKey:@"Key2"], @"Dictionary has key failed to return correct result");
    STAssertTrue([dictionary hasKey:@"Key1"], @"Dictionary has key failed to return correct result");
    
}

@end
