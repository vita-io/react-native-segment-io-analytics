/**
 * @providesModule RNSegmentIOAnalytics
 * @flow
 */
'use strict';

var NativeRNSegmentIOAnalytics = require('react-native').NativeModules.RNSegmentIOAnalytics;

/**
 * High-level docs for the RNSegmentIOAnalytics iOS API can be written here.
 */

var RNSegmentIOAnalytics = {
    /*
    Setting up the Segment IO Analytics service
     */
    setup: function (configKey, flushAt = 20) {
        NativeRNSegmentIOAnalytics.setup(configKey, flushAt);
    },

    /*
     https://segment.com/docs/libraries/ios/#identify
     */
    identifyUser: function (userId, traits) {
        NativeRNSegmentIOAnalytics.identifyUser(userId, traits);
    },

    /*
     https://segment.com/docs/libraries/ios/#track
     */
    track: function (trackText, properties) {
        NativeRNSegmentIOAnalytics.track(trackText, properties);
    },

    /*
     https://segment.com/docs/libraries/ios/#screen
     */
    screen: function (screenName, properties) {
        NativeRNSegmentIOAnalytics.screen(screenName, properties);
    },

    /*
     https://segment.com/docs/libraries/ios/#reset
     */
    reset: function () {
        NativeRNSegmentIOAnalytics.reset();
    },

    /*
     https://segment.com/docs/libraries/ios/#flushing
     */
    flush: function () {
        NativeRNSegmentIOAnalytics.flush();
    },
};

module.exports = RNSegmentIOAnalytics;
