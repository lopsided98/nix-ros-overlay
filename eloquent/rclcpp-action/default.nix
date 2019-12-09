
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosidl-generator-cpp, ament-cmake-ros, ament-lint-common, ament-cmake, ament-lint-auto, action-msgs, test-msgs, ament-cmake-gtest, rosidl-generator-c, rclcpp, rcl-action }:
buildRosPackage {
  pname = "ros-eloquent-rclcpp-action";
  version = "0.8.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rclcpp-release/archive/release/eloquent/rclcpp_action/0.8.3-1.tar.gz";
    name = "0.8.3-1.tar.gz";
    sha256 = "48c76f55e1ec0749d46bca475f5f7f9beb17d7c25dd6a1c1bb5f2054fa113b83";
  };

  buildType = "ament_cmake";
  buildInputs = [ rosidl-generator-cpp rcl-action ament-cmake rosidl-generator-c rclcpp action-msgs ];
  checkInputs = [ test-msgs ament-lint-common ament-cmake-gtest ament-lint-auto ];
  propagatedBuildInputs = [ rosidl-generator-cpp rcl-action ament-cmake rosidl-generator-c rclcpp action-msgs ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Adds action APIs for C++.'';
    license = with lib.licenses; [ asl20 ];
  };
}
