//
//  NSObject+Hello.m
//  Category-to-Swift
//
//  Created by Cong Le on 4/29/20.
//  Copyright © 2020 CongLeSolutionX. All rights reserved.
//

#import "Person+Hello.h"

#import <UIKit/UIKit.h>


@implementation NSObject (Hello)
NSString *messageFromCategory = @"Hello from Category!";

- (void)sayHelloFromCategory {
//    UILabel *helloFromCategory = [[UILabel alloc]initWithFrame:CGRectMake(10, 70, 50, 50)];
//    mycoollabel.text=@"Whats up player! Im from category";
//
     NSLog(@"Hello from Category in Objective-C!");
}
@end
