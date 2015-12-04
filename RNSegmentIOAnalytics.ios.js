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
  }
};

module.exports = RNSegmentIOAnalytics;
