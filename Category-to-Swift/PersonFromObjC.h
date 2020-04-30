//
//  Person.h
//  Category-to-Swift
//
//  Created by Cong Le on 4/29/20.
//  Copyright © 2020 CongLeSolutionX. All rights reserved.
//
#import <Foundation/Foundation.h>


@interface PersonFromObjC: NSObject
// Public Properties
@property NSString *firstName;          // atomic by default

@property (atomic) NSString *lastName;  // explicitly stated atomic
@property (nonatomic, strong) NSString *message;

// immutable property by setter via using keyword readonly
@property (readonly) NSString *occupation;

// Public Methods

- (void)personFromObjCSayHola;
- (void)definingPropertyValue;

@end







