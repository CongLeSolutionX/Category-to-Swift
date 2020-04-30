


#import "PersonFromObjC.h"

@interface PersonFromObjC ()
// define private properties
// define private methods

@end



@implementation PersonFromObjC
// assigning the default value for class properties
- (PersonFromObjC *) init {
    self.firstName = @"Cong";
    self.lastName = @"Le";
 
    // or for read-only properties
    __occupation = @"iOS Developer";

    // This is so that the NSObject's init method can be
    // implemented and return a (PersonFromObjC *) instance
    return [super init];

    
}
// a custom accessor method for readonly property
- (NSString *) occupation {
    return [NSString stringWithFormat: @"%@", self.occupation];
}


- (void)personFromObjCSayHola {
    NSLog(@"Person from the Objective-C wanna say hola, yo!");
    
    NSString *message = @"I am a representation from the deep world ObjC";
    NSLog(@"%p", message); // return a pointer of message variable
    
}
- (void)displayMacroConstant {
    NSLog(@"%.2f", M_PI); //print a floating-point number up to 2 decimal places.
}

- (void)displayNSInteger {
    NSInteger number = 10;
    NSLog(@"%ld", (long)number); // print long integers
    // incorrect way to print a NSInteger with %d
    NSLog(@"%d", number);
}
- (void)displayNSNumber {
    NSLog(@"Print from NSNumber values:");
    NSNumber *integerTen = @10; // this is not an actual number 10, need more investigation!
    NSLog(@"%ld", (long)integerTen);
    NSNumber *booleanTrue = @YES;
    NSLog(@"%@", booleanTrue);
    NSNumber *doublePi = @M_PI;
    NSLog(@"%@", doublePi);
}

- (void)displayNSString {
    NSString *message = [NSString stringWithFormat:@"This is a hola from NSString"];
    NSLog(@"%@", message);
    NSInteger number = 100;
    NSString *complexMessage = [NSString stringWithFormat:@"I present number %ld from the deep world to you", (long)number];
    NSLog(@"%@", complexMessage);
    // another way to define a NSString using alloc/init
    NSString *allocMessage = [[NSString alloc] initWithFormat:@"My colleague alloc/init also gives you number %ld", (long)number];
    NSLog(@"%@", allocMessage);
    // Create a mutable copy of string
    NSMutableString *mutableMessage = [@"This message is only a mutable copy of a string" mutableCopy];
    NSLog(@"%@", mutableMessage);
    // tell the system create a NSString with 4096 characters
    NSMutableString *fixedCharString = [NSMutableString stringWithCapacity: 4096];
    [fixedCharString setString:@"This string can only contain 4096 characters."];
    NSLog(@"%@", fixedCharString);
    
}

- (void)displayNSArray {
    NSArray *monsters = @[@"Weeping Angels", @"Cybermen", @"Daleks", @"Vashta Nerada", @"Elves"];
    // loop through and print pout each element in NSArray
    for (NSString *monster in monsters) {
        NSLog(@"Can Cong Le defeat the %@? Of course he can!", monster);
    }
    // print out 3rd element via indexing the NSArray, starting from index 0
    NSLog(@"The %@ is my favorite monster.", monsters[2]);
    // older syntax to printout an element in NSArray
    NSLog(@"The %@ is the oldest monster in the list.", [monsters objectAtIndex:1] );
    // basic usage of NSArray
    NSLog(@"The total number of monster in the list is %ld",(long)[monsters count]);
    NSLog(@"Starting from 0, Elves are the monster number %ld.", (long)[monsters indexOfObject:@"Elves"]);
    NSLog(@"The fourth monster in the list is %@.", [monsters objectAtIndex: 3]);
    NSLog(@"Cong Le conquered these monsters: %@.", [monsters componentsJoinedByString:@", "]);
}


/* Block in ObjC
 • void: The block returns nothing.
 • (^printUniversalGreeting): Put the block into a variable called “printUniversalGreeting”. • (void): The block accepts no parameters.
 • = ^{ ... }: The contents of the block.
 */
void (^printUniversalGreeting)(void) = ^{ NSLog(@"This is a Block from ObjC, similarly to Closure in Swift");
};



- (void)definingPropertyValue {
 
    // define value for the properties firstName and lastName
    self.firstName = @"Cong";
    self.lastName = @"Le";
    // we cannot mutate the property occupation b/c it is readonly
}

@end


