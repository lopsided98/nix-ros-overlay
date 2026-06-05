
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gen-version-h, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, libyaml, libyaml-vendor, mimick-vendor, osrf-testing-tools-cpp, performance-test-fixture, rcutils, rmw }:
buildRosPackage {
  pname = "ros-jazzy-rcl-yaml-param-parser";
  version = "9.2.10-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rcl-release/archive/release/jazzy/rcl_yaml_param_parser/9.2.10-1.tar.gz";
    name = "9.2.10-1.tar.gz";
    sha256 = "949922938dc9653f138448d1a249a2e1457bcc3ce81831947c4e2d27bb5c1b39";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-gen-version-h ament-cmake-ros ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common mimick-vendor osrf-testing-tools-cpp performance-test-fixture ];
  propagatedBuildInputs = [ libyaml libyaml-vendor rcutils rmw ];
  nativeBuildInputs = [ ament-cmake-gen-version-h ament-cmake-ros ];

  meta = {
    description = "Parse a YAML parameter file and populate the C data structure.";
    license = with lib.licenses; [ asl20 ];
  };
}
