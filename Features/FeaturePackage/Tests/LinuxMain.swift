import XCTest

import FeaturePackageTests

var tests = [XCTestCaseEntry]()
tests += FeaturePackageTests.allTests()
XCTMain(tests)
