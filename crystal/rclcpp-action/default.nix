
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosidl-generator-cpp, ament-cmake-ros, ament-lint-common, ament-cmake, ament-lint-auto, action-msgs, test-msgs, ament-cmake-gtest, rosidl-generator-c, rclcpp, rcl-action }:
buildRosPackage {
  pname = "ros-crystal-rclcpp-action";
  version = "0.6.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rclcpp-release/archive/release/crystal/rclcpp_action/0.6.5-1.tar.gz";
    name = "0.6.5-1.tar.gz";
    sha256 = "85f1d7179b0ada818b4209b7281593ad8f9d7047d0266c80ccbb7aefc6861269";
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
