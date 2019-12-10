
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, libyaml, libyaml-vendor, rcl, rcutils }:
buildRosPackage {
  pname = "ros-dashing-rcl-yaml-param-parser";
  version = "0.7.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rcl-release/archive/release/dashing/rcl_yaml_param_parser/0.7.7-1.tar.gz";
    name = "0.7.7-1.tar.gz";
    sha256 = "772ed9b47fb3466c5e27c56516181333b36f979c7e7f716b56db199252ec58e3";
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
