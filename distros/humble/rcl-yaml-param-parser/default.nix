
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, libyaml, libyaml-vendor, mimick-vendor, osrf-testing-tools-cpp, performance-test-fixture, rcpputils, rcutils, rmw }:
buildRosPackage {
  pname = "ros-humble-rcl-yaml-param-parser";
  version = "5.3.4-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rcl-release/archive/release/humble/rcl_yaml_param_parser/5.3.4-3.tar.gz";
    name = "5.3.4-3.tar.gz";
    sha256 = "31d0e6710df41a1093dba1043003a59f547862be9670510b9185ec07340e2f80";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros rcutils ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common mimick-vendor osrf-testing-tools-cpp performance-test-fixture rcpputils ];
  propagatedBuildInputs = [ libyaml libyaml-vendor rmw ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Parse a YAML parameter file and populate the C data structure.'';
    license = with lib.licenses; [ asl20 ];
  };
}
