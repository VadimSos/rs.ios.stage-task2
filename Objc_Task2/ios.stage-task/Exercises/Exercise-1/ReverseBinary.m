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
    }
    return reversedNumber;
}
