#import <Specta.h>
#import <Expecta.h>
#import "ElementFormatter.h" 

SpecBegin(ElementFormatter)

describe(@"ElementFormatter", ^{
    __block ElementFormatter *formatter;
    
    beforeAll(^{
        formatter = [[ElementFormatter alloc] init];
    });
    
    context(@"when formatting an element dictionary", ^{
        context(@"when the dictionary is nil", ^{
            it(@"returns nil", ^{
                expect([formatter formattedElementString:nil]).to.beNil();
            });
        });
        
        context(@"when the dictionary is missing the name key", ^{
            it(@"returns nil", ^{
                expect([formatter formattedElementString:@{ @"symbol": @"E", @"atomic_number": @"42" }]).to.beNil();
            });
        });

    });
});
SpecEnd