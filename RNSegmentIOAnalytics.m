#import "RNSegmentIOAnalytics.h"
#import "RCTConvert.h"
#import "Analytics.h"

@implementation RNSegmentIOAnalytics

RCT_EXPORT_MODULE()

RCT_EXPORT_METHOD(test)
{
  // Your implementation here
    NSLog(@"Called 'test' function");
}

RCT_EXPORT_METHOD(setup:(NSString*)configKey)
{
    NSLog(@"Setting up RNSegmentIOAnalytics using key=%@", configKey);
    [SEGAnalytics setupWithConfiguration:[SEGAnalyticsConfiguration configurationWithWriteKey:configKey]];
}

RCT_EXPORT_METHOD(identifyUser:(NSString*)userId traits:(NSDictionary *)traits) {
    /*
     According to React Native's documentation:
     
     For maps, it is the developer's responsibility to check the value types individually by manually calling RCTConvert helper methods.
     */
    NSLog(@"identifyUser: identifying user (id=%@)", userId);
    [[SEGAnalytics sharedAnalytics] identify:userId traits:[self convertToStringDictionary:traits]];
}

RCT_EXPORT_METHOD(track:(NSString*)trackText properties:(NSDictionary *)properties) {
    [[SEGAnalytics sharedAnalytics] track:trackText
                               properties:[self convertToStringDictionary:properties]];
}

-(NSMutableDictionary*) convertToStringDictionary: (NSDictionary *)properties {
    /*
     According to React Native's documentation:
     
     For maps, it is the developer's responsibility to check the value types individually by manually calling RCTConvert helper methods.
     */
    NSMutableDictionary *stringDictionary = [[NSMutableDictionary alloc] init];
    for (NSString* key in [properties allKeys]) {
        id value = [RCTConvert NSString:[properties objectForKey:key]];
        [stringDictionary setObject:value forKey:[RCTConvert NSString:key]];
    }
    return stringDictionary;
}

@end
