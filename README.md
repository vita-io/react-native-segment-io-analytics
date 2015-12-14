# RNSegmentIOAnalytics

Written by Tal Kain <tal@kain.net>

Based on SegmentIO (https://segment.com) Analytics project. 
The iOS SDK can be found here: https://github.com/segmentio/analytics-ios

## Installation
1. Get the project by cloning it from its GitHub repository into `node_modules/react-native/Libraries/RNSegmentIOAnalytics/` *OR* download the npm package (if exist) using npm install.
2. In your Podfile, add `pod "Analytics"` to your project.
3. Make sure your project links to *libAnalytics.a* and *libRNSegmentIOAnalytics.a* (The libraries should be listed under Build Phases -> Link Binary With Libraries".
4. Run `npm install --save react-native-segment-io-analytics`

## Usage sample
```javascript
var RNSegmentIOAnalytics = require('RNSegmentIOAnalytics');

var segmentIOWriteKey = "SEGMENT_IO_WRITE_KEY"
var flushEverySecondsCount = 1
RNSegmentIOAnalytics.setup(segmentIOWriteKey, flushEverySecondsCount);
RNSegmentIOAnalytics.identifyUser("testing", {"name":"test name"});
RNSegmentIOAnalytics.track("test track", {"name":"test track with name"});
RNSegmentIOAnalytics.screen("test screen", {"screenType":"SCREEN NAME"});
RNSegmentIOAnalytics.flush();
RNSegmentIOAnalytics.reset();
```

## Documentation
https://segment.com/docs/libraries/ios/#getting-started

## Handling possible issues
### Google SDK BitCode issue
```
ld: '......./Pods/GoogleIDFASupport/Libraries/libAdIdAccessLibrary.a(TAGActualAdIdAccess.o)' does not contain bitcode. You must rebuild it with bitcode enabled (Xcode setting ENABLE_BITCODE), obtain an updated library from the vendor, or disable bitcode for this target. for architecture arm64
```
There are instructions for fixing it here: https://stackoverflow.com/questions/31395260/google-analytics-libadidaccess-a-does-not-contain-bitcode

## License

This project is released under the [MIT License](http://www.opensource.org/licenses/MIT).

The copyright notice from Segment's project is in the *analytics-ios.LICENSE* file


