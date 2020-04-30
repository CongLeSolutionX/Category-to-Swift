


#import "PersonFromObjC.h"

@interface PersonFromObjC ()
// define private properties
// define private methods
@end

@implementation PersonFromObjC
// a custom accessor method for readonly property
- (NSString *) occupation {
    return [NSString stringWithFormat: @"%@", self.occupation];
}


- (void)personFromObjCSayHola {
    NSLog(@"Person from the Objective-C wanna say hola, yo!");
    
}

- (void)definingPropertyValue {
    // we can define instance without properties
    NSString *education = @"Bachelor Degree in Computer Science";
    
    // define value for the properties firstName and lastName
    self.firstName = @"Cong";
    self.lastName = @"Le";
    // we cannot mutate the property occupation b/c it is readonly
}

@end
