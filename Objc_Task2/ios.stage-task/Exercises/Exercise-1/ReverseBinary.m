#import "ReverseBinary.h"

UInt8 ReverseInteger(UInt8 n) {
    UInt8 reversedNumber = 0;
    for (int i = 0; i < 8; i++) { // make bits reversed
        UInt8 bit = (n >> i) & 1; // Shift and mask to get the specific bit
        
        // Calculate the position for the reversed bit
        UInt8 reversedBitPosition = 7 - i;
        UInt8 shiftedBit = bit << reversedBitPosition; // Shift the bit to the reversed position
        
        // Combine the shifted bit into the reversed number
        reversedNumber |= shiftedBit; // Place it in the reversed position
        
        // Log the operations
        NSLog(@"Iteration %d:", i);
        NSLog(@"Original number (n): %u (Binary: %@)", n, [NSString stringWithFormat:@"%08d", (n)]);
        NSLog(@"Extracted bit: %u", bit);
        NSLog(@"Shifted bit to position %d: %u (Binary: %@)", reversedBitPosition, shiftedBit, [NSString stringWithFormat:@"%08d", (shiftedBit)]);
        NSLog(@"Reversed number so far: %u (Binary: %@)", reversedNumber, [NSString stringWithFormat:@"%08d", (reversedNumber)]);
        NSLog(@"-----------------------------------");
    }
    return reversedNumber;
}
