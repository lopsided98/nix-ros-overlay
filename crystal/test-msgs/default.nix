
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, builtin-interfaces, ament-cmake, ament-lint-common, rosidl-default-generators, ament-cmake-gtest, action-msgs, ament-lint-auto, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-crystal-test-msgs";
  version = "0.6.3";

  src = fetchurl {
    url = https://github.com/ros2-gbp/rcl_interfaces-release/archive/release/crystal/test_msgs/0.6.3-0.tar.gz;
    sha256 = "74f8874674cec9d9f6b53a41aa24ab578358a710dec1b0b96ac9090abac0cccb";
  };

  buildType = "ament_cmake";
  buildInputs = [ builtin-interfaces action-msgs ];
  checkInputs = [ ament-lint-auto ament-cmake-gtest ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces action-msgs rosidl-default-runtime ];
  nativeBuildInputs = [ rosidl-default-generators ament-cmake ];

  meta = {
    description = ''A package containing message definitions and fixtures used exclusively for testing purposes.'';
    license = with lib.licenses; [ asl20 ];
  };
}
