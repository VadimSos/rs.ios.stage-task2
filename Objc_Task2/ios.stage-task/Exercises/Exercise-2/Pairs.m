#import "Pairs.h"

@implementation Pairs

- (NSInteger)countPairs:(NSArray <NSNumber *> *)array number:(NSNumber *)number {
    
//    int count = 0;
//    int diff = number.intValue;
//    
//    for (NSInteger index = 0; index < array.count; index++) {
//        NSNumber *currentValue = array[index];
//        
//        for (NSInteger i = index + 1; i < array.count; i++) {
//            NSNumber *nextValue = array[i];
//            if (fabs([nextValue floatValue] - [currentValue floatValue]) == diff) {
//                count++;
//            }
//        }
//    }
//    
//    return count;
    
    
    // optimised solution (looks containsObject and set more better than for in loop)
    // NSMutableSet or NSCountedSet??
    NSMutableSet<NSNumber *> *seenNumbers = [NSMutableSet set];
    NSInteger count = 0;
    int diff = number.intValue;

    for (NSNumber *currentValue in array) {
        if ([seenNumbers containsObject:@(currentValue.intValue - diff)]) {
            count++;
        }
        // for current tests no need
//        if ([seenNumbers containsObject:@(currentValue.intValue + diff)]) {
//            count++;
//        }
        
        // Add the current value to the set
        [seenNumbers addObject:currentValue];
    }

    return count;
}

@end
