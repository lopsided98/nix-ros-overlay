
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, libyaml, libyaml-vendor, rcl, rcutils }:
buildRosPackage {
  pname = "ros-dashing-rcl-yaml-param-parser";
  version = "0.7.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rcl-release/archive/release/dashing/rcl_yaml_param_parser/0.7.8-1.tar.gz";
    name = "0.7.8-1.tar.gz";
    sha256 = "0c190303a560004d69964b50ef4725ee4168a12925524257e0ad8ebc48817125";
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
