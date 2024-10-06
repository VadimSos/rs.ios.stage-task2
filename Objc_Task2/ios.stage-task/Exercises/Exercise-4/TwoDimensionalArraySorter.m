#import "TwoDimensionalArraySorter.h"

@implementation TwoDimensionalArraySorter

- (NSArray *)twoDimensionalSort:(NSArray<NSArray *> *)array {
    if (![array.firstObject isKindOfClass:[NSArray class]]) {
        return @[];
    }
    
    NSMutableArray *numbers = [NSMutableArray array];
    NSMutableArray *strings = [NSMutableArray array];
    
    for (NSArray *subArray in array) {
        for (id element in subArray) {
            if ([element isKindOfClass:[NSNumber class]]) {
                [numbers addObject:element];
            } else if ([element isKindOfClass:[NSString class]]) {
                [strings addObject:element];
            }
        }
    }
    
    // Check if we only have numbers
    if (numbers.count > 0 && strings.count == 0) {
        [numbers sortUsingSelector:@selector(compare:)];
        return [numbers copy];
    }
    
    // Check if we only have strings
    if (strings.count > 0 && numbers.count == 0) {
        [strings sortUsingSelector:@selector(compare:)];
        return [strings copy];
    }
    
    // If we have both numbers and strings
    if (numbers.count > 0 && strings.count > 0) {
        [numbers sortUsingSelector:@selector(compare:)];
        NSSortDescriptor *sortDesc = [NSSortDescriptor sortDescriptorWithKey:@"self" ascending:NO]; // Descending order
        [strings sortUsingDescriptors:@[sortDesc]];
        return @[ [numbers copy], [strings copy] ];
    }
    
    return @[];
}

@end
