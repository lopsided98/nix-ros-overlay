
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, libyaml, libyaml-vendor, rcl, rcutils }:
buildRosPackage {
  pname = "ros-dashing-rcl-yaml-param-parser";
  version = "0.7.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rcl-release/archive/release/dashing/rcl_yaml_param_parser/0.7.9-1.tar.gz";
    name = "0.7.9-1.tar.gz";
    sha256 = "8ce1cda3c699c6c40cd0a794b3a38792f35ad0cf75a0fbf89b5433a18cd12854";
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
