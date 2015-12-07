# RNSegmentIOAnalytics

Written by Tal Kain <tal@kain.net>

## Installation
1. Get the project by cloning it from its GitHub repository into `node_modules/react-native/Libraries/RNSegmentIOAnalytics/` *OR* download the npm package (if exist) using npm install.
2. In your Podfile, add `pod "Analytics"` to your project.
3. Make sure your project links to *libAnalytics.a* and *libRNSegmentIOAnalytics.a* (The libraries should be listed under Build Phases -> Link Binary With Libraries".

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





