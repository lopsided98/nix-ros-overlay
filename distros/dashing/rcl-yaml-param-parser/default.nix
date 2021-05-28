
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, libyaml, libyaml-vendor, rcl, rcutils }:
buildRosPackage {
  pname = "ros-dashing-rcl-yaml-param-parser";
  version = "0.7.10-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rcl-release/archive/release/dashing/rcl_yaml_param_parser/0.7.10-1.tar.gz";
    name = "0.7.10-1.tar.gz";
    sha256 = "a866d2a96778ec90261f2d696b13cd8aa8d78c8fc198b0e7848a0cd264999eae";
  };

  buildType = "ament_cmake";
  buildInputs = [ rcl rcutils ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ libyaml libyaml-vendor ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Package containing various utility types and functions for C'';
    license = with lib.licenses; [ asl20 ];
  };
}
