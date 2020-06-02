//
//  DoublePrecision.m
//  NSDoublePrecisionIssue
//
//  Created by Dimitri Suter on 02/06/2020.
//  Copyright © 2020 Dimitri Suter. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface DoublePrecisio : NSObject
- (NSDecimalNumber *)parseDouble:(double)dbl;

@end


@implementation DoublePrecision : NSObject

- (NSDecimalNumber *)parseDouble:(double)dbl {
    int digits = 10;
    NSDecimalNumber *decimalNumber = (NSDecimalNumber*) [NSDecimalNumber numberWithDouble:dbl];
    NSDecimalNumberHandler *behavior = [NSDecimalNumberHandler decimalNumberHandlerWithRoundingMode:NSRoundPlain scale:digits raiseOnExactness:NO raiseOnOverflow:NO raiseOnUnderflow:NO raiseOnDivideByZero:NO];
    return [decimalNumber decimalNumberByRoundingAccordingToBehavior:behavior];
}


@end




