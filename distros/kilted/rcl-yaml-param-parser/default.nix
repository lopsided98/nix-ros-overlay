
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gen-version-h, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, libyaml, libyaml-vendor, mimick-vendor, osrf-testing-tools-cpp, performance-test-fixture, rcutils, rmw }:
buildRosPackage {
  pname = "ros-kilted-rcl-yaml-param-parser";
  version = "10.1.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rcl-release/archive/release/kilted/rcl_yaml_param_parser/10.1.0-2.tar.gz";
    name = "10.1.0-2.tar.gz";
    sha256 = "b67c8596483264c179670098b1a65f1dc0b84b4a578ed167f05e08a29c9df845";
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
