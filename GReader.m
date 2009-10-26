#import "GReader.h"

@implementation GReader

- (void)authenticateWithUsername:(NSString *)username password:(NSString *)password
{
    [self post:[NSString stringWithFormat:@"Email=%@&Passwd=%@", username, password]];
}

- (NSString *)post:(NSString *)request
{
    return @"My post data";
}

@end
