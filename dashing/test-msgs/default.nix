
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, test-interface-files, rosidl-default-runtime, ament-lint-common, ament-cmake, ament-lint-auto, ament-cmake-gtest, rosidl-default-generators, builtin-interfaces, action-msgs }:
buildRosPackage {
  pname = "ros-dashing-test-msgs";
  version = "0.7.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rcl_interfaces-release/archive/release/dashing/test_msgs/0.7.4-1.tar.gz";
    name = "0.7.4-1.tar.gz";
    sha256 = "477aae95ca731fa0203f2c6d4fc9362528108d5156d81ea1ea3c0d9e6ca54932";
  };

  buildType = "ament_cmake";
  buildInputs = [ test-interface-files builtin-interfaces action-msgs ];
  checkInputs = [ ament-lint-common ament-cmake-gtest ament-lint-auto ];
  propagatedBuildInputs = [ rosidl-default-runtime builtin-interfaces action-msgs ];
  nativeBuildInputs = [ rosidl-default-generators ament-cmake ];

  meta = {
    description = ''A package containing message definitions and fixtures used exclusively for testing purposes.'';
    license = with lib.licenses; [ asl20 ];
  };
}
