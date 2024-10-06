#import "Pairs.h"

@implementation Pairs

- (NSInteger)countPairs:(NSArray <NSNumber *> *)array number:(NSNumber *)number {
    
    int count = 0;
    int diff = number.intValue;
    
    for (NSInteger index = 0; index < array.count; index++) {
        NSNumber *currentValue = array[index];
        
        for (NSInteger i = index + 1; i < array.count; i++) {
            NSNumber *nextValue = array[i];
            if (fabs([nextValue floatValue] - [currentValue floatValue]) == diff) {
                count++;
            }
        }
    }
    
    return count;
}

@end



