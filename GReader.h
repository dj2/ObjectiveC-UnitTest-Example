@interface GReader : NSObject
- (void)authenticateWithUsername:(NSString *)username password:(NSString *)password;
- (NSString *)post:(NSString *)request;
@end
