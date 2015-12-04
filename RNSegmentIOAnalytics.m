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

RCT_EXPORT_METHOD(setup: (NSString*)configKey)
{
    NSLog(@"Setting up RNSegmentIOAnalytics using key=%@", configKey);
    [SEGAnalytics setupWithConfiguration:[SEGAnalyticsConfiguration configurationWithWriteKey:configKey]];
}

RCT_EXPORT_METHOD(identifyUser: (NSString*)userId traits:(NSDictionary *)traits) {
    /*
     According to React Native's documentation:
     
     For maps, it is the developer's responsibility to check the value types individually by manually calling RCTConvert helper methods.
     */
    NSLog(@"identifyUser: identifying user (id=%@)", userId);
    NSDictionary* stringsTraits = [NSDictionary new];
    if (traits != nil) {
        for (NSString* key in [traits allKeys]) {
            [stringsTraits setValue:traits[key] forKey:key];
        }
    }

    [[SEGAnalytics sharedAnalytics] identify:userId traits:stringsTraits];
}

RCT_EXPORT_METHOD(track: (NSString*)trackText properties:(NSDictionary *)properties) {
    /*
     According to React Native's documentation:
     
     For maps, it is the developer's responsibility to check the value types individually by manually calling RCTConvert helper methods.
     */
    NSDictionary* stringsProperties = [NSDictionary new];
    if (properties != nil) {
        for (NSString* key in [properties allKeys]) {
            [stringsProperties setValue:properties[key] forKey:key];
        }
    }
    [[SEGAnalytics sharedAnalytics] track:trackText
                               properties:stringsProperties];
}

@end
