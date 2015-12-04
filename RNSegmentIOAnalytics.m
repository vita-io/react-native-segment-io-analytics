#import "RNSegmentIOAnalytics.h"

#import "Analytics.h"

@implementation RNSegmentIOAnalytics

RCT_EXPORT_MODULE()

RCT_EXPORT_METHOD(test)
{
  // Your implementation here
    NSLog(@"Called 'test' function");
}

RCT_EXPORT_METHOD(setup: (NSString*)configKey)
{
    //[SEGAnalytics setupWithConfiguration:[SEGAnalyticsConfiguration configurationWithWriteKey:@"YOUR_WRITE_KEY"]];
    [SEGAnalytics setupWithConfiguration:[SEGAnalyticsConfiguration configurationWithWriteKey:configKey]];
}

RCT_EXPORT_METHOD(identifyUser: (NSString*)userId withName:(NSString*)name withEmail:(NSString*)email) {
    [[SEGAnalytics sharedAnalytics] identify:userId traits:@{ @"name": name, @"email": email }];
}

@end
