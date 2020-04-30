//
//  Person.h
//  Category-to-Swift
//
//  Created by Cong Le on 4/29/20.
//  Copyright © 2020 CongLeSolutionX. All rights reserved.
//
#import <Foundation/Foundation.h>

// Defining macro constant
#define M_PI 3.14159265358979323846264338327950288

@interface PersonFromObjC: NSObject
// Public Properties
@property NSString *firstName;          // atomic by default

@property (atomic) NSString *lastName;  // explicitly stated atomic
@property (nonatomic, strong) NSString *message;

// immutable property by setter via using keyword readonly
@property (readonly) NSString *_occupation;



// Implicitly override NSObject's init
  - (PersonFromObjC *) init;


// Public Methods
- (void)personFromObjCSayHola;
- (void)displayMacroConstant;
- (void)displayNSInteger;
- (void)displayNSNumber;
- (void)displayNSString;
- (void)displayNSArray;

- (void)definingPropertyValue;

@end







