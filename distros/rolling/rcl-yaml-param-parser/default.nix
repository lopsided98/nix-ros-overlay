
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gen-version-h, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, libyaml, libyaml-vendor, mimick-vendor, osrf-testing-tools-cpp, performance-test-fixture, rcutils, rmw }:
buildRosPackage {
  pname = "ros-rolling-rcl-yaml-param-parser";
  version = "10.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rcl-release/archive/release/rolling/rcl_yaml_param_parser/10.3.0-1.tar.gz";
    name = "10.3.0-1.tar.gz";
    sha256 = "590db72b37899de264dd5cf84033a1068a487573c17105ce737919cf588a7f25";
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
