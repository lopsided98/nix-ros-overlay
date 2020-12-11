
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, rcl-action, rclcpp, rosidl-generator-c, rosidl-generator-cpp, test-msgs }:
buildRosPackage {
  pname = "ros-eloquent-rclcpp-action";
  version = "0.8.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rclcpp-release/archive/release/eloquent/rclcpp_action/0.8.5-1.tar.gz";
    name = "0.8.5-1.tar.gz";
    sha256 = "05ab5e2d438f14d2352e0c948348832fe23115486265ead396d5c398efb692d3";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common test-msgs ];
  propagatedBuildInputs = [ action-msgs ament-cmake rcl-action rclcpp rosidl-generator-c rosidl-generator-cpp ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Adds action APIs for C++.'';
    license = with lib.licenses; [ asl20 ];
  };
}
