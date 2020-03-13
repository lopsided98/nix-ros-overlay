
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, rcl-action, rclcpp, rosidl-generator-c, rosidl-generator-cpp, test-msgs }:
buildRosPackage {
  pname = "ros-dashing-rclcpp-action";
  version = "0.7.13-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rclcpp-release/archive/release/dashing/rclcpp_action/0.7.13-1.tar.gz";
    name = "0.7.13-1.tar.gz";
    sha256 = "5ab26070f9a706bf9721ea272daba10d5282d689394b19f733d3c44fde4ba026";
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
