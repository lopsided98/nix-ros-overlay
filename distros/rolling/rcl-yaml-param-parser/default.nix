
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, libyaml, libyaml-vendor, mimick-vendor, osrf-testing-tools-cpp, performance-test-fixture, rcpputils, rcutils, rmw }:
buildRosPackage {
  pname = "ros-rolling-rcl-yaml-param-parser";
  version = "6.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rcl-release/archive/release/rolling/rcl_yaml_param_parser/6.3.0-1.tar.gz";
    name = "6.3.0-1.tar.gz";
    sha256 = "e4d12ca19dbb1f9eca1505ea8c84209aee1d7e9cc17b2f0178d2e51a43811ca4";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common mimick-vendor osrf-testing-tools-cpp performance-test-fixture rcpputils ];
  propagatedBuildInputs = [ libyaml libyaml-vendor rcutils rmw ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Parse a YAML parameter file and populate the C data structure.'';
    license = with lib.licenses; [ asl20 ];
  };
}
