/**
 * @providesModule RNSegmentIOAnalytics
 * @flow
 */
'use strict';

var NativeRNSegmentIOAnalytics = require('NativeModules').RNSegmentIOAnalytics;

/**
 * High-level docs for the RNSegmentIOAnalytics iOS API can be written here.
 */

var RNSegmentIOAnalytics = {
  test: function() {
    NativeRNSegmentIOAnalytics.test();
  },

  setup: function(configKey) {
    NativeRNSegmentIOAnalytics.setup(configKey);
  },

  identifyUser: function(userId, traits) {
    NativeRNSegmentIOAnalytics.identifyUser(userId, traits);
  },

  track: function(trackText, properties) {
    NativeRNSegmentIOAnalytics.track(trackText, properties);
  },
};

module.exports = RNSegmentIOAnalytics;
