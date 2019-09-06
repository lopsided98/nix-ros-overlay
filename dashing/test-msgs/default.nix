
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, builtin-interfaces, ament-cmake, ament-lint-common, rosidl-default-generators, ament-cmake-gtest, action-msgs, ament-lint-auto, rosidl-default-runtime, test-interface-files }:
buildRosPackage rec {
  pname = "ros-dashing-test-msgs";
  version = "0.7.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rcl_interfaces-release/archive/release/dashing/test_msgs/0.7.4-1.tar.gz";
    name = "0.7.4-1.tar.gz";
    sha256 = "477aae95ca731fa0203f2c6d4fc9362528108d5156d81ea1ea3c0d9e6ca54932";
  };

  buildType = "ament_cmake";
  buildInputs = [ builtin-interfaces action-msgs test-interface-files ];
  checkInputs = [ ament-lint-auto ament-cmake-gtest ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces action-msgs rosidl-default-runtime ];
  nativeBuildInputs = [ rosidl-default-generators ament-cmake ];

  meta = {
    description = ''A package containing message definitions and fixtures used exclusively for testing purposes.'';
    license = with lib.licenses; [ asl20 ];
  };
}
