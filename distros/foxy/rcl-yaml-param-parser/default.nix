
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, libyaml, libyaml-vendor, mimick-vendor, osrf-testing-tools-cpp, performance-test-fixture, rcpputils, rcutils }:
buildRosPackage {
  pname = "ros-foxy-rcl-yaml-param-parser";
  version = "1.1.14-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rcl-release/archive/release/foxy/rcl_yaml_param_parser/1.1.14-1.tar.gz";
    name = "1.1.14-1.tar.gz";
    sha256 = "6e3c7bf84c4c47de543669bd64b0d653af39f47f19ab2da9b48685d4d5179835";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros rcutils ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common mimick-vendor osrf-testing-tools-cpp performance-test-fixture rcpputils ];
  propagatedBuildInputs = [ libyaml libyaml-vendor ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Parse a YAML parameter file and populate the C data structure.'';
    license = with lib.licenses; [ asl20 ];
  };
}
