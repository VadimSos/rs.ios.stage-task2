#import "IPFormatConverter.h"

@implementation IPFormatConverter

- (NSString *)ipFormatConverter:(NSArray *)numbersArray {
    
    if (numbersArray == nil || numbersArray.count == 0) {
        return @"";
    }
    
    NSMutableArray<NSString *> *ipComponents = [NSMutableArray arrayWithCapacity:4];
    
    for (NSInteger index = 0; index < 4; index++) {
        if (index < numbersArray.count) {
            NSInteger value = [numbersArray[index] integerValue];
            if (value < 0) {
                return @"Negative numbers are not valid for input.";
            } else if (value > 255) {
                return @"The numbers in the input array can be in the range from 0 to 255.";
            } else {
                [ipComponents addObject:[NSString stringWithFormat:@"%ld", (long)value]];
            }
        } else {
            [ipComponents addObject:@"0"];
        }
    }

    return [ipComponents componentsJoinedByString:@"."];
}

@end
