
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, libyaml, libyaml-vendor, osrf-testing-tools-cpp, rcutils }:
buildRosPackage {
  pname = "ros-foxy-rcl-yaml-param-parser";
  version = "1.1.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rcl-release/archive/release/foxy/rcl_yaml_param_parser/1.1.7-1.tar.gz";
    name = "1.1.7-1.tar.gz";
    sha256 = "eb9155382807d357baa1712ffe4243e291159e4fde78432a9660adbb3d6c4be0";
  };

  buildType = "ament_cmake";
  buildInputs = [ rcutils ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common osrf-testing-tools-cpp ];
  propagatedBuildInputs = [ libyaml libyaml-vendor ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Parse a YAML parameter file and populate the C data structure.'';
    license = with lib.licenses; [ asl20 ];
  };
}
