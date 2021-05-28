
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, libyaml, libyaml-vendor, mimick-vendor, osrf-testing-tools-cpp, performance-test-fixture, rcpputils, rcutils, rmw }:
buildRosPackage {
  pname = "ros-galactic-rcl-yaml-param-parser";
  version = "3.1.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rcl-release/archive/release/galactic/rcl_yaml_param_parser/3.1.2-1.tar.gz";
    name = "3.1.2-1.tar.gz";
    sha256 = "978c8c57a22ec88e019204846a52cc8674b8a9d4f7645c85f729a0b48103982d";
  };

  buildType = "ament_cmake";
  buildInputs = [ rcutils ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common mimick-vendor osrf-testing-tools-cpp performance-test-fixture rcpputils ];
  propagatedBuildInputs = [ libyaml libyaml-vendor rmw ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Parse a YAML parameter file and populate the C data structure.'';
    license = with lib.licenses; [ asl20 ];
  };
}
