
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, libyaml, libyaml-vendor, osrf-testing-tools-cpp, rcutils }:
buildRosPackage {
  pname = "ros-foxy-rcl-yaml-param-parser";
  version = "1.1.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rcl-release/archive/release/foxy/rcl_yaml_param_parser/1.1.8-1.tar.gz";
    name = "1.1.8-1.tar.gz";
    sha256 = "04b3374dd306a4ec26c498fcd1b4bdfe93ff91448869906d8a0717eb9c4e424e";
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
