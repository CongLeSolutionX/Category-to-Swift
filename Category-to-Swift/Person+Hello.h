//
//  NSObject+Hello.h
//  Category-to-Swift
//
//  Created by Cong Le on 4/29/20.
//  Copyright © 2020 CongLeSolutionX. All rights reserved.
//

//#import <AppKit/AppKit.h>

#import "PersonFromObjC.h"

@interface PersonFromObjC (Hello)
@property (nonatomic) NSString *messageFromCategory;
- (void)sayHelloFromCategory;
@end

