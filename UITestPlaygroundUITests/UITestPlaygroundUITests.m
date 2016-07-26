//
//  UITestPlaygroundUITests.m
//  UITestPlaygroundUITests
//
//  Created by Konrad Hemzaczek on 26/07/2016.
//  Copyright © 2016 kh. All rights reserved.
//

#import <XCTest/XCTest.h>

@interface UITestPlaygroundUITests : XCTestCase

@end

@implementation UITestPlaygroundUITests

- (void)setUp {
    [super setUp];
    //change
    // Put setup code here. This method is called before the invocation of each test method in the class.
    
    // In UI tests it is usually best to stop immediately when a failure occurs.
    self.continueAfterFailure = NO;
    // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
    [[[XCUIApplication alloc] init] launch];
    
    // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    // Use recording to get started writing UI tests.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
    
    XCUIApplication *app = [[XCUIApplication alloc] init];
    
    XCUIElementQuery *clickableElementsQuery = [app.otherElements containingType:XCUIElementTypeButton identifier:@"Clickable"];
    [[clickableElementsQuery childrenMatchingType:XCUIElementTypeTextField].element tap];
    [[clickableElementsQuery childrenMatchingType:XCUIElementTypeTextField].element typeText:(@"Fantastico")];
    [app.buttons[@"Clickable"] tap];
    
    XCUIElement *helloStaticText = app.staticTexts[@"Fantastico"];
    XCTAssert([helloStaticText.label isEqualToString:@"Fantastico"]);
    
    

    
    
}

@end
