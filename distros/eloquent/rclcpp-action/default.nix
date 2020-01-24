
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, rcl-action, rclcpp, rosidl-generator-c, rosidl-generator-cpp, test-msgs }:
buildRosPackage {
  pname = "ros-eloquent-rclcpp-action";
  version = "0.8.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rclcpp-release/archive/release/eloquent/rclcpp_action/0.8.4-1.tar.gz";
    name = "0.8.4-1.tar.gz";
    sha256 = "3cfa4adde6aa9c3eff9c652de5ec3f2cbbdfed030b22f8df87b84e0302ac8d51";
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
