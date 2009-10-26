#import <SenTestingKit/SenTestingKit.h>
#import "GReader.h"

@interface GReaderTest : SenTest
{
    GReader *gr;
}
@end

@implementation GReaderTest
- (void)setUp
{
    gr = [[GReader alloc] init];
}

- (void)tearDown
{
    [gr release];
}
@end
