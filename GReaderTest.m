#import <SenTestingKit/SenTestingKit.h>
#import <OCMock/OCMock.h>
#import "GReader.h"

@interface GReaderTest : SenTestCase
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

- (void)testAuthentication
{
    id mock = [OCMockObject partialMockForObject:gr];
    [[[mock stub] andCall:@selector(fakeAuthenticationPost:)
                 onObject:self] post:[OCMArg any]];
    
    [gr authenticateWithUsername:@"dan" password:@"password"];
}

- (NSString *)fakeAuthenticationPost:(NSString *)request
{
    NSArray *d = [request componentsSeparatedByString:@"&"];
    
    STAssertTrue([d containsObject:@"Email=dan"], @"Username not set correclty into request");
    STAssertTrue([d containsObject:@"Passwd=password"], @"Password not set correctly in request");
    
    return @"SID=mysid\nLSID=mylsid\nAuth=myauth";
}

@end
