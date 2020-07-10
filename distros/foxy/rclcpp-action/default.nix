
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, rcl-action, rclcpp, rosidl-runtime-c, test-msgs }:
buildRosPackage {
  pname = "ros-foxy-rclcpp-action";
  version = "2.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rclcpp-release/archive/release/foxy/rclcpp_action/2.0.2-1.tar.gz";
    name = "2.0.2-1.tar.gz";
    sha256 = "4e0a1467f31fb98d72866923066238271fe5f4ca3c877d8d9d791028adcb2f2d";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common test-msgs ];
  propagatedBuildInputs = [ action-msgs ament-cmake rcl-action rclcpp rosidl-runtime-c ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Adds action APIs for C++.'';
    license = with lib.licenses; [ asl20 ];
  };
}
