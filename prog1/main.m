#import <Foundation/Foundation.h>

@interface Fraction : NSObject
{
    int numerator;
    int denominator;
}

-(void) print;
-(void) setNumerator: (int) n;
-(void) setDenominator: (int) d;
@end

@implementation Fraction

-(void) print
{
    NSLog(@"%i/%i", numerator, denominator);
}

-(void) setNumerator: (int) n
{
    numerator = n;
}

-(void) setDenominator: (int) d
{
    denominator = d;
}

@end


int main(int argc, const char * argv[])
{
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
    
    Fraction *myFraction;
    
    myFraction = [Fraction alloc];
    myFraction = [myFraction init];
    
    [myFraction setNumerator: 1];
    [myFraction setDenominator: 3];
    
    NSLog(@"The value of myFraction is:");
    [myFraction print];
    [myFraction release];
    
    [pool drain];
    return 0;
}

